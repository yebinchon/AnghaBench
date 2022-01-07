; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_cache_bulkalloc.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_cache_bulkalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4
@ITERATIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @cache_bulkalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_bulkalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [1024 x i8*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i32* @cache_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %7, i32 8, i32* null, i32* null)
  store i32* %8, i32** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 1024
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @cache_alloc(i32* %13)
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %4, i64 0, i64 %16
  store i8* %14, i8** %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %4, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %4, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @memset(i8* %28, i32 255, i64 %29)
  br label %31

31:                                               ; preds = %12
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %9

34:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %45, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 1024
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %4, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @cache_free(i32* %39, i8* %43)
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %35

48:                                               ; preds = %35
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @cache_destroy(i32* %49)
  %51 = load i32, i32* @TEST_PASS, align 4
  ret i32 %51
}

declare dso_local i32* @cache_create(i8*, i64, i32, i32*, i32*) #1

declare dso_local i8* @cache_alloc(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @cache_free(i32*, i8*) #1

declare dso_local i32 @cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
