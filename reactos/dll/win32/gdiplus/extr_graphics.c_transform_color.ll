; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_transform_color.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_transform_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, [5 x i32]*)* @transform_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transform_color(i32 %0, [5 x i32]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [5 x i32]*, align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store [5 x i32]* %1, [5 x i32]** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 %15, i32* %16, align 16
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 24
  %26 = and i32 %25, 255
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  store i32 255, i32* %28, align 16
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %62, %2
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %65

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %34
  store i32 0, i32* %35, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %58, %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 5
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load [5 x i32]*, [5 x i32]** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %40, i64 %42
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* %43, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %47, %51
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %52
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %39
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %36

61:                                               ; preds = %36
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %29

65:                                               ; preds = %29
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %67, 256
  %69 = call i32 @max(i32 %68, i32 0)
  %70 = call zeroext i8 @min(i32 %69, i32 255)
  store i8 %70, i8* %9, align 1
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = sdiv i32 %72, 256
  %74 = call i32 @max(i32 %73, i32 0)
  %75 = call zeroext i8 @min(i32 %74, i32 255)
  store i8 %75, i8* %10, align 1
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 256
  %79 = call i32 @max(i32 %78, i32 0)
  %80 = call zeroext i8 @min(i32 %79, i32 255)
  store i8 %80, i8* %11, align 1
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %82, 256
  %84 = call i32 @max(i32 %83, i32 0)
  %85 = call zeroext i8 @min(i32 %84, i32 255)
  store i8 %85, i8* %12, align 1
  %86 = load i8, i8* %9, align 1
  %87 = zext i8 %86 to i32
  %88 = shl i32 %87, 24
  %89 = load i8, i8* %10, align 1
  %90 = zext i8 %89 to i32
  %91 = shl i32 %90, 16
  %92 = or i32 %88, %91
  %93 = load i8, i8* %11, align 1
  %94 = zext i8 %93 to i32
  %95 = shl i32 %94, 8
  %96 = or i32 %92, %95
  %97 = load i8, i8* %12, align 1
  %98 = zext i8 %97 to i32
  %99 = or i32 %96, %98
  ret i32 %99
}

declare dso_local zeroext i8 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
