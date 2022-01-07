; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcvideo.c_PcVideoSetMode.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcvideo.c_PcVideoSetMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@CurrentMemoryBank = common dso_local global i64 0, align 8
@BiosVideoMode = common dso_local global i32 0, align 4
@ScreenWidth = common dso_local global i32 0, align 4
@ScreenHeight = common dso_local global i32 0, align 4
@BytesPerScanLine = common dso_local global i32 0, align 4
@VideoTextMode = common dso_local global i32 0, align 4
@DisplayMode = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VesaVideoMode = common dso_local global i32 0, align 4
@VideoGraphicsMode = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VesaVideoModeInformation = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @PcVideoSetMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PcVideoSetMode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 0, i64* @CurrentMemoryBank, align 8
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* @BiosVideoMode, align 4
  store i32 80, i32* @ScreenWidth, align 4
  store i32 25, i32* @ScreenHeight, align 4
  store i32 160, i32* @BytesPerScanLine, align 4
  %5 = load i32, i32* @VideoTextMode, align 4
  store i32 %5, i32* @DisplayMode, align 4
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* @VesaVideoMode, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %22 [
    i32 128, label %8
    i32 3, label %8
    i32 129, label %10
    i32 134, label %12
    i32 133, label %14
    i32 132, label %16
    i32 131, label %18
    i32 130, label %20
  ]

8:                                                ; preds = %1, %1
  %9 = call i32 (...) @PcVideoSetMode80x25()
  store i32 %9, i32* %2, align 4
  br label %87

10:                                               ; preds = %1
  %11 = call i32 (...) @PcVideoSetMode80x50_80x43()
  store i32 %11, i32* %2, align 4
  br label %87

12:                                               ; preds = %1
  %13 = call i32 (...) @PcVideoSetMode80x28()
  store i32 %13, i32* %2, align 4
  br label %87

14:                                               ; preds = %1
  %15 = call i32 (...) @PcVideoSetMode80x30()
  store i32 %15, i32* %2, align 4
  br label %87

16:                                               ; preds = %1
  %17 = call i32 (...) @PcVideoSetMode80x34()
  store i32 %17, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = call i32 (...) @PcVideoSetMode80x43()
  store i32 %19, i32* %2, align 4
  br label %87

20:                                               ; preds = %1
  %21 = call i32 (...) @PcVideoSetMode80x60()
  store i32 %21, i32* %2, align 4
  br label %87

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 18, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @PcVideoSetBiosMode(i32 %26)
  %28 = call i32 @WRITE_PORT_USHORT(i32* inttoptr (i64 974 to i32*), i32 3841)
  store i32 640, i32* @ScreenWidth, align 4
  store i32 480, i32* @ScreenHeight, align 4
  store i32 80, i32* @BytesPerScanLine, align 4
  %29 = load i32, i32* %3, align 4
  store i32 %29, i32* @BiosVideoMode, align 4
  %30 = load i32, i32* @VideoGraphicsMode, align 4
  store i32 %30, i32* @DisplayMode, align 4
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %2, align 4
  br label %87

32:                                               ; preds = %22
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 19, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @PcVideoSetBiosMode(i32 %36)
  store i32 320, i32* @ScreenWidth, align 4
  store i32 200, i32* @ScreenHeight, align 4
  store i32 320, i32* @BytesPerScanLine, align 4
  %38 = load i32, i32* %3, align 4
  store i32 %38, i32* @BiosVideoMode, align 4
  %39 = load i32, i32* @VideoGraphicsMode, align 4
  store i32 %39, i32* @DisplayMode, align 4
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %2, align 4
  br label %87

41:                                               ; preds = %32
  %42 = load i32, i32* %3, align 4
  %43 = icmp sle i32 264, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = icmp sle i32 %45, 268
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @PcVideoVesaGetSVGAModeInformation(i32 %48, %struct.TYPE_3__* @VesaVideoModeInformation)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %2, align 4
  br label %87

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @PcVideoSetBiosVesaMode(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %2, align 4
  br label %87

59:                                               ; preds = %53
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @VesaVideoModeInformation, i32 0, i32 0), align 4
  store i32 %60, i32* @ScreenWidth, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @VesaVideoModeInformation, i32 0, i32 1), align 4
  store i32 %61, i32* @ScreenHeight, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @VesaVideoModeInformation, i32 0, i32 2), align 4
  store i32 %62, i32* @BytesPerScanLine, align 4
  %63 = load i32, i32* %3, align 4
  store i32 %63, i32* @BiosVideoMode, align 4
  %64 = load i32, i32* @VideoTextMode, align 4
  store i32 %64, i32* @DisplayMode, align 4
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* @VesaVideoMode, align 4
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %2, align 4
  br label %87

67:                                               ; preds = %44, %41
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @PcVideoVesaGetSVGAModeInformation(i32 %68, %struct.TYPE_3__* @VesaVideoModeInformation)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %2, align 4
  br label %87

73:                                               ; preds = %67
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @PcVideoSetBiosVesaMode(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %2, align 4
  br label %87

79:                                               ; preds = %73
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @VesaVideoModeInformation, i32 0, i32 0), align 4
  store i32 %80, i32* @ScreenWidth, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @VesaVideoModeInformation, i32 0, i32 1), align 4
  store i32 %81, i32* @ScreenHeight, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @VesaVideoModeInformation, i32 0, i32 2), align 4
  store i32 %82, i32* @BytesPerScanLine, align 4
  %83 = load i32, i32* %3, align 4
  store i32 %83, i32* @BiosVideoMode, align 4
  %84 = load i32, i32* @VideoGraphicsMode, align 4
  store i32 %84, i32* @DisplayMode, align 4
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* @VesaVideoMode, align 4
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %79, %77, %71, %59, %57, %51, %35, %25, %20, %18, %16, %14, %12, %10, %8
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @PcVideoSetMode80x25(...) #1

declare dso_local i32 @PcVideoSetMode80x50_80x43(...) #1

declare dso_local i32 @PcVideoSetMode80x28(...) #1

declare dso_local i32 @PcVideoSetMode80x30(...) #1

declare dso_local i32 @PcVideoSetMode80x34(...) #1

declare dso_local i32 @PcVideoSetMode80x43(...) #1

declare dso_local i32 @PcVideoSetMode80x60(...) #1

declare dso_local i32 @PcVideoSetBiosMode(i32) #1

declare dso_local i32 @WRITE_PORT_USHORT(i32*, i32) #1

declare dso_local i32 @PcVideoVesaGetSVGAModeInformation(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @PcVideoSetBiosVesaMode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
