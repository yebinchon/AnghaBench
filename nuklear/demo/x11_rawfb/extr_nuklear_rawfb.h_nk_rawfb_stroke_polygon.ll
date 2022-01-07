; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_polygon.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_polygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { i32 }
%struct.nk_vec2i = type { i32, i32 }
%struct.nk_color = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, %struct.nk_vec2i*, i32, i16, i32)* @nk_rawfb_stroke_polygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_stroke_polygon(%struct.rawfb_context* %0, %struct.nk_vec2i* %1, i32 %2, i16 zeroext %3, i32 %4) #0 {
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
  store i32 1, i32* %11, align 4
  br label %13

13:                                               ; preds = %49, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %19 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %19, i64 %22
  %24 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %26, i64 %29
  %31 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %33, i64 %35
  %37 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %39, i64 %41
  %43 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i16, i16* %10, align 2
  %46 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %18, i32 %25, i32 %32, i32 %38, i32 %44, i16 zeroext %45, i32 %47)
  br label %49

49:                                               ; preds = %17
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %13

52:                                               ; preds = %13
  %53 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %54 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %54, i64 %57
  %59 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %61, i64 %64
  %66 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %69 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %68, i64 0
  %70 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %73 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %72, i64 0
  %74 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i16, i16* %10, align 2
  %77 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %53, i32 %60, i32 %67, i32 %71, i32 %75, i16 zeroext %76, i32 %78)
  ret void
}

declare dso_local i32 @nk_rawfb_stroke_line(%struct.rawfb_context*, i32, i32, i32, i32, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
