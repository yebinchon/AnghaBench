; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/fatfs/src/drivers/extr_sd_diskio.c_sd_disk_write.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/fatfs/src/drivers/extr_sd_diskio.c_sd_disk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@RES_ERROR = common dso_local global i32 0, align 4
@sd_disk_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@STA_NOINIT = common dso_local global i32 0, align 4
@RES_NOTRDY = common dso_local global i32 0, align 4
@CARD_CAP_CLASS_SDSC = common dso_local global i64 0, align 8
@SD_SECTOR_SIZE = common dso_local global i32 0, align 4
@SDHOST_BASE = common dso_local global i32 0, align 4
@CMD_WRITE_SINGLE_BLK = common dso_local global i32 0, align 4
@SDHOST_INT_TC = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i32 0, align 4
@CARD_TYPE_SDCARD = common dso_local global i64 0, align 8
@CMD_APP_CMD = common dso_local global i32 0, align 4
@CMD_SET_BLK_CNT = common dso_local global i32 0, align 4
@CMD_WRITE_MULTI_BLK = common dso_local global i32 0, align 4
@CMD_STOP_TRANS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_disk_write(i32* %0, i32 %1, i32 %2) #0 {
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
  br i1 %12, label %13, label %123

13:                                               ; preds = %3
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sd_disk_info, i32 0, i32 0), align 8
  %15 = load i32, i32* @STA_NOINIT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @RES_NOTRDY, align 4
  store i32 %19, i32* %4, align 4
  br label %125

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
  br i1 %38, label %39, label %69

39:                                               ; preds = %28
  %40 = load i32, i32* @CMD_WRITE_SINGLE_BLK, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @CardSendCmd(i32 %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %9, align 8
  %48 = icmp ne i64 %46, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32, i32* @SDHOST_BASE, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = bitcast i32* %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @MAP_SDHostDataWrite(i32 %50, i64 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32* %56, i32** %5, align 8
  br label %45

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %65, %57
  %59 = load i32, i32* @SDHOST_BASE, align 4
  %60 = call i32 @MAP_SDHostIntStatus(i32 %59)
  %61 = load i32, i32* @SDHOST_INT_TC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %58

66:                                               ; preds = %58
  %67 = load i32, i32* @RES_OK, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %66, %39
  br label %122

69:                                               ; preds = %28
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sd_disk_info, i32 0, i32 2), align 8
  %71 = load i64, i64* @CARD_TYPE_SDCARD, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i32, i32* @CMD_APP_CMD, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sd_disk_info, i32 0, i32 3), align 8
  %76 = shl i32 %75, 16
  %77 = call i64 @CardSendCmd(i32 %74, i32 %76)
  %78 = load i32, i32* @CMD_SET_BLK_CNT, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @CardSendCmd(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %73, %69
  %82 = load i32, i32* @CMD_WRITE_MULTI_BLK, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @CardSendCmd(i32 %82, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %121

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %91, %86
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, -1
  store i64 %89, i64* %9, align 8
  %90 = icmp ne i64 %88, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i32, i32* @SDHOST_BASE, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = bitcast i32* %93 to i64*
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @MAP_SDHostDataWrite(i32 %92, i64 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  store i32* %98, i32** %5, align 8
  br label %87

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %107, %99
  %101 = load i32, i32* @SDHOST_BASE, align 4
  %102 = call i32 @MAP_SDHostIntStatus(i32 %101)
  %103 = load i32, i32* @SDHOST_INT_TC, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %100

108:                                              ; preds = %100
  %109 = load i32, i32* @CMD_STOP_TRANS, align 4
  %110 = call i64 @CardSendCmd(i32 %109, i32 0)
  br label %111

111:                                              ; preds = %118, %108
  %112 = load i32, i32* @SDHOST_BASE, align 4
  %113 = call i32 @MAP_SDHostIntStatus(i32 %112)
  %114 = load i32, i32* @SDHOST_INT_TC, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %111

119:                                              ; preds = %111
  %120 = load i32, i32* @RES_OK, align 4
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %119, %81
  br label %122

122:                                              ; preds = %121, %68
  br label %123

123:                                              ; preds = %122, %3
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %123, %18
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @MAP_SDHostBlockCountSet(i32, i32) #1

declare dso_local i64 @CardSendCmd(i32, i32) #1

declare dso_local i32 @MAP_SDHostDataWrite(i32, i64) #1

declare dso_local i32 @MAP_SDHostIntStatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
