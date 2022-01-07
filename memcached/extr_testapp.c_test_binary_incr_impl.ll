; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_incr_impl.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_incr_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32, [1020 x i8] }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PROTOCOL_BINARY_CMD_INCREMENT = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_SUCCESS = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_INCREMENTQ = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @test_binary_incr_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binary_incr_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.anon, align 4
  %6 = alloca %union.anon, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast %union.anon* %5 to [1024 x i8]*
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %11 = load i32, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = call i64 @arithmetic_command(i8* %10, i32 1024, i32 %11, i8* %12, i32 %14, i32 1, i32 0, i32 0)
  store i64 %15, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %46, %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = bitcast %union.anon* %5 to [1024 x i8]*
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @safe_send(i8* %21, i64 %22, i32 0)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PROTOCOL_BINARY_CMD_INCREMENT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %19
  %28 = bitcast %union.anon* %6 to [1024 x i8]*
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i64 0, i64 0
  %30 = call i32 @safe_recv_packet(i8* %29, i32 1024)
  %31 = bitcast %union.anon* %6 to i32*
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %34 = call i32 @validate_response_header(i32* %31, i32 %32, i32 %33)
  %35 = bitcast %union.anon* %6 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohll(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  br label %45

45:                                               ; preds = %27, %19
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %16

49:                                               ; preds = %16
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @PROTOCOL_BINARY_CMD_INCREMENTQ, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (...) @test_binary_noop()
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32, i32* @TEST_PASS, align 4
  ret i32 %56
}

declare dso_local i64 @arithmetic_command(i8*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @safe_send(i8*, i64, i32) #1

declare dso_local i32 @safe_recv_packet(i8*, i32) #1

declare dso_local i32 @validate_response_header(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ntohll(i32) #1

declare dso_local i32 @test_binary_noop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
