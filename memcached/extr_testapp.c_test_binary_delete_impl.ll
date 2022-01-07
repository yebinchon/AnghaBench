; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_delete_impl.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_delete_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32, [1020 x i8] }

@PROTOCOL_BINARY_RESPONSE_KEY_ENOENT = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_ADD = common dso_local global i64 0, align 8
@PROTOCOL_BINARY_RESPONSE_SUCCESS = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_DELETE = common dso_local global i64 0, align 8
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @test_binary_delete_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binary_delete_impl(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.anon, align 4
  %6 = alloca %union.anon, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = bitcast %union.anon* %5 to [1024 x i8]*
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %10 = load i64, i64* %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = call i64 @raw_command(i8* %9, i32 1024, i64 %10, i8* %11, i32 %13, i32* null, i32 0)
  store i64 %14, i64* %7, align 8
  %15 = bitcast %union.anon* %5 to [1024 x i8]*
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @safe_send(i8* %16, i64 %17, i32 0)
  %19 = bitcast %union.anon* %6 to [1024 x i8]*
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %21 = call i32 @safe_recv_packet(i8* %20, i32 1024)
  %22 = bitcast %union.anon* %6 to i32*
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, align 4
  %25 = call i32 @validate_response_header(i32* %22, i64 %23, i32 %24)
  %26 = bitcast %union.anon* %5 to [1024 x i8]*
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %26, i64 0, i64 0
  %28 = load i64, i64* @PROTOCOL_BINARY_CMD_ADD, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = call i64 @storage_command(i8* %27, i32 1024, i64 %28, i8* %29, i32 %31, i32* null, i32 0, i32 0, i32 0)
  store i64 %32, i64* %7, align 8
  %33 = bitcast %union.anon* %5 to [1024 x i8]*
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %33, i64 0, i64 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @safe_send(i8* %34, i64 %35, i32 0)
  %37 = bitcast %union.anon* %6 to [1024 x i8]*
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %37, i64 0, i64 0
  %39 = call i32 @safe_recv_packet(i8* %38, i32 1024)
  %40 = bitcast %union.anon* %6 to i32*
  %41 = load i64, i64* @PROTOCOL_BINARY_CMD_ADD, align 8
  %42 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %43 = call i32 @validate_response_header(i32* %40, i64 %41, i32 %42)
  %44 = bitcast %union.anon* %5 to [1024 x i8]*
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %44, i64 0, i64 0
  %46 = load i64, i64* %4, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = call i64 @raw_command(i8* %45, i32 1024, i64 %46, i8* %47, i32 %49, i32* null, i32 0)
  store i64 %50, i64* %7, align 8
  %51 = bitcast %union.anon* %5 to [1024 x i8]*
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %51, i64 0, i64 0
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @safe_send(i8* %52, i64 %53, i32 0)
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @PROTOCOL_BINARY_CMD_DELETE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %2
  %59 = bitcast %union.anon* %6 to [1024 x i8]*
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %59, i64 0, i64 0
  %61 = call i32 @safe_recv_packet(i8* %60, i32 1024)
  %62 = bitcast %union.anon* %6 to i32*
  %63 = load i64, i64* @PROTOCOL_BINARY_CMD_DELETE, align 8
  %64 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %65 = call i32 @validate_response_header(i32* %62, i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %58, %2
  %67 = bitcast %union.anon* %5 to [1024 x i8]*
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %67, i64 0, i64 0
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @safe_send(i8* %68, i64 %69, i32 0)
  %71 = bitcast %union.anon* %6 to [1024 x i8]*
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %71, i64 0, i64 0
  %73 = call i32 @safe_recv_packet(i8* %72, i32 1024)
  %74 = bitcast %union.anon* %6 to i32*
  %75 = load i64, i64* %4, align 8
  %76 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, align 4
  %77 = call i32 @validate_response_header(i32* %74, i64 %75, i32 %76)
  %78 = load i32, i32* @TEST_PASS, align 4
  ret i32 %78
}

declare dso_local i64 @raw_command(i8*, i32, i64, i8*, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @safe_send(i8*, i64, i32) #1

declare dso_local i32 @safe_recv_packet(i8*, i32) #1

declare dso_local i32 @validate_response_header(i32*, i64, i32) #1

declare dso_local i64 @storage_command(i8*, i32, i64, i8*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
