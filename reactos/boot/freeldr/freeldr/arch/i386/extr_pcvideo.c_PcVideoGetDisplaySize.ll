; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcvideo.c_PcVideoGetDisplaySize.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcvideo.c_PcVideoGetDisplaySize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ScreenWidth = common dso_local global i32 0, align 4
@ScreenHeight = common dso_local global i32 0, align 4
@VideoGraphicsMode = common dso_local global i64 0, align 8
@DisplayMode = common dso_local global i64 0, align 8
@VesaVideoMode = common dso_local global i64 0, align 8
@VesaVideoModeInformation = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PcVideoGetDisplaySize(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* @ScreenWidth, align 4
  %9 = load i32*, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @ScreenHeight, align 4
  %11 = load i32*, i32** %6, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i64, i64* @VideoGraphicsMode, align 8
  %13 = load i64, i64* @DisplayMode, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load i64, i64* @VesaVideoMode, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VesaVideoModeInformation, i32 0, i32 0), align 4
  %20 = icmp eq i32 16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VesaVideoModeInformation, i32 0, i32 1), align 4
  %23 = icmp eq i32 6, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 16, i32 15
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %30

27:                                               ; preds = %18
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VesaVideoModeInformation, i32 0, i32 0), align 4
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %21
  br label %33

31:                                               ; preds = %15, %3
  %32 = load i32*, i32** %7, align 8
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
