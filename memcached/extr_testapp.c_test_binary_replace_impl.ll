; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_replace_impl.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_replace_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32, [1020 x i8] }

@PROTOCOL_BINARY_RESPONSE_KEY_ENOENT = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_ADD = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_SUCCESS = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_REPLACE = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_REPLACEQ = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @test_binary_replace_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binary_replace_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.anon, align 4
  %7 = alloca %union.anon, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -559035650, i32* %5, align 4
  %10 = bitcast %union.anon* %6 to [1024 x i8]*
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %12 = load i32, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call i64 @storage_command(i8* %11, i32 1024, i32 %12, i8* %13, i32 %15, i32* %5, i32 4, i32 0, i32 0)
  store i64 %16, i64* %8, align 8
  %17 = bitcast %union.anon* %6 to [1024 x i8]*
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @safe_send(i8* %18, i64 %19, i32 0)
  %21 = bitcast %union.anon* %7 to [1024 x i8]*
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %23 = call i32 @safe_recv_packet(i8* %22, i32 1024)
  %24 = bitcast %union.anon* %7 to i32*
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, align 4
  %27 = call i32 @validate_response_header(i32* %24, i32 %25, i32 %26)
  %28 = bitcast %union.anon* %6 to [1024 x i8]*
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i64 0, i64 0
  %30 = load i32, i32* @PROTOCOL_BINARY_CMD_ADD, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call i64 @storage_command(i8* %29, i32 1024, i32 %30, i8* %31, i32 %33, i32* %5, i32 4, i32 0, i32 0)
  store i64 %34, i64* %8, align 8
  %35 = bitcast %union.anon* %6 to [1024 x i8]*
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %35, i64 0, i64 0
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @safe_send(i8* %36, i64 %37, i32 0)
  %39 = bitcast %union.anon* %7 to [1024 x i8]*
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %39, i64 0, i64 0
  %41 = call i32 @safe_recv_packet(i8* %40, i32 1024)
  %42 = bitcast %union.anon* %7 to i32*
  %43 = load i32, i32* @PROTOCOL_BINARY_CMD_ADD, align 4
  %44 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %45 = call i32 @validate_response_header(i32* %42, i32 %43, i32 %44)
  %46 = bitcast %union.anon* %6 to [1024 x i8]*
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %46, i64 0, i64 0
  %48 = load i32, i32* %4, align 4
  %49 = load i8*, i8** %3, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = call i64 @storage_command(i8* %47, i32 1024, i32 %48, i8* %49, i32 %51, i32* %5, i32 4, i32 0, i32 0)
  store i64 %52, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %73, %2
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 10
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = bitcast %union.anon* %6 to [1024 x i8]*
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %57, i64 0, i64 0
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @safe_send(i8* %58, i64 %59, i32 0)
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @PROTOCOL_BINARY_CMD_REPLACE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = bitcast %union.anon* %7 to [1024 x i8]*
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %65, i64 0, i64 0
  %67 = call i32 @safe_recv_packet(i8* %66, i32 1024)
  %68 = bitcast %union.anon* %7 to i32*
  %69 = load i32, i32* @PROTOCOL_BINARY_CMD_REPLACE, align 4
  %70 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %71 = call i32 @validate_response_header(i32* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %64, %56
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %53

76:                                               ; preds = %53
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @PROTOCOL_BINARY_CMD_REPLACEQ, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 (...) @test_binary_noop()
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i32, i32* @TEST_PASS, align 4
  ret i32 %83
}

declare dso_local i64 @storage_command(i8*, i32, i32, i8*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @safe_send(i8*, i64, i32) #1

declare dso_local i32 @safe_recv_packet(i8*, i32) #1

declare dso_local i32 @validate_response_header(i32*, i32, i32) #1

declare dso_local i32 @test_binary_noop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
