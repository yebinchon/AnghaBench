; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcmem.c_PcMemFinalizeMemoryMap.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcmem.c_PcMemFinalizeMemoryMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }

@STACKLOW = common dso_local global i32 0, align 4
@LoaderFirmwareTemporary = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"BIOS area\00", align 1
@STACKADDR = common dso_local global i64 0, align 8
@LoaderOsloaderStack = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"FreeLdr stack\00", align 1
@FREELDR_BASE = common dso_local global i32 0, align 4
@FrLdrImageSize = common dso_local global i64 0, align 8
@LoaderLoadedProgram = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"FreeLdr image\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@DiskReadBuffer = common dso_local global i64 0, align 8
@DiskReadBufferSize = common dso_local global i64 0, align 8
@PcMapCount = common dso_local global i64 0, align 8
@LoaderFree = common dso_local global i64 0, align 8
@MAX_DISKREADBUFFER_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"DiskReadBuffer=0x%p, DiskReadBufferSize=0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Disk read buffer\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Dumping resulting memory map:\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"BasePage=0x%lx, PageCount=0x%lx, Type=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcMemFinalizeMemoryMap(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = load i32, i32* @STACKLOW, align 4
  %6 = sub nsw i32 %5, 4096
  %7 = sext i32 %6 to i64
  %8 = load i32, i32* @LoaderFirmwareTemporary, align 4
  %9 = call i32 @ReserveMemory(%struct.TYPE_4__* %4, i32 4096, i64 %7, i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = load i32, i32* @STACKLOW, align 4
  %12 = load i64, i64* @STACKADDR, align 8
  %13 = load i32, i32* @STACKLOW, align 4
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %12, %14
  %16 = load i32, i32* @LoaderOsloaderStack, align 4
  %17 = call i32 @ReserveMemory(%struct.TYPE_4__* %10, i32 %11, i64 %15, i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = load i32, i32* @FREELDR_BASE, align 4
  %20 = load i64, i64* @FrLdrImageSize, align 8
  %21 = load i32, i32* @LoaderLoadedProgram, align 4
  %22 = call i32 @ReserveMemory(%struct.TYPE_4__* %18, i32 %19, i64 %20, i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @FREELDR_BASE, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @FrLdrImageSize, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i64 @ALIGN_UP_BY(i64 %26, i32 %27)
  store i64 %28, i64* @DiskReadBuffer, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* @DiskReadBufferSize, align 8
  store i64 0, i64* %3, align 8
  br label %31

31:                                               ; preds = %72, %1
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @PcMapCount, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FREELDR_BASE, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = sdiv i32 %41, %42
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %35
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LoaderFree, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %45
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  store i64 %61, i64* @DiskReadBuffer, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = load i64, i64* %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* @MAX_DISKREADBUFFER_SIZE, align 4
  %70 = call i64 @min(i32 %68, i32 %69)
  store i64 %70, i64* @DiskReadBufferSize, align 8
  br label %75

71:                                               ; preds = %45, %35
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %3, align 8
  br label %31

75:                                               ; preds = %53, %31
  %76 = load i64, i64* @DiskReadBuffer, align 8
  %77 = load i64, i64* @DiskReadBufferSize, align 8
  %78 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %76, i64 %77)
  %79 = load i64, i64* @DiskReadBufferSize, align 8
  %80 = icmp sgt i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %84 = load i64, i64* @DiskReadBuffer, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i64, i64* @DiskReadBufferSize, align 8
  %87 = load i32, i32* @LoaderFirmwareTemporary, align 4
  %88 = call i32 @ReserveMemory(%struct.TYPE_4__* %83, i32 %85, i64 %86, i32 %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %89 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %90

90:                                               ; preds = %112, %75
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* @PcMapCount, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %115

94:                                               ; preds = %90
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %96 = load i64, i64* %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %101 = load i64, i64* %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %106 = load i64, i64* %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @MmGetSystemMemoryMapTypeString(i64 %109)
  %111 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %99, i32 %104, i32 %110)
  br label %112

112:                                              ; preds = %94
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %3, align 8
  br label %90

115:                                              ; preds = %90
  %116 = load i64, i64* @PcMapCount, align 8
  ret i64 %116
}

declare dso_local i32 @ReserveMemory(%struct.TYPE_4__*, i32, i64, i32, i8*) #1

declare dso_local i64 @ALIGN_UP_BY(i64, i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MmGetSystemMemoryMapTypeString(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
