; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_add_impl.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_add_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32, [1020 x i8] }

@PROTOCOL_BINARY_CMD_ADD = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_SUCCESS = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @test_binary_add_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binary_add_impl(i8* %0, i32 %1) #0 {
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
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %49, %2
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = bitcast %union.anon* %6 to [1024 x i8]*
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @safe_send(i8* %22, i64 %23, i32 0)
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PROTOCOL_BINARY_CMD_ADD, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = bitcast %union.anon* %7 to [1024 x i8]*
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %34 = call i32 @safe_recv_packet(i8* %33, i32 1024)
  %35 = bitcast %union.anon* %7 to i32*
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %38 = call i32 @validate_response_header(i32* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %27
  br label %48

40:                                               ; preds = %20
  %41 = bitcast %union.anon* %7 to [1024 x i8]*
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %41, i64 0, i64 0
  %43 = call i32 @safe_recv_packet(i8* %42, i32 1024)
  %44 = bitcast %union.anon* %7 to i32*
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS, align 4
  %47 = call i32 @validate_response_header(i32* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %39
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %17

52:                                               ; preds = %17
  %53 = load i32, i32* @TEST_PASS, align 4
  ret i32 %53
}

declare dso_local i64 @storage_command(i8*, i32, i32, i8*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @safe_send(i8*, i64, i32) #1

declare dso_local i32 @safe_recv_packet(i8*, i32) #1

declare dso_local i32 @validate_response_header(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
