; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_polyline.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_polyline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { i32 }
%struct.nk_vec2i = type { i32, i32 }
%struct.nk_color = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, %struct.nk_vec2i*, i32, i16, i32)* @nk_rawfb_stroke_polyline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_stroke_polyline(%struct.rawfb_context* %0, %struct.nk_vec2i* %1, i32 %2, i16 zeroext %3, i32 %4) #0 {
  %6 = alloca %struct.nk_color, align 4
  %7 = alloca %struct.rawfb_context*, align 8
  %8 = alloca %struct.nk_vec2i*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %6, i32 0, i32 0
  store i32 %4, i32* %12, align 4
  store %struct.rawfb_context* %0, %struct.rawfb_context** %7, align 8
  store %struct.nk_vec2i* %1, %struct.nk_vec2i** %8, align 8
  store i32 %2, i32* %9, align 4
  store i16 %3, i16* %10, align 2
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %50, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %13
  %19 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %20 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %20, i64 %22
  %24 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %26, i64 %28
  %30 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %32, i64 %35
  %37 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %39, i64 %42
  %44 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i16, i16* %10, align 2
  %47 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %19, i32 %25, i32 %31, i32 %38, i32 %45, i16 zeroext %46, i32 %48)
  br label %50

50:                                               ; preds = %18
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %13

53:                                               ; preds = %13
  ret void
}

declare dso_local i32 @nk_rawfb_stroke_line(%struct.rawfb_context*, i32, i32, i32, i32, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
