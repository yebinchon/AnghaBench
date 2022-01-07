; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_memory_funcs.c_test_simple.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_memory_funcs.c_test_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@my_malloc = common dso_local global i64 0, align 8
@my_free = common dso_local global i64 0, align 8
@malloc_called = common dso_local global i32 0, align 4
@free_called = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Custom allocation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_simple() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  %3 = load i64, i64* @my_malloc, align 8
  %4 = load i64, i64* @my_free, align 8
  %5 = call i32 @json_set_alloc_funcs(i64 %3, i64 %4)
  %6 = call i32 @json_get_alloc_funcs(i64* %1, i64* %2)
  %7 = call i32 (...) @create_and_free_complex_object()
  %8 = load i32, i32* @malloc_called, align 4
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %21, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @free_called, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @my_malloc, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @my_free, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13, %10, %0
  %22 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  ret void
}

declare dso_local i32 @json_set_alloc_funcs(i64, i64) #1

declare dso_local i32 @json_get_alloc_funcs(i64*, i64*) #1

declare dso_local i32 @create_and_free_complex_object(...) #1

declare dso_local i32 @fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
