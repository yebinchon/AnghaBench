; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfilter_conv_map_tbl.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfilter_conv_map_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfilter_conv_map_tbl(i32 %0, i32* %1, [3 x i16]* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [3 x i16]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store [3 x i16]* %2, [3 x i16]** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %55, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = load [3 x i16]*, [3 x i16]** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i16], [3 x i16]* %16, i64 %18
  %20 = getelementptr inbounds [3 x i16], [3 x i16]* %19, i64 0, i64 0
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = load [3 x i16]*, [3 x i16]** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x i16], [3 x i16]* %27, i64 %29
  %31 = getelementptr inbounds [3 x i16], [3 x i16]* %30, i64 0, i64 1
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp sle i32 %26, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = load [3 x i16]*, [3 x i16]** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i16], [3 x i16]* %37, i64 %39
  %41 = getelementptr inbounds [3 x i16], [3 x i16]* %40, i64 0, i64 0
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = sub nsw i32 %36, %43
  %45 = load [3 x i16]*, [3 x i16]** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x i16], [3 x i16]* %45, i64 %47
  %49 = getelementptr inbounds [3 x i16], [3 x i16]* %48, i64 0, i64 2
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  %52 = add nsw i32 %44, %51
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  store i32 1, i32* %10, align 4
  br label %58

54:                                               ; preds = %25, %15
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %11

58:                                               ; preds = %35, %11
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
