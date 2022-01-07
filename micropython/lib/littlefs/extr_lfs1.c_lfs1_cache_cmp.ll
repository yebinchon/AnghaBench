; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_cache_cmp.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_cache_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i64, i8*, i64)* @lfs1_cache_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs1_cache_cmp(i32* %0, i32* %1, i32* %2, i32 %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %16, align 8
  store i64 0, i64* %17, align 8
  br label %22

22:                                               ; preds = %48, %7
  %23 = load i64, i64* %17, align 8
  %24 = load i64, i64* %15, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %17, align 8
  %33 = add i64 %31, %32
  %34 = call i32 @lfs1_cache_read(i32* %27, i32* %28, i32* %29, i32 %30, i64 %33, i64* %18, i32 1)
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %19, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %19, align 4
  store i32 %38, i32* %8, align 4
  br label %52

39:                                               ; preds = %26
  %40 = load i64, i64* %18, align 8
  %41 = load i64*, i64** %16, align 8
  %42 = load i64, i64* %17, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %52

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %17, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %17, align 8
  br label %22

51:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %46, %37
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @lfs1_cache_read(i32*, i32*, i32*, i32, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
