; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcmem.c_PcMemGetMemoryMap.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcmem.c_PcMemGetMemoryMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"PcMemGetMemoryMap()\0A\00", align 1
@PcMemoryMap = common dso_local global i32 0, align 4
@MAX_BIOS_DESCRIPTORS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@LoaderFree = common dso_local global i32 0, align 4
@PcMapCount = common dso_local global i32 0, align 4
@LoaderFirmwarePermanent = common dso_local global i32 0, align 4
@LoaderSpecialMemory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PcMemGetMemoryMap(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (...) @PcMemCheckUsableMemorySize()
  %10 = load i32, i32* @PcMemoryMap, align 4
  %11 = load i32, i32* @MAX_BIOS_DESCRIPTORS, align 4
  %12 = call i64 @PcMemGetBiosMemoryMap(i32 %10, i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %1
  %16 = call i32 @GetExtendedMemoryConfiguration(i64* %4, i64* %5)
  %17 = load i32, i32* @PcMemoryMap, align 4
  %18 = load i32, i32* @MAX_BIOS_DESCRIPTORS, align 4
  %19 = call i32 (...) @PcMemGetConventionalMemorySize()
  %20 = mul nsw i32 %19, 1024
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = sdiv i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = load i32, i32* @LoaderFree, align 4
  %25 = call i32 @AddMemoryDescriptor(i32 %17, i32 %18, i64 0, i64 %23, i32 %24)
  %26 = load i32, i32* @PcMemoryMap, align 4
  %27 = load i32, i32* @MAX_BIOS_DESCRIPTORS, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = sdiv i32 1048576, %28
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %4, align 8
  %32 = mul nsw i64 %31, 1024
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = sdiv i64 %32, %34
  %36 = load i32, i32* @LoaderFree, align 4
  %37 = call i32 @AddMemoryDescriptor(i32 %26, i32 %27, i64 %30, i64 %35, i32 %36)
  store i32 %37, i32* @PcMapCount, align 4
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %15
  %41 = load i32, i32* @PcMemoryMap, align 4
  %42 = load i32, i32* @MAX_BIOS_DESCRIPTORS, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = sdiv i32 16777216, %43
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %5, align 8
  %47 = mul nsw i64 %46, 64
  %48 = mul nsw i64 %47, 1024
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = sdiv i64 %48, %50
  %52 = load i32, i32* @LoaderFree, align 4
  %53 = call i32 @AddMemoryDescriptor(i32 %41, i32 %42, i64 %45, i64 %51, i32 %52)
  store i32 %53, i32* @PcMapCount, align 4
  br label %54

54:                                               ; preds = %40, %15
  %55 = call i64 @GetEbdaLocation(i64* %6, i64* %7)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i32, i32* @PcMemoryMap, align 4
  %59 = load i32, i32* @MAX_BIOS_DESCRIPTORS, align 4
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = sdiv i64 %60, %62
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @ADDRESS_AND_SIZE_TO_SPAN_PAGES(i64 %64, i64 %65)
  %67 = load i32, i32* @LoaderFirmwarePermanent, align 4
  %68 = call i32 @AddMemoryDescriptor(i32 %58, i32 %59, i64 %63, i64 %66, i32 %67)
  store i32 %68, i32* @PcMapCount, align 4
  br label %69

69:                                               ; preds = %57, %54
  br label %70

70:                                               ; preds = %69, %1
  %71 = load i32, i32* @PcMemoryMap, align 4
  %72 = load i32, i32* @LoaderFirmwarePermanent, align 4
  %73 = call i32 @SetMemory(i32 %71, i32 0, i32 4096, i32 %72)
  %74 = load i32, i32* @PcMemoryMap, align 4
  %75 = load i32, i32* @LoaderFirmwarePermanent, align 4
  %76 = call i32 @SetMemory(i32 %74, i32 655360, i32 327680, i32 %75)
  %77 = load i32, i32* @PcMemoryMap, align 4
  %78 = load i32, i32* @LoaderSpecialMemory, align 4
  %79 = call i32 @SetMemory(i32 %77, i32 983040, i32 65536, i32 %78)
  %80 = load i32, i32* @PcMemoryMap, align 4
  %81 = load i32, i32* @LoaderSpecialMemory, align 4
  %82 = call i32 @SetMemory(i32 %80, i32 16773120, i32 4096, i32 %81)
  %83 = load i32, i32* @PcMemoryMap, align 4
  %84 = call i64 @PcMemFinalizeMemoryMap(i32 %83)
  %85 = load i64*, i64** %2, align 8
  store i64 %84, i64* %85, align 8
  %86 = load i32, i32* @PcMemoryMap, align 4
  ret i32 %86
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @PcMemCheckUsableMemorySize(...) #1

declare dso_local i64 @PcMemGetBiosMemoryMap(i32, i32) #1

declare dso_local i32 @GetExtendedMemoryConfiguration(i64*, i64*) #1

declare dso_local i32 @AddMemoryDescriptor(i32, i32, i64, i64, i32) #1

declare dso_local i32 @PcMemGetConventionalMemorySize(...) #1

declare dso_local i64 @GetEbdaLocation(i64*, i64*) #1

declare dso_local i64 @ADDRESS_AND_SIZE_TO_SPAN_PAGES(i64, i64) #1

declare dso_local i32 @SetMemory(i32, i32, i32, i32) #1

declare dso_local i64 @PcMemFinalizeMemoryMap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
