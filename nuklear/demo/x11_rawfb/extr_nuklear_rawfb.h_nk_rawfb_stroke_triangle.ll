; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_triangle.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_triangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { i32 }
%struct.nk_color = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, i16, i16, i16, i16, i16, i16, i16, i32)* @nk_rawfb_stroke_triangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_stroke_triangle(%struct.rawfb_context* %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i16 signext %5, i16 signext %6, i16 zeroext %7, i32 %8) #0 {
  %10 = alloca %struct.nk_color, align 4
  %11 = alloca %struct.rawfb_context*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %10, i32 0, i32 0
  store i32 %8, i32* %19, align 4
  store %struct.rawfb_context* %0, %struct.rawfb_context** %11, align 8
  store i16 %1, i16* %12, align 2
  store i16 %2, i16* %13, align 2
  store i16 %3, i16* %14, align 2
  store i16 %4, i16* %15, align 2
  store i16 %5, i16* %16, align 2
  store i16 %6, i16* %17, align 2
  store i16 %7, i16* %18, align 2
  %20 = load %struct.rawfb_context*, %struct.rawfb_context** %11, align 8
  %21 = load i16, i16* %12, align 2
  %22 = load i16, i16* %13, align 2
  %23 = load i16, i16* %14, align 2
  %24 = load i16, i16* %15, align 2
  %25 = load i16, i16* %18, align 2
  %26 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %10, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %20, i16 signext %21, i16 signext %22, i16 signext %23, i16 signext %24, i16 zeroext %25, i32 %27)
  %29 = load %struct.rawfb_context*, %struct.rawfb_context** %11, align 8
  %30 = load i16, i16* %14, align 2
  %31 = load i16, i16* %15, align 2
  %32 = load i16, i16* %16, align 2
  %33 = load i16, i16* %17, align 2
  %34 = load i16, i16* %18, align 2
  %35 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %29, i16 signext %30, i16 signext %31, i16 signext %32, i16 signext %33, i16 zeroext %34, i32 %36)
  %38 = load %struct.rawfb_context*, %struct.rawfb_context** %11, align 8
  %39 = load i16, i16* %16, align 2
  %40 = load i16, i16* %17, align 2
  %41 = load i16, i16* %12, align 2
  %42 = load i16, i16* %13, align 2
  %43 = load i16, i16* %18, align 2
  %44 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %38, i16 signext %39, i16 signext %40, i16 signext %41, i16 signext %42, i16 zeroext %43, i32 %45)
  ret void
}

declare dso_local i32 @nk_rawfb_stroke_line(%struct.rawfb_context*, i16 signext, i16 signext, i16 signext, i16 signext, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
