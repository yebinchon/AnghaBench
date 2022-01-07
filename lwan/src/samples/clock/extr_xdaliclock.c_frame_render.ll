; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/clock/extr_xdaliclock.c_frame_render.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/clock/extr_xdaliclock.c_frame_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdaliclock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.frame = type { %struct.scanline* }
%struct.scanline = type { i32*, i32* }

@char_height = common dso_local global i32 0, align 4
@MAX_SEGS_PER_LINE = common dso_local global i32 0, align 4
@BACKGROUND = common dso_local global i32 0, align 4
@FOREGROUND = common dso_local global i32 0, align 4
@char_width = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdaliclock*, %struct.frame*, i32)* @frame_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frame_render(%struct.xdaliclock* %0, %struct.frame* %1, i32 %2) #0 {
  %4 = alloca %struct.xdaliclock*, align 8
  %5 = alloca %struct.frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scanline*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xdaliclock* %0, %struct.xdaliclock** %4, align 8
  store %struct.frame* %1, %struct.frame** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %154, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @char_height, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %157

15:                                               ; preds = %11
  %16 = load %struct.frame*, %struct.frame** %5, align 8
  %17 = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 0
  %18 = load %struct.scanline*, %struct.scanline** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.scanline, %struct.scanline* %18, i64 %20
  store %struct.scanline* %21, %struct.scanline** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %79

22:                                               ; No predecessors!
  br label %23

23:                                               ; preds = %135, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @MAX_SEGS_PER_LINE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %138

27:                                               ; preds = %23
  %28 = load %struct.scanline*, %struct.scanline** %8, align 8
  %29 = getelementptr inbounds %struct.scanline, %struct.scanline* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.scanline*, %struct.scanline** %8, align 8
  %36 = getelementptr inbounds %struct.scanline, %struct.scanline* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %34, %41
  br i1 %42, label %77, label %43

43:                                               ; preds = %27
  %44 = load %struct.scanline*, %struct.scanline** %8, align 8
  %45 = getelementptr inbounds %struct.scanline, %struct.scanline* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.scanline*, %struct.scanline** %8, align 8
  %52 = getelementptr inbounds %struct.scanline, %struct.scanline* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %50, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %43
  %61 = load %struct.scanline*, %struct.scanline** %8, align 8
  %62 = getelementptr inbounds %struct.scanline, %struct.scanline* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.scanline*, %struct.scanline** %8, align 8
  %69 = getelementptr inbounds %struct.scanline, %struct.scanline* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %67, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %60, %27
  br label %135

78:                                               ; preds = %60, %43
  br label %79

79:                                               ; preds = %78, %15
  %80 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.scanline*, %struct.scanline** %8, align 8
  %86 = getelementptr inbounds %struct.scanline, %struct.scanline* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %84, %91
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %95 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BACKGROUND, align 4
  %100 = call i32 @draw_horizontal_line(%struct.xdaliclock* %80, i32 %83, i32 %92, i32 %93, i32 %98, i32 %99)
  %101 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.scanline*, %struct.scanline** %8, align 8
  %104 = getelementptr inbounds %struct.scanline, %struct.scanline* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %102, %109
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.scanline*, %struct.scanline** %8, align 8
  %113 = getelementptr inbounds %struct.scanline, %struct.scanline* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %111, %118
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %122 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @FOREGROUND, align 4
  %127 = call i32 @draw_horizontal_line(%struct.xdaliclock* %101, i32 %110, i32 %119, i32 %120, i32 %125, i32 %126)
  %128 = load %struct.scanline*, %struct.scanline** %8, align 8
  %129 = getelementptr inbounds %struct.scanline, %struct.scanline* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %79, %77
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %23

138:                                              ; preds = %23
  %139 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @char_width, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %148 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @BACKGROUND, align 4
  %153 = call i32 @draw_horizontal_line(%struct.xdaliclock* %139, i32 %142, i32 %145, i32 %146, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %138
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %11

157:                                              ; preds = %11
  ret void
}

declare dso_local i32 @draw_horizontal_line(%struct.xdaliclock*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
