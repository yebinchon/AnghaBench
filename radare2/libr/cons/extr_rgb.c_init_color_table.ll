; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_rgb.c_init_color_table.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_rgb.c_init_color_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@color_table = common dso_local global i32* null, align 8
@value_range = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_color_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_color_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32*, i32** @color_table, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** @color_table, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 8388608, i32* %8, align 4
  %9 = load i32*, i32** @color_table, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 2
  store i32 32768, i32* %10, align 4
  %11 = load i32*, i32** @color_table, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 8421376, i32* %12, align 4
  %13 = load i32*, i32** @color_table, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  store i32 128, i32* %14, align 4
  %15 = load i32*, i32** @color_table, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 5
  store i32 8388736, i32* %16, align 4
  %17 = load i32*, i32** @color_table, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 6
  store i32 32896, i32* %18, align 4
  %19 = load i32*, i32** @color_table, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 7
  store i32 12632256, i32* %20, align 4
  %21 = load i32*, i32** @color_table, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 8
  store i32 8421504, i32* %22, align 4
  %23 = load i32*, i32** @color_table, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 9
  store i32 16711680, i32* %24, align 4
  %25 = load i32*, i32** @color_table, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 10
  store i32 65280, i32* %26, align 4
  %27 = load i32*, i32** @color_table, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 11
  store i32 16776960, i32* %28, align 4
  %29 = load i32*, i32** @color_table, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 12
  store i32 255, i32* %30, align 4
  %31 = load i32*, i32** @color_table, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 13
  store i32 16711935, i32* %32, align 4
  %33 = load i32*, i32** @color_table, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 14
  store i32 65535, i32* %34, align 4
  %35 = load i32*, i32** @color_table, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 15
  store i32 16777215, i32* %36, align 4
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %76, %0
  %38 = load i32, i32* %1, align 4
  %39 = icmp slt i32 %38, 216
  br i1 %39, label %40, label %79

40:                                               ; preds = %37
  %41 = load i32*, i32** @value_range, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sdiv i32 %42, 36
  %44 = srem i32 %43, 6
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %2, align 4
  %48 = load i32*, i32** @value_range, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sdiv i32 %49, 6
  %51 = srem i32 %50, 6
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %3, align 4
  %55 = load i32*, i32** @value_range, align 8
  %56 = load i32, i32* %1, align 4
  %57 = srem i32 %56, 6
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %2, align 4
  %62 = shl i32 %61, 16
  %63 = and i32 %62, 16777215
  %64 = load i32, i32* %3, align 4
  %65 = shl i32 %64, 8
  %66 = and i32 %65, 65535
  %67 = add nsw i32 %63, %66
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 255
  %70 = add nsw i32 %67, %69
  %71 = load i32*, i32** @color_table, align 8
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 16
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4
  br label %76

76:                                               ; preds = %40
  %77 = load i32, i32* %1, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %1, align 4
  br label %37

79:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %80

80:                                               ; preds = %102, %79
  %81 = load i32, i32* %1, align 4
  %82 = icmp slt i32 %81, 24
  br i1 %82, label %83, label %105

83:                                               ; preds = %80
  %84 = load i32, i32* %1, align 4
  %85 = mul nsw i32 %84, 10
  %86 = add nsw i32 8, %85
  store i32 %86, i32* %2, align 4
  %87 = load i32, i32* %2, align 4
  %88 = shl i32 %87, 16
  %89 = and i32 %88, 16777215
  %90 = load i32, i32* %2, align 4
  %91 = shl i32 %90, 8
  %92 = and i32 %91, 65535
  %93 = add nsw i32 %89, %92
  %94 = load i32, i32* %2, align 4
  %95 = and i32 %94, 255
  %96 = add nsw i32 %93, %95
  %97 = load i32*, i32** @color_table, align 8
  %98 = load i32, i32* %1, align 4
  %99 = add nsw i32 %98, 232
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 %96, i32* %101, align 4
  br label %102

102:                                              ; preds = %83
  %103 = load i32, i32* %1, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %1, align 4
  br label %80

105:                                              ; preds = %80
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
