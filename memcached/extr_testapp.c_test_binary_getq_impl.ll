; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_getq_impl.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_getq_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.TYPE_8__, [1020 x i8] }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"test_binary_getq_missing\00", align 1
@PROTOCOL_BINARY_CMD_GATQ = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_GATKQ = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_ADD = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_SUCCESS = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @test_binary_getq_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binary_getq_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %union.anon, align 4
  %7 = alloca %union.anon, align 4
  %8 = alloca %union.anon, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %13 = call i32 @htonl(i32 3600)
  store i32 %13, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PROTOCOL_BINARY_CMD_GATQ, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PROTOCOL_BINARY_CMD_GATKQ, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %2
  store i64 4, i64* %10, align 8
  br label %22

22:                                               ; preds = %21, %17
  %23 = bitcast %union.anon* %6 to [1024 x i8]*
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %25 = load i32, i32* @PROTOCOL_BINARY_CMD_ADD, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i64 @storage_command(i8* %24, i32 1024, i32 %25, i8* %26, i32 %28, i32* null, i32 0, i32 0, i32 0)
  store i64 %29, i64* %11, align 8
  %30 = bitcast %union.anon* %7 to [1024 x i8]*
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %32 = load i32, i32* %4, align 4
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %37

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %35
  %38 = phi i32* [ %9, %35 ], [ null, %36 ]
  %39 = load i64, i64* %10, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call i64 @ext_command(i8* %31, i32 1024, i32 %32, i32* %38, i64 %39, i8* %40, i32 %42, i32* null, i32 0)
  store i64 %43, i64* %12, align 8
  %44 = bitcast %union.anon* %7 to %struct.TYPE_8__*
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 -17958194, i32* %48, align 4
  %49 = bitcast %union.anon* %6 to [1024 x i8]*
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %49, i64 0, i64 0
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = bitcast %union.anon* %7 to [1024 x i8]*
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %53, i64 0, i64 0
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @memcpy(i8* %52, i8* %54, i64 %55)
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %11, align 8
  %60 = bitcast %union.anon* %7 to [1024 x i8]*
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %60, i64 0, i64 0
  %62 = load i32, i32* %4, align 4
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %37
  br label %67

66:                                               ; preds = %37
  br label %67

67:                                               ; preds = %66, %65
  %68 = phi i32* [ %9, %65 ], [ null, %66 ]
  %69 = load i64, i64* %10, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = call i64 @ext_command(i8* %61, i32 1024, i32 %62, i32* %68, i64 %69, i8* %70, i32 %72, i32* null, i32 0)
  store i64 %73, i64* %12, align 8
  %74 = bitcast %union.anon* %6 to [1024 x i8]*
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %74, i64 0, i64 0
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = bitcast %union.anon* %7 to [1024 x i8]*
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %78, i64 0, i64 0
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @memcpy(i8* %77, i8* %79, i64 %80)
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %11, align 8
  %85 = bitcast %union.anon* %6 to [1024 x i8]*
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %85, i64 0, i64 0
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @safe_send(i8* %86, i64 %87, i32 0)
  %89 = bitcast %union.anon* %8 to [1024 x i8]*
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %89, i64 0, i64 0
  %91 = call i32 @safe_recv_packet(i8* %90, i32 1024)
  %92 = bitcast %union.anon* %8 to i32*
  %93 = load i32, i32* @PROTOCOL_BINARY_CMD_ADD, align 4
  %94 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %95 = call i32 @validate_response_header(i32* %92, i32 %93, i32 %94)
  %96 = bitcast %union.anon* %8 to [1024 x i8]*
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %96, i64 0, i64 0
  %98 = call i32 @safe_recv_packet(i8* %97, i32 1024)
  %99 = bitcast %union.anon* %8 to i32*
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %102 = call i32 @validate_response_header(i32* %99, i32 %100, i32 %101)
  %103 = load i32, i32* @TEST_PASS, align 4
  ret i32 %103
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @storage_command(i8*, i32, i32, i8*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ext_command(i8*, i32, i32, i32*, i64, i8*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @safe_send(i8*, i64, i32) #1

declare dso_local i32 @safe_recv_packet(i8*, i32) #1

declare dso_local i32 @validate_response_header(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
