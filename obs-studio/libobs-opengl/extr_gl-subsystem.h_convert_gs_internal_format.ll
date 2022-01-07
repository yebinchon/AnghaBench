; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.h_convert_gs_internal_format.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.h_convert_gs_internal_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_R8 = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i32 0, align 4
@GL_RGB10_A2 = common dso_local global i32 0, align 4
@GL_RGBA16 = common dso_local global i32 0, align 4
@GL_R16 = common dso_local global i32 0, align 4
@GL_RGBA16F = common dso_local global i32 0, align 4
@GL_RGBA32F = common dso_local global i32 0, align 4
@GL_RG16F = common dso_local global i32 0, align 4
@GL_RG32F = common dso_local global i32 0, align 4
@GL_RG8 = common dso_local global i32 0, align 4
@GL_R16F = common dso_local global i32 0, align 4
@GL_R32F = common dso_local global i32 0, align 4
@GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = common dso_local global i32 0, align 4
@GL_COMPRESSED_RGBA_S3TC_DXT3_EXT = common dso_local global i32 0, align 4
@GL_COMPRESSED_RGBA_S3TC_DXT5_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @convert_gs_internal_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_gs_internal_format(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %42 [
    i32 146, label %5
    i32 136, label %7
    i32 132, label %9
    i32 144, label %11
    i32 145, label %13
    i32 140, label %15
    i32 131, label %17
    i32 139, label %19
    i32 130, label %21
    i32 129, label %23
    i32 134, label %25
    i32 133, label %27
    i32 135, label %29
    i32 138, label %31
    i32 137, label %33
    i32 143, label %35
    i32 142, label %37
    i32 141, label %39
    i32 128, label %41
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @GL_R8, align 4
  store i32 %6, i32* %2, align 4
  br label %43

7:                                                ; preds = %1
  %8 = load i32, i32* @GL_R8, align 4
  store i32 %8, i32* %2, align 4
  br label %43

9:                                                ; preds = %1
  %10 = load i32, i32* @GL_RGBA, align 4
  store i32 %10, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = load i32, i32* @GL_RGB, align 4
  store i32 %12, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load i32, i32* @GL_RGBA, align 4
  store i32 %14, i32* %2, align 4
  br label %43

15:                                               ; preds = %1
  %16 = load i32, i32* @GL_RGB10_A2, align 4
  store i32 %16, i32* %2, align 4
  br label %43

17:                                               ; preds = %1
  %18 = load i32, i32* @GL_RGBA16, align 4
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %1
  %20 = load i32, i32* @GL_R16, align 4
  store i32 %20, i32* %2, align 4
  br label %43

21:                                               ; preds = %1
  %22 = load i32, i32* @GL_RGBA16F, align 4
  store i32 %22, i32* %2, align 4
  br label %43

23:                                               ; preds = %1
  %24 = load i32, i32* @GL_RGBA32F, align 4
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %1
  %26 = load i32, i32* @GL_RG16F, align 4
  store i32 %26, i32* %2, align 4
  br label %43

27:                                               ; preds = %1
  %28 = load i32, i32* @GL_RG32F, align 4
  store i32 %28, i32* %2, align 4
  br label %43

29:                                               ; preds = %1
  %30 = load i32, i32* @GL_RG8, align 4
  store i32 %30, i32* %2, align 4
  br label %43

31:                                               ; preds = %1
  %32 = load i32, i32* @GL_R16F, align 4
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %1
  %34 = load i32, i32* @GL_R32F, align 4
  store i32 %34, i32* %2, align 4
  br label %43

35:                                               ; preds = %1
  %36 = load i32, i32* @GL_COMPRESSED_RGBA_S3TC_DXT1_EXT, align 4
  store i32 %36, i32* %2, align 4
  br label %43

37:                                               ; preds = %1
  %38 = load i32, i32* @GL_COMPRESSED_RGBA_S3TC_DXT3_EXT, align 4
  store i32 %38, i32* %2, align 4
  br label %43

39:                                               ; preds = %1
  %40 = load i32, i32* @GL_COMPRESSED_RGBA_S3TC_DXT5_EXT, align 4
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

42:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
