; ModuleID = '/home/carl/AnghaBench/mongoose/examples/coap_server/extr_coap_server.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/coap_server/extr_coap_server.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@SIGTERM = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@s_default_address = common dso_local global i8* null, align 8
@coap_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to start listener at %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Listening for CoAP messages at %s\0A\00", align 1
@s_sig_received = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Exiting on signal %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_mgr, align 4
  %3 = alloca %struct.mg_connection*, align 8
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @SIGTERM, align 4
  %5 = load i32, i32* @signal_handler, align 4
  %6 = call i32 @signal(i32 %4, i32 %5)
  %7 = load i32, i32* @SIGINT, align 4
  %8 = load i32, i32* @signal_handler, align 4
  %9 = call i32 @signal(i32 %7, i32 %8)
  %10 = call i32 @mg_mgr_init(%struct.mg_mgr* %2, i32 0)
  %11 = load i8*, i8** @s_default_address, align 8
  %12 = load i32, i32* @coap_handler, align 4
  %13 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %2, i8* %11, i32 %12)
  store %struct.mg_connection* %13, %struct.mg_connection** %3, align 8
  %14 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %15 = icmp eq %struct.mg_connection* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i8*, i8** @s_default_address, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 -1, i32* %1, align 4
  br label %34

19:                                               ; preds = %0
  %20 = load i8*, i8** @s_default_address, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %23 = call i32 @mg_set_protocol_coap(%struct.mg_connection* %22)
  br label %24

24:                                               ; preds = %28, %19
  %25 = load i32, i32* @s_sig_received, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @mg_mgr_poll(%struct.mg_mgr* %2, i32 1000000)
  br label %24

30:                                               ; preds = %24
  %31 = load i32, i32* @s_sig_received, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = call i32 @mg_mgr_free(%struct.mg_mgr* %2)
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %30, %16
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mg_set_protocol_coap(%struct.mg_connection*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
