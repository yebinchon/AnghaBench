; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_fill_polygon.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_fill_polygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_vec2i = type { i32, i32 }
%struct.nk_color = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MAX_POINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nk_vec2i*, i32, i32)* @nk_gdi_fill_polygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_fill_polygon(i32 %0, %struct.nk_vec2i* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nk_color, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nk_vec2i*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [64 x %struct.TYPE_3__], align 16
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  store i32 %3, i32* %12, align 4
  store i32 %0, i32* %6, align 4
  store %struct.nk_vec2i* %1, %struct.nk_vec2i** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @convert_color(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @SetDCBrushColor(i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @SetDCPenColor(i32 %19, i32 %20)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %52, %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 64
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i1 [ false, %22 ], [ %28, %26 ]
  br i1 %30, label %31, label %55

31:                                               ; preds = %29
  %32 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %32, i64 %34
  %36 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [64 x %struct.TYPE_3__], [64 x %struct.TYPE_3__]* %10, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %42, i64 %44
  %46 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [64 x %struct.TYPE_3__], [64 x %struct.TYPE_3__]* %10, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  br label %52

52:                                               ; preds = %31
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %22

55:                                               ; preds = %29
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds [64 x %struct.TYPE_3__], [64 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @Polygon(i32 %56, %struct.TYPE_3__* %57, i32 %58)
  ret void
}

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @SetDCBrushColor(i32, i32) #1

declare dso_local i32 @SetDCPenColor(i32, i32) #1

declare dso_local i32 @Polygon(i32, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
