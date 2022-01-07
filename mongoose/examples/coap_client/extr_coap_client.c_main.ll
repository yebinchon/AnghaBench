; ModuleID = '/home/carl/AnghaBench/mongoose/examples/coap_client/extr_coap_client.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/coap_client/extr_coap_client.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@s_default_address = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Using %s as CoAP server\0A\00", align 1
@coap_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to connect to %s\0A\00", align 1
@s_time_to_exit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mg_mgr, align 4
  %7 = alloca %struct.mg_connection*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8*, i8** @s_default_address, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i32 @mg_mgr_init(%struct.mg_mgr* %6, i32 0)
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* @coap_handler, align 4
  %22 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %6, i8* %20, i32 %21)
  store %struct.mg_connection* %22, %struct.mg_connection** %7, align 8
  %23 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %24 = icmp eq %struct.mg_connection* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i32 -1, i32* %3, align 4
  br label %39

28:                                               ; preds = %16
  %29 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %30 = call i32 @mg_set_protocol_coap(%struct.mg_connection* %29)
  br label %31

31:                                               ; preds = %35, %28
  %32 = load i32, i32* @s_time_to_exit, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @mg_mgr_poll(%struct.mg_mgr* %6, i32 1000000)
  br label %31

37:                                               ; preds = %31
  %38 = call i32 @mg_mgr_free(%struct.mg_mgr* %6)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32) #1

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @mg_set_protocol_coap(%struct.mg_connection*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
