; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_draw_bmp.c_unpremultiply_and_split_BGR32.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_draw_bmp.c_unpremultiply_and_split_BGR32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32, i32**, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_image*, %struct.mp_image*)* @unpremultiply_and_split_BGR32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpremultiply_and_split_BGR32(%struct.mp_image* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mp_image* %0, %struct.mp_image** %3, align 8
  store %struct.mp_image* %1, %struct.mp_image** %4, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %124, %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %19 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %127

22:                                               ; preds = %16
  %23 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %24 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %29 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %27, i64 %35
  store i32* %36, i32** %6, align 8
  %37 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %38 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %43 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %41, i64 %49
  store i32* %50, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %120, %22
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %54 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %123

57:                                               ; preds = %51
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 24
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = ashr i32 %65, 16
  %67 = and i32 %66, 255
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 255
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 255
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = sdiv i32 %74, 2
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %114

78:                                               ; preds = %57
  %79 = load i32, i32* %11, align 4
  %80 = mul nsw i32 %79, 255
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %14, align 4
  %84 = sdiv i32 %82, %83
  %85 = call i32 @MPMIN(i32 255, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = mul nsw i32 %86, 255
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* %14, align 4
  %91 = sdiv i32 %89, %90
  %92 = call i32 @MPMIN(i32 255, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = mul nsw i32 %93, 255
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %14, align 4
  %98 = sdiv i32 %96, %97
  %99 = call i32 @MPMIN(i32 255, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %12, align 4
  %102 = shl i32 %101, 8
  %103 = add nsw i32 %100, %102
  %104 = load i32, i32* %11, align 4
  %105 = shl i32 %104, 16
  %106 = add nsw i32 %103, %105
  %107 = load i32, i32* %10, align 4
  %108 = shl i32 %107, 24
  %109 = add nsw i32 %106, %108
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %78, %57
  %115 = load i32, i32* %10, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  br label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %51

123:                                              ; preds = %51
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %16

127:                                              ; preds = %16
  ret void
}

declare dso_local i32 @MPMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
