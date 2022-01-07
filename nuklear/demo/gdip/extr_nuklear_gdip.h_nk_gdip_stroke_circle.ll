; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_stroke_circle.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_stroke_circle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.nk_color = type { i32 }

@gdip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i16, i16, i16, i16, i32)* @nk_gdip_stroke_circle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdip_stroke_circle(i16 signext %0, i16 signext %1, i16 zeroext %2, i16 zeroext %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca %struct.nk_color, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %7, i32 0, i32 0
  store i32 %5, i32* %13, align 4
  store i16 %0, i16* %8, align 2
  store i16 %1, i16* %9, align 2
  store i16 %2, i16* %10, align 2
  store i16 %3, i16* %11, align 2
  store i16 %4, i16* %12, align 2
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %15 = load i16, i16* %12, align 2
  %16 = zext i16 %15 to i32
  %17 = call i32 @GdipSetPenWidth(i32 %14, i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %19 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @convert_color(i32 %20)
  %22 = call i32 @GdipSetPenColor(i32 %18, i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %25 = load i16, i16* %8, align 2
  %26 = load i16, i16* %9, align 2
  %27 = load i16, i16* %10, align 2
  %28 = load i16, i16* %11, align 2
  %29 = call i32 @GdipDrawEllipseI(i32 %23, i32 %24, i16 signext %25, i16 signext %26, i16 zeroext %27, i16 zeroext %28)
  ret void
}

declare dso_local i32 @GdipSetPenWidth(i32, i32) #1

declare dso_local i32 @GdipSetPenColor(i32, i32) #1

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @GdipDrawEllipseI(i32, i32, i16 signext, i16 signext, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
