; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_prep.c_PpcPrepInit.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_prep.c_PpcPrepInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PpcPrepPutChar = common dso_local global i32 0, align 4
@MachVtbl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"Serial on\0A\00", align 1
@ide1_desc = common dso_local global i32 0, align 4
@PpcPrepDiskReadLogicalSectors = common dso_local global i32 0, align 4
@PpcPrepConsKbHit = common dso_local global i32 0, align 4
@PpcPrepConsGetCh = common dso_local global i32 0, align 4
@PpcPrepVideoClearScreen = common dso_local global i32 0, align 4
@PpcPrepVideoSetDisplayMode = common dso_local global i32 0, align 4
@PpcPrepVideoGetDisplaySize = common dso_local global i32 0, align 4
@PpcPrepGetMemoryMap = common dso_local global i32 0, align 4
@PpcPrepHwDetect = common dso_local global i32 0, align 4
@PcPrepHwIdle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"FreeLDR version [%s]\0A\00", align 1
@FrLdrVersionString = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PpcPrepInit() #0 {
  %1 = load i32, i32* @PpcPrepPutChar, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 9), align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @ide_setup(i32* @ide1_desc)
  %4 = load i32, i32* @PpcPrepDiskReadLogicalSectors, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 8), align 4
  %5 = load i32, i32* @PpcPrepConsKbHit, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 7), align 4
  %6 = load i32, i32* @PpcPrepConsGetCh, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 6), align 4
  %7 = load i32, i32* @PpcPrepVideoClearScreen, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 5), align 4
  %8 = load i32, i32* @PpcPrepVideoSetDisplayMode, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 4), align 4
  %9 = load i32, i32* @PpcPrepVideoGetDisplaySize, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 3), align 4
  %10 = load i32, i32* @PpcPrepGetMemoryMap, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 2), align 4
  %11 = load i32, i32* @PpcPrepHwDetect, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 1), align 4
  %12 = load i32, i32* @PcPrepHwIdle, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MachVtbl, i32 0, i32 0), align 4
  %13 = load i8*, i8** @FrLdrVersionString, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = call i32 @BootMain(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ide_setup(i32*) #1

declare dso_local i32 @BootMain(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
