; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_stroke_polygon.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_stroke_polygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.nk_vec2i = type { i32, i32 }
%struct.nk_color = type { i32 }

@gdip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nk_vec2i*, i32, i16, i32)* @nk_gdip_stroke_polygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdip_stroke_polygon(%struct.nk_vec2i* %0, i32 %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.nk_color, align 4
  %6 = alloca %struct.nk_vec2i*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  store i32 %3, i32* %10, align 4
  store %struct.nk_vec2i* %0, %struct.nk_vec2i** %6, align 8
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %12 = load i16, i16* %8, align 2
  %13 = zext i16 %12 to i32
  %14 = call i32 @GdipSetPenWidth(i32 %11, i32 %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %16 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @convert_color(i32 %17)
  %19 = call i32 @GdipSetPenColor(i32 %15, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %86

22:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %57, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %30 = load %struct.nk_vec2i*, %struct.nk_vec2i** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %30, i64 %33
  %35 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nk_vec2i*, %struct.nk_vec2i** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %37, i64 %40
  %42 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nk_vec2i*, %struct.nk_vec2i** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %44, i64 %46
  %48 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nk_vec2i*, %struct.nk_vec2i** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %50, i64 %52
  %54 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @GdipDrawLineI(i32 %28, i32 %29, i32 %36, i32 %43, i32 %49, i32 %55)
  br label %57

57:                                               ; preds = %27
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %23

60:                                               ; preds = %23
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %63 = load %struct.nk_vec2i*, %struct.nk_vec2i** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %63, i64 %66
  %68 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nk_vec2i*, %struct.nk_vec2i** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %70, i64 %73
  %75 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nk_vec2i*, %struct.nk_vec2i** %6, align 8
  %78 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %77, i64 0
  %79 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nk_vec2i*, %struct.nk_vec2i** %6, align 8
  %82 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %81, i64 0
  %83 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @GdipDrawLineI(i32 %61, i32 %62, i32 %69, i32 %76, i32 %80, i32 %84)
  br label %86

86:                                               ; preds = %60, %4
  ret void
}

declare dso_local i32 @GdipSetPenWidth(i32, i32) #1

declare dso_local i32 @GdipSetPenColor(i32, i32) #1

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @GdipDrawLineI(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
