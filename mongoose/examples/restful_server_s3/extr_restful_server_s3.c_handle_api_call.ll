; ModuleID = '/home/carl/AnghaBench/mongoose/examples/restful_server_s3/extr_restful_server_s3.c_handle_api_call.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/restful_server_s3/extr_restful_server_s3.c_handle_api_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"file_name\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"file_data\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"bucket\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"HTTP/1.1 200 OK\0D\0ATransfer-Encoding: chunked\0D\0A\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"bad input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, %struct.http_message*)* @handle_api_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_api_call(%struct.mg_connection* %0, %struct.http_message* %1) #0 {
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca %struct.http_message*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = alloca [100 x i8], align 16
  %7 = alloca [100 x i8], align 16
  %8 = alloca [100 x i8], align 16
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store %struct.http_message* %1, %struct.http_message** %4, align 8
  %9 = load %struct.http_message*, %struct.http_message** %4, align 8
  %10 = getelementptr inbounds %struct.http_message, %struct.http_message* %9, i32 0, i32 0
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %12 = call i32 @mg_get_http_var(i32* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %11, i32 100)
  %13 = load %struct.http_message*, %struct.http_message** %4, align 8
  %14 = getelementptr inbounds %struct.http_message, %struct.http_message* %13, i32 0, i32 0
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %16 = call i32 @mg_get_http_var(i32* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 100)
  %17 = load %struct.http_message*, %struct.http_message** %4, align 8
  %18 = getelementptr inbounds %struct.http_message, %struct.http_message* %17, i32 0, i32 0
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %20 = call i32 @mg_get_http_var(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %19, i32 100)
  %21 = load %struct.http_message*, %struct.http_message** %4, align 8
  %22 = getelementptr inbounds %struct.http_message, %struct.http_message* %21, i32 0, i32 0
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %24 = call i32 @mg_get_http_var(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %23, i32 100)
  %25 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %26 = call i32 @mg_printf(%struct.mg_connection* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %28 = load i8, i8* %27, align 16
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %2
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %33 = load i8, i8* %32, align 16
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %31, %2
  %42 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %43 = call i32 @send_error_result(%struct.mg_connection* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %51

44:                                               ; preds = %36
  %45 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %49 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %50 = call i32 @send_s3_request(%struct.mg_connection* %45, i8* %46, i8* %47, i8* %48, i8* %49)
  br label %51

51:                                               ; preds = %44, %41
  ret void
}

declare dso_local i32 @mg_get_http_var(i32*, i8*, i8*, i32) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*) #1

declare dso_local i32 @send_error_result(%struct.mg_connection*, i8*) #1

declare dso_local i32 @send_s3_request(%struct.mg_connection*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
