; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_cache_constructor_test.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_cache_constructor_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@cache_constructor = common dso_local global i32 0, align 4
@constructor_pattern = common dso_local global i64 0, align 8
@TEST_PASS = common dso_local global i32 0, align 4
@TEST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cache_constructor_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_constructor_test() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @cache_constructor, align 4
  %5 = call i32* @cache_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 8, i32 8, i32 %4, i32* null)
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i64* @cache_alloc(i32* %10)
  store i64* %11, i64** %2, align 8
  %12 = load i64*, i64** %2, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = load i32*, i32** %1, align 8
  %15 = load i64*, i64** %2, align 8
  %16 = call i32 @cache_free(i32* %14, i64* %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @cache_destroy(i32* %17)
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @constructor_pattern, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = load i32, i32* @TEST_PASS, align 4
  br label %26

24:                                               ; preds = %0
  %25 = load i32, i32* @TEST_FAIL, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  ret i32 %27
}

declare dso_local i32* @cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64* @cache_alloc(i32*) #1

declare dso_local i32 @cache_free(i32*, i64*) #1

declare dso_local i32 @cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
