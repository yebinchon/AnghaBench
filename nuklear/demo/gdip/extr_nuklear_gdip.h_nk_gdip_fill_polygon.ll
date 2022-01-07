; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_fill_polygon.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_fill_polygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.nk_vec2i = type { i32, i32 }
%struct.nk_color = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@gdip = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@FillModeAlternate = common dso_local global i32 0, align 4
@MAX_POINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nk_vec2i*, i32, i32)* @nk_gdip_fill_polygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdip_fill_polygon(%struct.nk_vec2i* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nk_color, align 4
  %5 = alloca %struct.nk_vec2i*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x %struct.TYPE_4__], align 16
  %9 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %4, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store %struct.nk_vec2i* %0, %struct.nk_vec2i** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdip, i32 0, i32 0), align 4
  %11 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @convert_color(i32 %12)
  %14 = call i32 @GdipSetSolidFillColor(i32 %10, i32 %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %45, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 64
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i1 [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %48

24:                                               ; preds = %22
  %25 = load %struct.nk_vec2i*, %struct.nk_vec2i** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %25, i64 %27
  %29 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [64 x %struct.TYPE_4__], [64 x %struct.TYPE_4__]* %8, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 4
  %35 = load %struct.nk_vec2i*, %struct.nk_vec2i** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %35, i64 %37
  %39 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [64 x %struct.TYPE_4__], [64 x %struct.TYPE_4__]* %8, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  br label %45

45:                                               ; preds = %24
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %15

48:                                               ; preds = %22
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdip, i32 0, i32 1), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdip, i32 0, i32 0), align 4
  %51 = getelementptr inbounds [64 x %struct.TYPE_4__], [64 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @FillModeAlternate, align 4
  %54 = call i32 @GdipFillPolygonI(i32 %49, i32 %50, %struct.TYPE_4__* %51, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @GdipSetSolidFillColor(i32, i32) #1

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @GdipFillPolygonI(i32, i32, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
