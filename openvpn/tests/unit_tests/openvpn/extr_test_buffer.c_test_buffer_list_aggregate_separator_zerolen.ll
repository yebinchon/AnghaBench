; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_buffer.c_test_buffer_list_aggregate_separator_zerolen.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_buffer.c_test_buffer_list_aggregate_separator_zerolen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_buffer_list_aggregate_ctx = type { %struct.buffer_list* }
%struct.buffer_list = type { i32 }
%struct.buffer = type { i32 }

@testnosep = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @test_buffer_list_aggregate_separator_zerolen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_buffer_list_aggregate_separator_zerolen(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_buffer_list_aggregate_ctx*, align 8
  %4 = alloca %struct.buffer_list*, align 8
  %5 = alloca %struct.buffer*, align 8
  store i8** %0, i8*** %2, align 8
  %6 = load i8**, i8*** %2, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = bitcast i8* %7 to %struct.test_buffer_list_aggregate_ctx*
  store %struct.test_buffer_list_aggregate_ctx* %8, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %9 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %9, i32 0, i32 0
  %11 = load %struct.buffer_list*, %struct.buffer_list** %10, align 8
  store %struct.buffer_list* %11, %struct.buffer_list** %4, align 8
  %12 = load %struct.buffer_list*, %struct.buffer_list** %4, align 8
  %13 = load i32, i32* @testnosep, align 4
  %14 = call i32 @buffer_list_aggregate_separator(%struct.buffer_list* %12, i32 65536, i32 %13)
  %15 = load %struct.buffer_list*, %struct.buffer_list** %4, align 8
  %16 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @assert_int_equal(i32 %17, i32 1)
  %19 = load %struct.buffer_list*, %struct.buffer_list** %4, align 8
  %20 = call %struct.buffer* @buffer_list_peek(%struct.buffer_list* %19)
  store %struct.buffer* %20, %struct.buffer** %5, align 8
  %21 = load %struct.buffer*, %struct.buffer** %5, align 8
  %22 = call i32 @assert_buf_equals_str(%struct.buffer* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @buffer_list_aggregate_separator(%struct.buffer_list*, i32, i32) #1

declare dso_local i32 @assert_int_equal(i32, i32) #1

declare dso_local %struct.buffer* @buffer_list_peek(%struct.buffer_list*) #1

declare dso_local i32 @assert_buf_equals_str(%struct.buffer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
