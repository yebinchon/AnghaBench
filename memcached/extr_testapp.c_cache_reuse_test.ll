; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_cache_reuse_test.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_cache_reuse_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cache_reuse_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_reuse_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = call i32* @cache_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4, i32 8, i32* null, i32* null)
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @cache_alloc(i32* %6)
  store i8* %7, i8** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @cache_free(i32* %8, i8* %9)
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %25, %0
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load i32*, i32** %2, align 8
  %16 = call i8* @cache_alloc(i32* %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = icmp eq i8* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @cache_free(i32* %22, i8* %23)
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %11

28:                                               ; preds = %11
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @cache_destroy(i32* %29)
  %31 = load i32, i32* @TEST_PASS, align 4
  ret i32 %31
}

declare dso_local i32* @cache_create(i8*, i32, i32, i32*, i32*) #1

declare dso_local i8* @cache_alloc(i32*) #1

declare dso_local i32 @cache_free(i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
