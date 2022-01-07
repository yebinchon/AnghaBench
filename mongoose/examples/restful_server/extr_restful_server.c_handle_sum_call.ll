; ModuleID = '/home/carl/AnghaBench/mongoose/examples/restful_server/extr_restful_server.c_handle_sum_call.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/restful_server/extr_restful_server.c_handle_sum_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"n1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"n2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"HTTP/1.1 200 OK\0D\0ATransfer-Encoding: chunked\0D\0A\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"{ \22result\22: %lf }\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, %struct.http_message*)* @handle_sum_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_sum_call(%struct.mg_connection* %0, %struct.http_message* %1) #0 {
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca %struct.http_message*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = alloca [100 x i8], align 16
  %7 = alloca double, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store %struct.http_message* %1, %struct.http_message** %4, align 8
  %8 = load %struct.http_message*, %struct.http_message** %4, align 8
  %9 = getelementptr inbounds %struct.http_message, %struct.http_message* %8, i32 0, i32 0
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %11 = call i32 @mg_get_http_var(i32* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10, i32 100)
  %12 = load %struct.http_message*, %struct.http_message** %4, align 8
  %13 = getelementptr inbounds %struct.http_message, %struct.http_message* %12, i32 0, i32 0
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %15 = call i32 @mg_get_http_var(i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %14, i32 100)
  %16 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %17 = call i32 @mg_printf(%struct.mg_connection* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %19 = call double @strtod(i8* %18, i32* null)
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %21 = call double @strtod(i8* %20, i32* null)
  %22 = fadd double %19, %21
  store double %22, double* %7, align 8
  %23 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %24 = load double, double* %7, align 8
  %25 = call i32 @mg_printf_http_chunk(%struct.mg_connection* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), double %24)
  %26 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %27 = call i32 @mg_send_http_chunk(%struct.mg_connection* %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 0)
  ret void
}

declare dso_local i32 @mg_get_http_var(i32*, i8*, i8*, i32) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*) #1

declare dso_local double @strtod(i8*, i32*) #1

declare dso_local i32 @mg_printf_http_chunk(%struct.mg_connection*, i8*, double) #1

declare dso_local i32 @mg_send_http_chunk(%struct.mg_connection*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
