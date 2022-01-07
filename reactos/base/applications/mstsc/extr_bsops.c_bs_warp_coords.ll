; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_warp_coords.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_warp_coords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_clip_left1 = common dso_local global i32 0, align 4
@g_clip_top1 = common dso_local global i32 0, align 4
@g_clip_right1 = common dso_local global i32 0, align 4
@g_clip_bottom1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bs_warp_coords(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* @g_clip_left1, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load i32, i32* @g_clip_left1, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %21, %23
  store i32 %24, i32* %14, align 4
  br label %26

25:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* @g_clip_top1, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @g_clip_top1, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %32, %34
  store i32 %35, i32* %15, align 4
  br label %37

36:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* @g_clip_right1, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %49, %51
  %53 = load i32, i32* @g_clip_right1, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sub nsw i32 %47, %54
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %45, %37
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %59, %61
  %63 = load i32, i32* @g_clip_bottom1, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %57
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %69, %71
  %73 = load i32, i32* @g_clip_bottom1, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sub nsw i32 %67, %74
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %65, %57
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %15, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32*, i32** %11, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  store i32 0, i32* %7, align 4
  br label %126

92:                                               ; preds = %77
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 0, i32* %7, align 4
  br label %126

97:                                               ; preds = %92
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32*, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32*, i32** %9, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %12, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %97
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32*, i32** %12, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %110, %97
  %117 = load i32*, i32** %13, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32*, i32** %13, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %119, %116
  store i32 1, i32* %7, align 4
  br label %126

126:                                              ; preds = %125, %96, %91
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
