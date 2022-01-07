; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs.c_myspiffs_set_cfg.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs.c_myspiffs_set_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i32, i32, i32 }

@NODEMCU_SPIFFS0_PARTITION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@my_spiffs_read = common dso_local global i32 0, align 4
@my_spiffs_write = common dso_local global i32 0, align 4
@my_spiffs_erase = common dso_local global i32 0, align 4
@INTERNAL_FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4
@LOG_PAGE_SIZE = common dso_local global i32 0, align 4
@ALIGN = common dso_local global i64 0, align 8
@MIN_BLOCKS_FS = common dso_local global i32 0, align 4
@LOG_BLOCK_SIZE_SMALL_FS = common dso_local global i32 0, align 4
@LOG_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"myspiffs set cfg block: %x  %x  %x  %x  %x  %x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @myspiffs_set_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myspiffs_set_cfg(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @NODEMCU_SPIFFS0_PARTITION, align 4
  %10 = call i64 @platform_flash_get_partition(i32 %9, i64* %6)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %99

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %8, align 8
  %19 = load i32, i32* @my_spiffs_read, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @my_spiffs_write, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @my_spiffs_erase, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @INTERNAL_FLASH_SECTOR_SIZE, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @LOG_PAGE_SIZE, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @ALIGN, align 8
  %36 = add nsw i64 %34, %35
  %37 = sub nsw i64 %36, 1
  %38 = load i64, i64* @ALIGN, align 8
  %39 = sub nsw i64 %38, 1
  %40 = xor i64 %39, -1
  %41 = and i64 %37, %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @ALIGN, align 8
  %46 = sub nsw i64 %45, 1
  %47 = xor i64 %46, -1
  %48 = and i64 %44, %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MIN_BLOCKS_FS, align 4
  %60 = load i32, i32* @LOG_BLOCK_SIZE_SMALL_FS, align 4
  %61 = mul nsw i32 %59, %60
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %15
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %99

65:                                               ; preds = %15
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MIN_BLOCKS_FS, align 4
  %70 = load i32, i32* @LOG_BLOCK_SIZE_SMALL_FS, align 4
  %71 = mul nsw i32 %69, %70
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* @LOG_BLOCK_SIZE_SMALL_FS, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %81

77:                                               ; preds = %65
  %78 = load i32, i32* @LOG_BLOCK_SIZE, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, i64, ...) @NODE_DBG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %83, i64 %84, i32 %87, i64 %90, i32 %93, i32 %96)
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %82, %63, %13
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @platform_flash_get_partition(i32, i64*) #1

declare dso_local i32 @NODE_DBG(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
