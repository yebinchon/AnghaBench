; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.h_convert_filter.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.h_convert_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_NEAREST_MIPMAP_NEAREST = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_LINEAR_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_NEAREST_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@GL_LINEAR_MIPMAP_NEAREST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @convert_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_filter(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %53 [
    i32 128, label %8
    i32 135, label %13
    i32 131, label %18
    i32 130, label %23
    i32 129, label %28
    i32 134, label %33
    i32 133, label %38
    i32 132, label %43
    i32 136, label %48
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* @GL_NEAREST_MIPMAP_NEAREST, align 4
  %10 = load i32*, i32** %5, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @GL_NEAREST, align 4
  %12 = load i32*, i32** %6, align 8
  store i32 %11, i32* %12, align 4
  br label %58

13:                                               ; preds = %3
  %14 = load i32, i32* @GL_LINEAR_MIPMAP_LINEAR, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @GL_LINEAR, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  br label %58

18:                                               ; preds = %3
  %19 = load i32, i32* @GL_NEAREST_MIPMAP_LINEAR, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @GL_NEAREST, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  br label %58

23:                                               ; preds = %3
  %24 = load i32, i32* @GL_NEAREST_MIPMAP_NEAREST, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @GL_LINEAR, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %58

28:                                               ; preds = %3
  %29 = load i32, i32* @GL_NEAREST_MIPMAP_LINEAR, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @GL_LINEAR, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %58

33:                                               ; preds = %3
  %34 = load i32, i32* @GL_LINEAR_MIPMAP_NEAREST, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @GL_NEAREST, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %58

38:                                               ; preds = %3
  %39 = load i32, i32* @GL_LINEAR_MIPMAP_LINEAR, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @GL_NEAREST, align 4
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  br label %58

43:                                               ; preds = %3
  %44 = load i32, i32* @GL_LINEAR_MIPMAP_NEAREST, align 4
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @GL_LINEAR, align 4
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  br label %58

48:                                               ; preds = %3
  %49 = load i32, i32* @GL_LINEAR_MIPMAP_LINEAR, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @GL_LINEAR, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  br label %58

53:                                               ; preds = %3
  %54 = load i32, i32* @GL_NEAREST_MIPMAP_NEAREST, align 4
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @GL_NEAREST, align 4
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %48, %43, %38, %33, %28, %23, %18, %13, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
