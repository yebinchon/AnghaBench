; ModuleID = '/home/carl/AnghaBench/mongoose/examples/connected_device_3/extr_server.c_handle_get_cpu_usage.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/connected_device_3/extr_server.c_handle_get_cpu_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }

@RAND_MAX = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"HTTP/1.1 200 OK\0D\0ATransfer-Encoding: chunked\0D\0A\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"{ \22result\22: %d }\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*)* @handle_get_cpu_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_get_cpu_usage(%struct.mg_connection* %0) #0 {
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %2, align 8
  %4 = call i64 (...) @rand()
  %5 = sitofp i64 %4 to double
  %6 = load double, double* @RAND_MAX, align 8
  %7 = fdiv double %5, %6
  %8 = fmul double %7, 1.000000e+02
  %9 = fptosi double %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %11 = call i32 @mg_printf(%struct.mg_connection* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @mg_printf_http_chunk(%struct.mg_connection* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %16 = call i32 @mg_send_http_chunk(%struct.mg_connection* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 0)
  ret void
}

declare dso_local i64 @rand(...) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*) #1

declare dso_local i32 @mg_printf_http_chunk(%struct.mg_connection*, i8*, i32) #1

declare dso_local i32 @mg_send_http_chunk(%struct.mg_connection*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
