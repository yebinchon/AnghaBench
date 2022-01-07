; ModuleID = '/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_directorymanagement.c_wceex_wgetcwd.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_directorymanagement.c_wceex_wgetcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wceex_wgetcwd(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = call i64 @malloc(i32 %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %35

19:                                               ; preds = %9, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @wceex_GetCurrentDirectoryW(i32 %20, i32* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32* null, i32** %3, align 8
  br label %35

26:                                               ; preds = %19
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp sge i64 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @ERANGE, align 4
  store i32 %32, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %35

33:                                               ; preds = %26
  %34 = load i32*, i32** %4, align 8
  store i32* %34, i32** %3, align 8
  br label %35

35:                                               ; preds = %33, %31, %25, %17
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @wceex_GetCurrentDirectoryW(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
