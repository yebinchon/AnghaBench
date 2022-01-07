; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/grapheme/extr_grapheme_util.c_grapheme_get_haystack_offset.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/grapheme/extr_grapheme_util.c_grapheme_get_haystack_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UBRK_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @grapheme_get_haystack_offset(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64 (i32*)*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 0, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %48

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  store i64 (i32*)* @ubrk_previous, i64 (i32*)** %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ubrk_last(i32* %16)
  store i32 1, i32* %8, align 4
  br label %19

18:                                               ; preds = %12
  store i64 (i32*)* @ubrk_next, i64 (i32*)** %7, align 8
  store i32 -1, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %15
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @UBRK_DONE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i1 [ false, %20 ], [ %26, %24 ]
  br i1 %28, label %29, label %42

29:                                               ; preds = %27
  %30 = load i64 (i32*)*, i64 (i32*)** %7, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 %30(i32* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* @UBRK_DONE, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %36, %29
  br label %20

42:                                               ; preds = %27
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i64 -1, i64* %3, align 8
  br label %48

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %46, %45, %11
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i64 @ubrk_previous(i32*) #1

declare dso_local i32 @ubrk_last(i32*) #1

declare dso_local i64 @ubrk_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
