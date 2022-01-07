; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_vfetch_http.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_vfetch_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i8* }
%struct.mg_http_endpoint_opts = type { i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"127.0.0.1:%d\00", align 1
@s_listening_port = common dso_local global i32 0, align 4
@cb1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"foo.com\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/secret\00", align 1
@secret_endpoint_cb = common dso_local global i32 0, align 4
@cb8 = common dso_local global i32 0, align 4
@c_str_ne = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32)* @vfetch_http to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfetch_http(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mg_mgr, align 4
  %10 = alloca %struct.mg_connection*, align 8
  %11 = alloca %struct.mg_http_endpoint_opts, align 8
  %12 = alloca [50 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = call i32 @mg_mgr_init(%struct.mg_mgr* %9, i32* null)
  %14 = getelementptr inbounds [50 x i8], [50 x i8]* %12, i64 0, i64 0
  %15 = load i32, i32* @s_listening_port, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @s_listening_port, align 4
  %17 = call i32 @snprintf(i8* %14, i32 50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %18 = getelementptr inbounds [50 x i8], [50 x i8]* %12, i64 0, i64 0
  %19 = load i32, i32* @cb1, align 4
  %20 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %9, i8* %18, i32 %19)
  store %struct.mg_connection* %20, %struct.mg_connection** %10, align 8
  %21 = load %struct.mg_connection*, %struct.mg_connection** %10, align 8
  %22 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %21)
  %23 = call i32 @memset(%struct.mg_http_endpoint_opts* %11, i32 0, i32 16)
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds %struct.mg_http_endpoint_opts, %struct.mg_http_endpoint_opts* %11, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.mg_http_endpoint_opts, %struct.mg_http_endpoint_opts* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.mg_connection*, %struct.mg_connection** %10, align 8
  %28 = load i32, i32* @secret_endpoint_cb, align 4
  %29 = bitcast %struct.mg_http_endpoint_opts* %11 to { i8*, i8* }*
  %30 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %29, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @mg_register_http_endpoint_opt(%struct.mg_connection* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %28, i8* %31, i8* %33)
  %35 = getelementptr inbounds [50 x i8], [50 x i8]* %12, i64 0, i64 0
  %36 = load i32, i32* @cb8, align 4
  %37 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %9, i8* %35, i32 %36)
  store %struct.mg_connection* %37, %struct.mg_connection** %10, align 8
  %38 = load %struct.mg_connection*, %struct.mg_connection** %10, align 8
  %39 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %38)
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.mg_connection*, %struct.mg_connection** %10, align 8
  %42 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.mg_connection*, %struct.mg_connection** %10, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @mg_vprintf(%struct.mg_connection* %43, i8* %44, i32 %45)
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 0, i8* %48, align 1
  %49 = load i32, i32* @c_str_ne, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @poll_until(%struct.mg_mgr* %9, i32 5, i32 %49, i8* %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %52 = call i32 @mg_mgr_free(%struct.mg_mgr* %9)
  ret void
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i32 @memset(%struct.mg_http_endpoint_opts*, i32, i32) #1

declare dso_local i32 @mg_register_http_endpoint_opt(%struct.mg_connection*, i8*, i32, i8*, i8*) #1

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @mg_vprintf(%struct.mg_connection*, i8*, i32) #1

declare dso_local i32 @poll_until(%struct.mg_mgr*, i32, i32, i8*, i8*) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
