; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_aspect.c_src_dst_split_scaling.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_aspect.c_src_dst_split_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, float, float, float, i32*, i32*, i32*, i32*, i32*, i32*)* @src_dst_split_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @src_dst_split_scaling(i32 %0, i32 %1, i32 %2, float %3, float %4, float %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store float %3, float* %16, align 4
  store float %4, float* %17, align 4
  store float %5, float* %18, align 4
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  %29 = load float, float* %16, align 4
  %30 = call i32 @powf(i32 2, float %29)
  %31 = load i32, i32* %15, align 4
  %32 = mul nsw i32 %31, %30
  store i32 %32, i32* %15, align 4
  %33 = load float, float* %17, align 4
  %34 = fadd float %33, 1.000000e+00
  %35 = fdiv float %34, 2.000000e+00
  store float %35, float* %17, align 4
  %36 = load i32*, i32** %19, align 8
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32*, i32** %20, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sitofp i32 %41 to float
  %43 = load float, float* %17, align 4
  %44 = fmul float %42, %43
  %45 = load float, float* %18, align 4
  %46 = load i32, i32* %15, align 4
  %47 = sitofp i32 %46 to float
  %48 = fmul float %45, %47
  %49 = fadd float %44, %48
  %50 = fptosi float %49 to i32
  %51 = load i32*, i32** %21, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %21, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32*, i32** %22, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %20, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %19, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %58, %60
  store i32 %61, i32* %25, align 4
  %62 = load i32*, i32** %22, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %21, align 8
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %63, %65
  store i32 %66, i32* %26, align 4
  %67 = load i32*, i32** %21, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %12
  %71 = load i32*, i32** %21, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 0, %72
  %74 = load i32, i32* %25, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %26, align 4
  %77 = sdiv i32 %75, %76
  store i32 %77, i32* %27, align 4
  %78 = load i32, i32* %27, align 4
  %79 = load i32*, i32** %19, align 8
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %78
  store i32 %81, i32* %79, align 4
  %82 = load i32*, i32** %21, align 8
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %70, %12
  %84 = load i32*, i32** %22, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load i32*, i32** %22, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %14, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* %25, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %26, align 4
  %96 = sdiv i32 %94, %95
  store i32 %96, i32* %28, align 4
  %97 = load i32, i32* %28, align 4
  %98 = load i32*, i32** %20, align 8
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, %97
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32*, i32** %22, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %88, %83
  %104 = load i32, i32* %13, align 4
  %105 = load i32*, i32** %19, align 8
  %106 = load i32*, i32** %20, align 8
  %107 = call i32 @clamp_size(i32 %104, i32* %105, i32* %106)
  %108 = load i32, i32* %14, align 4
  %109 = load i32*, i32** %21, align 8
  %110 = load i32*, i32** %22, align 8
  %111 = call i32 @clamp_size(i32 %108, i32* %109, i32* %110)
  %112 = load i32*, i32** %21, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %23, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32*, i32** %22, align 8
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %115, %117
  %119 = load i32*, i32** %24, align 8
  store i32 %118, i32* %119, align 4
  ret void
}

declare dso_local i32 @powf(i32, float) #1

declare dso_local i32 @clamp_size(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
