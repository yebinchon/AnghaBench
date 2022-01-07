; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_buffer.c_test_buffer_list_aggregate_separator_noop.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_buffer.c_test_buffer_list_aggregate_separator_noop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_buffer_list_aggregate_ctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.buffer = type { i32 }

@testsep = common dso_local global i32 0, align 4
@teststr1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @test_buffer_list_aggregate_separator_noop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_buffer_list_aggregate_separator_noop(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_buffer_list_aggregate_ctx*, align 8
  %4 = alloca %struct.buffer*, align 8
  store i8** %0, i8*** %2, align 8
  %5 = load i8**, i8*** %2, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.test_buffer_list_aggregate_ctx*
  store %struct.test_buffer_list_aggregate_ctx* %7, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %8 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load i32, i32* @testsep, align 4
  %12 = call i32 @buffer_list_aggregate_separator(%struct.TYPE_3__* %10, i32 2, i32 %11)
  %13 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @assert_int_equal(i32 %17, i32 3)
  %19 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call %struct.buffer* @buffer_list_peek(%struct.TYPE_3__* %21)
  store %struct.buffer* %22, %struct.buffer** %4, align 8
  %23 = load %struct.buffer*, %struct.buffer** %4, align 8
  %24 = load i32, i32* @teststr1, align 4
  %25 = call i32 @assert_buf_equals_str(%struct.buffer* %23, i32 %24)
  ret void
}

declare dso_local i32 @buffer_list_aggregate_separator(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @assert_int_equal(i32, i32) #1

declare dso_local %struct.buffer* @buffer_list_peek(%struct.TYPE_3__*) #1

declare dso_local i32 @assert_buf_equals_str(%struct.buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
