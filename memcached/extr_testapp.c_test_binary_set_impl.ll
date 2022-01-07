; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_set_impl.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_set_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.TYPE_17__, [1016 x i8] }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@PROTOCOL_BINARY_CMD_SET = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_SUCCESS = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_SETQ = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @test_binary_set_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binary_set_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.anon, align 8
  %7 = alloca %union.anon, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -559035650, i32* %8, align 4
  %11 = bitcast %union.anon* %6 to [1024 x i8]*
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = call i64 @storage_command(i8* %12, i32 1024, i32 %13, i8* %14, i32 %16, i32* %8, i32 4, i32 0, i32 0)
  store i64 %17, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %38, %2
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = bitcast %union.anon* %6 to [1024 x i8]*
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @safe_send(i8* %23, i64 %24, i32 0)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PROTOCOL_BINARY_CMD_SET, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = bitcast %union.anon* %7 to [1024 x i8]*
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %32 = call i32 @safe_recv_packet(i8* %31, i32 1024)
  %33 = bitcast %union.anon* %7 to %struct.TYPE_16__*
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %36 = call i32 @validate_response_header(%struct.TYPE_16__* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %21
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @PROTOCOL_BINARY_CMD_SETQ, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (...) @test_binary_noop()
  store i32 %46, i32* %3, align 4
  br label %93

47:                                               ; preds = %41
  %48 = bitcast %union.anon* %7 to %struct.TYPE_16__*
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = bitcast %union.anon* %6 to %struct.TYPE_17__*
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store i64 %53, i64* %58, align 8
  %59 = bitcast %union.anon* %6 to [1024 x i8]*
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %59, i64 0, i64 0
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @safe_send(i8* %60, i64 %61, i32 0)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @PROTOCOL_BINARY_CMD_SET, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %47
  %67 = bitcast %union.anon* %7 to [1024 x i8]*
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %67, i64 0, i64 0
  %69 = call i32 @safe_recv_packet(i8* %68, i32 1024)
  %70 = bitcast %union.anon* %7 to %struct.TYPE_16__*
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %73 = call i32 @validate_response_header(%struct.TYPE_16__* %70, i32 %71, i32 %72)
  %74 = bitcast %union.anon* %7 to %struct.TYPE_16__*
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = bitcast %union.anon* %6 to %struct.TYPE_17__*
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %79, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  br label %91

89:                                               ; preds = %47
  %90 = call i32 (...) @test_binary_noop()
  store i32 %90, i32* %3, align 4
  br label %93

91:                                               ; preds = %66
  %92 = load i32, i32* @TEST_PASS, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %89, %45
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @storage_command(i8*, i32, i32, i8*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @safe_send(i8*, i64, i32) #1

declare dso_local i32 @safe_recv_packet(i8*, i32) #1

declare dso_local i32 @validate_response_header(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @test_binary_noop(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
