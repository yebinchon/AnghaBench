; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_gb18030.c_mbfl_bisec_srch2.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_gb18030.c_mbfl_bisec_srch2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_bisec_srch2(i32 %0, i16* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i16* %1, i16** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i16*, i16** %6, align 8
  %14 = getelementptr inbounds i16, i16* %13, i64 0
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %54, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %21, %22
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %55

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %26, %27
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i16*, i16** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp slt i32 %30, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %10, align 4
  br label %54

40:                                               ; preds = %25
  %41 = load i32, i32* %5, align 4
  %42 = load i16*, i16** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %42, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp sgt i32 %41, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %9, align 4
  br label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %56

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %38
  br label %20

55:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %51, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
