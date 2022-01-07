; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__tga_get_comp.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__tga_get_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBI_grey = common dso_local global i32 0, align 4
@STBI_grey_alpha = common dso_local global i32 0, align 4
@STBI_rgb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @stbi__tga_get_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__tga_get_comp(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32*, i32** %7, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %10, %3
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %32 [
    i32 8, label %14
    i32 16, label %16
    i32 15, label %22
    i32 24, label %29
    i32 32, label %29
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* @STBI_grey, align 4
  store i32 %15, i32* %4, align 4
  br label %33

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @STBI_grey_alpha, align 4
  store i32 %20, i32* %4, align 4
  br label %33

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %12, %21
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* @STBI_rgb, align 4
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %12, %12
  %30 = load i32, i32* %5, align 4
  %31 = sdiv i32 %30, 8
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %29, %27, %19, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
