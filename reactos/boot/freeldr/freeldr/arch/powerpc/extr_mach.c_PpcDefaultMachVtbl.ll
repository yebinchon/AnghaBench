; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_mach.c_PpcDefaultMachVtbl.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_mach.c_PpcDefaultMachVtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PpcOfwPutChar = common dso_local global i32 0, align 4
@MachVtbl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PpcConsKbHit = common dso_local global i32 0, align 4
@PpcConsGetCh = common dso_local global i32 0, align 4
@PpcVideoClearScreen = common dso_local global i32 0, align 4
@PpcVideoSetDisplayMode = common dso_local global i32 0, align 4
@PpcVideoGetDisplaySize = common dso_local global i32 0, align 4
@PpcVideoGetBufferSize = common dso_local global i32 0, align 4
@PpcVideoSetTextCursorPosition = common dso_local global i32 0, align 4
@PpcVideoHideShowTextCursor = common dso_local global i32 0, align 4
@PpcVideoPutChar = common dso_local global i32 0, align 4
@PpcVideoCopyOffScreenBufferToVRAM = common dso_local global i32 0, align 4
@PpcVideoIsPaletteFixed = common dso_local global i32 0, align 4
@PpcVideoSetPaletteColor = common dso_local global i32 0, align 4
@PpcVideoGetPaletteColor = common dso_local global i32 0, align 4
@PpcVideoSync = common dso_local global i32 0, align 4
@PpcGetMemoryMap = common dso_local global i32 0, align 4
@PpcDiskReadLogicalSectors = common dso_local global i32 0, align 4
@PpcDiskGetDriveGeometry = common dso_local global i32 0, align 4
@PpcDiskGetCacheableBlockCount = common dso_local global i32 0, align 4
@PpcGetTime = common dso_local global i32 0, align 4
@PpcHwDetect = common dso_local global i32 0, align 4
@PpcHwIdle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PpcDefaultMachVtbl() #0 {
  %1 = load i32, i32* @PpcOfwPutChar, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 21), align 4
  %2 = load i32, i32* @PpcConsKbHit, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 20), align 4
  %3 = load i32, i32* @PpcConsGetCh, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 19), align 4
  %4 = load i32, i32* @PpcVideoClearScreen, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 18), align 4
  %5 = load i32, i32* @PpcVideoSetDisplayMode, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 17), align 4
  %6 = load i32, i32* @PpcVideoGetDisplaySize, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 16), align 4
  %7 = load i32, i32* @PpcVideoGetBufferSize, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 15), align 4
  %8 = load i32, i32* @PpcVideoSetTextCursorPosition, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 14), align 4
  %9 = load i32, i32* @PpcVideoHideShowTextCursor, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 13), align 4
  %10 = load i32, i32* @PpcVideoPutChar, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 12), align 4
  %11 = load i32, i32* @PpcVideoCopyOffScreenBufferToVRAM, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 11), align 4
  %12 = load i32, i32* @PpcVideoIsPaletteFixed, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 10), align 4
  %13 = load i32, i32* @PpcVideoSetPaletteColor, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 9), align 4
  %14 = load i32, i32* @PpcVideoGetPaletteColor, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 8), align 4
  %15 = load i32, i32* @PpcVideoSync, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 7), align 4
  %16 = load i32, i32* @PpcGetMemoryMap, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 6), align 4
  %17 = load i32, i32* @PpcDiskReadLogicalSectors, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 5), align 4
  %18 = load i32, i32* @PpcDiskGetDriveGeometry, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 4), align 4
  %19 = load i32, i32* @PpcDiskGetCacheableBlockCount, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 3), align 4
  %20 = load i32, i32* @PpcGetTime, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 2), align 4
  %21 = load i32, i32* @PpcHwDetect, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 1), align 4
  %22 = load i32, i32* @PpcHwIdle, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 0), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
