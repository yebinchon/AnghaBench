; ModuleID = '/home/carl/AnghaBench/mongoose/examples/nRF51/http/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/nRF51/http/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_bind_opts = type { i8** }
%struct.mg_connection = type { i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"80\00", align 1
@ev_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to create listener: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_mgr, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mg_bind_opts, align 8
  %5 = alloca %struct.mg_connection*, align 8
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 @cs_log_set_file(i32 %6)
  %8 = call i32 (...) @bleconfig_init()
  %9 = call i32 @mg_mgr_init(%struct.mg_mgr* %2, i32* null)
  store %struct.mg_connection* null, %struct.mg_connection** %5, align 8
  %10 = call i32 @memset(%struct.mg_bind_opts* %4, i32 0, i32 8)
  %11 = getelementptr inbounds %struct.mg_bind_opts, %struct.mg_bind_opts* %4, i32 0, i32 0
  store i8** %3, i8*** %11, align 8
  %12 = load i32, i32* @ev_handler, align 4
  %13 = getelementptr inbounds %struct.mg_bind_opts, %struct.mg_bind_opts* %4, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = call %struct.mg_connection* @mg_bind_opt(%struct.mg_mgr* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12, i8** %14)
  store %struct.mg_connection* %15, %struct.mg_connection** %5, align 8
  %16 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %17 = icmp eq %struct.mg_connection* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  ret i32 1

21:                                               ; preds = %0
  %22 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %23 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %22)
  br label %24

24:                                               ; preds = %24, %21
  %25 = call i32 (...) @bleconfig_poll()
  %26 = call i32 @mg_mgr_poll(%struct.mg_mgr* %2, i32 0)
  br label %24
}

declare dso_local i32 @cs_log_set_file(i32) #1

declare dso_local i32 @bleconfig_init(...) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @memset(%struct.mg_bind_opts*, i32, i32) #1

declare dso_local %struct.mg_connection* @mg_bind_opt(%struct.mg_mgr*, i8*, i32, i8**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i32 @bleconfig_poll(...) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
