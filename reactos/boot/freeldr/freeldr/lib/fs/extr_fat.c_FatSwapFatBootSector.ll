; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatSwapFatBootSector.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatSwapFatBootSector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BytesPerSector = common dso_local global i32 0, align 4
@ReservedSectors = common dso_local global i32 0, align 4
@RootDirEntries = common dso_local global i32 0, align 4
@TotalSectors = common dso_local global i32 0, align 4
@SectorsPerFat = common dso_local global i32 0, align 4
@SectorsPerTrack = common dso_local global i32 0, align 4
@NumberOfHeads = common dso_local global i32 0, align 4
@HiddenSectors = common dso_local global i32 0, align 4
@TotalSectorsBig = common dso_local global i32 0, align 4
@VolumeSerialNumber = common dso_local global i32 0, align 4
@BootSectorMagic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FatSwapFatBootSector(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @BytesPerSector, align 4
  %6 = call i32 @SW(i32 %4, i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ReservedSectors, align 4
  %9 = call i32 @SW(i32 %7, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @RootDirEntries, align 4
  %12 = call i32 @SW(i32 %10, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @TotalSectors, align 4
  %15 = call i32 @SW(i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SectorsPerFat, align 4
  %18 = call i32 @SW(i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SectorsPerTrack, align 4
  %21 = call i32 @SW(i32 %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @NumberOfHeads, align 4
  %24 = call i32 @SW(i32 %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @HiddenSectors, align 4
  %27 = call i32 @SD(i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @TotalSectorsBig, align 4
  %30 = call i32 @SD(i32 %28, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @VolumeSerialNumber, align 4
  %33 = call i32 @SD(i32 %31, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @BootSectorMagic, align 4
  %36 = call i32 @SW(i32 %34, i32 %35)
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @SW(i32, i32) #1

declare dso_local i32 @SD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
