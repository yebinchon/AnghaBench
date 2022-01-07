; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_cache_fail_constructor_test.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_cache_fail_constructor_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@cache_fail_constructor = common dso_local global i32 0, align 4
@TEST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cache_fail_constructor_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_fail_constructor_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @TEST_PASS, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @cache_fail_constructor, align 4
  %6 = call i32* @cache_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4, i32 4, i32 %5, i32* null)
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32* @cache_alloc(i32* %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = load i32, i32* @TEST_FAIL, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %0
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @cache_destroy(i32* %18)
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32* @cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @cache_alloc(i32*) #1

declare dso_local i32 @cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
