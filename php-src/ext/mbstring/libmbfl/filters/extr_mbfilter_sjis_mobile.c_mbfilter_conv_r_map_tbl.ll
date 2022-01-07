; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfilter_conv_r_map_tbl.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfilter_conv_r_map_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfilter_conv_r_map_tbl(i32 %0, i32* %1, [3 x i16]* %2, i32 %3) #0 {
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

11:                                               ; preds = %71, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %74

15:                                               ; preds = %11
  %16 = load [3 x i16]*, [3 x i16]** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i16], [3 x i16]* %16, i64 %18
  %20 = getelementptr inbounds [3 x i16], [3 x i16]* %19, i64 0, i64 2
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = load [3 x i16]*, [3 x i16]** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x i16], [3 x i16]* %27, i64 %29
  %31 = getelementptr inbounds [3 x i16], [3 x i16]* %30, i64 0, i64 2
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = load [3 x i16]*, [3 x i16]** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x i16], [3 x i16]* %34, i64 %36
  %38 = getelementptr inbounds [3 x i16], [3 x i16]* %37, i64 0, i64 0
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = sub nsw i32 %33, %40
  %42 = load [3 x i16]*, [3 x i16]** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x i16], [3 x i16]* %42, i64 %44
  %46 = getelementptr inbounds [3 x i16], [3 x i16]* %45, i64 0, i64 1
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = add nsw i32 %41, %48
  %50 = icmp sle i32 %26, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %25
  %52 = load i32, i32* %5, align 4
  %53 = load [3 x i16]*, [3 x i16]** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [3 x i16], [3 x i16]* %53, i64 %55
  %57 = getelementptr inbounds [3 x i16], [3 x i16]* %56, i64 0, i64 0
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = add nsw i32 %52, %59
  %61 = load [3 x i16]*, [3 x i16]** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x i16], [3 x i16]* %61, i64 %63
  %65 = getelementptr inbounds [3 x i16], [3 x i16]* %64, i64 0, i64 2
  %66 = load i16, i16* %65, align 2
  %67 = zext i16 %66 to i32
  %68 = sub nsw i32 %60, %67
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  store i32 1, i32* %10, align 4
  br label %74

70:                                               ; preds = %25, %15
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %11

74:                                               ; preds = %51, %11
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
