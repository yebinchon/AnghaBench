; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_auth_server_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_auth_server_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64 }
%struct.http_message = type { i32 }
%struct.mg_str = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Sec-WebSocket-Protocol\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"myproto\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @test_auth_server_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_auth_server_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_message*, align 8
  %8 = alloca %struct.mg_str*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.http_message*
  store %struct.http_message* %13, %struct.http_message** %7, align 8
  %14 = bitcast [256 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 256, i1 false)
  %15 = bitcast [256 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 256, i1 false)
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %63 [
    i32 128, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %3, %3
  %18 = load %struct.http_message*, %struct.http_message** %7, align 8
  %19 = call %struct.mg_str* @mg_get_http_header(%struct.http_message* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.mg_str* %19, %struct.mg_str** %8, align 8
  %20 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %21 = icmp ne %struct.mg_str* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %24 = call i32 @mg_vcmp(%struct.mg_str* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %28 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32 2, i32* %30, align 4
  br label %63

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %17
  %33 = load %struct.http_message*, %struct.http_message** %7, align 8
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %36 = call i32 @mg_get_http_basic_auth(%struct.http_message* %33, i8* %34, i32 256, i8* %35, i32 256)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %41 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  store i32 -1, i32* %43, align 4
  br label %63

44:                                               ; preds = %32
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %54 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  store i32 1, i32* %56, align 4
  br label %62

57:                                               ; preds = %48, %44
  %58 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %59 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  store i32 -2, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %3, %62, %39, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mg_str* @mg_get_http_header(%struct.http_message*, i8*) #2

declare dso_local i32 @mg_vcmp(%struct.mg_str*, i8*) #2

declare dso_local i32 @mg_get_http_basic_auth(%struct.http_message*, i8*, i32, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
