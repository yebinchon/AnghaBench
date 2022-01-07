; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/fatfs/src/drivers/extr_sd_diskio.c_sd_disk_read.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/fatfs/src/drivers/extr_sd_diskio.c_sd_disk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@RES_ERROR = common dso_local global i32 0, align 4
@sd_disk_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@STA_NOINIT = common dso_local global i32 0, align 4
@RES_NOTRDY = common dso_local global i32 0, align 4
@CARD_CAP_CLASS_SDSC = common dso_local global i64 0, align 8
@SD_SECTOR_SIZE = common dso_local global i32 0, align 4
@SDHOST_BASE = common dso_local global i32 0, align 4
@CMD_READ_SINGLE_BLK = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i32 0, align 4
@CMD_READ_MULTI_BLK = common dso_local global i32 0, align 4
@CMD_STOP_TRANS = common dso_local global i32 0, align 4
@SDHOST_INT_TC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_disk_read(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @RES_ERROR, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %91

13:                                               ; preds = %3
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sd_disk_info, i32 0, i32 0), align 8
  %15 = load i32, i32* @STA_NOINIT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @RES_NOTRDY, align 4
  store i32 %19, i32* %4, align 4
  br label %93

20:                                               ; preds = %13
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sd_disk_info, i32 0, i32 1), align 8
  %22 = load i64, i64* @CARD_CAP_CLASS_SDSC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SD_SECTOR_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @SDHOST_BASE, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @MAP_SDHostBlockCountSet(i32 %29, i32 %30)
  %32 = load i32, i32* @SD_SECTOR_SIZE, align 4
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sdiv i32 %34, 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %59

39:                                               ; preds = %28
  %40 = load i32, i32* @CMD_READ_SINGLE_BLK, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @CardSendCmd(i32 %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %9, align 8
  %48 = icmp ne i64 %46, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* @SDHOST_BASE, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = bitcast i32* %51 to i64*
  %53 = call i32 @MAP_SDHostDataRead(i32 %50, i64* %52)
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32* %55, i32** %5, align 8
  br label %45

56:                                               ; preds = %45
  %57 = load i32, i32* @RES_OK, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %56, %39
  br label %90

59:                                               ; preds = %28
  %60 = load i32, i32* @CMD_READ_MULTI_BLK, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @CardSendCmd(i32 %60, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %69, %64
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %9, align 8
  %68 = icmp ne i64 %66, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i32, i32* @SDHOST_BASE, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = bitcast i32* %71 to i64*
  %73 = call i32 @MAP_SDHostDataRead(i32 %70, i64* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  store i32* %75, i32** %5, align 8
  br label %65

76:                                               ; preds = %65
  %77 = load i32, i32* @CMD_STOP_TRANS, align 4
  %78 = call i64 @CardSendCmd(i32 %77, i32 0)
  br label %79

79:                                               ; preds = %86, %76
  %80 = load i32, i32* @SDHOST_BASE, align 4
  %81 = call i32 @MAP_SDHostIntStatus(i32 %80)
  %82 = load i32, i32* @SDHOST_INT_TC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %79

87:                                               ; preds = %79
  %88 = load i32, i32* @RES_OK, align 4
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %87, %59
  br label %90

90:                                               ; preds = %89, %58
  br label %91

91:                                               ; preds = %90, %3
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %18
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @MAP_SDHostBlockCountSet(i32, i32) #1

declare dso_local i64 @CardSendCmd(i32, i32) #1

declare dso_local i32 @MAP_SDHostDataRead(i32, i64*) #1

declare dso_local i32 @MAP_SDHostIntStatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
