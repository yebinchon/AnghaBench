; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_stroke_curve.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_stroke_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.nk_vec2i = type { i32, i32 }
%struct.nk_color = type { i32 }

@gdip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i16, i32)* @nk_gdip_stroke_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdip_stroke_curve(i64 %0, i64 %1, i64 %2, i64 %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca %struct.nk_vec2i, align 4
  %8 = alloca %struct.nk_vec2i, align 4
  %9 = alloca %struct.nk_vec2i, align 4
  %10 = alloca %struct.nk_vec2i, align 4
  %11 = alloca %struct.nk_color, align 4
  %12 = alloca i16, align 2
  %13 = bitcast %struct.nk_vec2i* %7 to i64*
  store i64 %0, i64* %13, align 4
  %14 = bitcast %struct.nk_vec2i* %8 to i64*
  store i64 %1, i64* %14, align 4
  %15 = bitcast %struct.nk_vec2i* %9 to i64*
  store i64 %2, i64* %15, align 4
  %16 = bitcast %struct.nk_vec2i* %10 to i64*
  store i64 %3, i64* %16, align 4
  %17 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %11, i32 0, i32 0
  store i32 %5, i32* %17, align 4
  store i16 %4, i16* %12, align 2
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %19 = load i16, i16* %12, align 2
  %20 = zext i16 %19 to i32
  %21 = call i32 @GdipSetPenWidth(i32 %18, i32 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %23 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %11, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @convert_color(i32 %24)
  %26 = call i32 @GdipSetPenColor(i32 %22, i32 %25)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %29 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %7, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %8, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %10, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @GdipDrawBezierI(i32 %27, i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38, i32 %40, i32 %42, i32 %44)
  ret void
}

declare dso_local i32 @GdipSetPenWidth(i32, i32) #1

declare dso_local i32 @GdipSetPenColor(i32, i32) #1

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @GdipDrawBezierI(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
