; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/fatfs/src/drivers/extr_sd_diskio.c_sd_disk_init.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/fatfs/src/drivers/extr_sd_diskio.c_sd_disk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i8*, i32, i32 }

@sd_disk_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@STA_NODISK = common dso_local global i64 0, align 8
@CMD_GO_IDLE_STATE = common dso_local global i32 0, align 4
@CMD_SEND_IF_COND = common dso_local global i32 0, align 4
@SDHOST_BASE = common dso_local global i32 0, align 4
@CARD_VERSION_2 = common dso_local global i32 0, align 4
@CARD_TYPE_SDCARD = common dso_local global i8* null, align 8
@CMD_APP_CMD = common dso_local global i32 0, align 4
@CMD_SD_SEND_OP_COND = common dso_local global i32 0, align 4
@CARD_CAP_CLASS_SDHC = common dso_local global i32 0, align 4
@CMD_SEND_OP_COND = common dso_local global i32 0, align 4
@CARD_TYPE_MMC = common dso_local global i8* null, align 8
@CMD_ALL_SEND_CID = common dso_local global i32 0, align 4
@CMD_SEND_REL_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sd_disk_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [4 x i64], align 16
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sd_disk_info, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %109

5:                                                ; preds = %0
  %6 = load i64, i64* @STA_NODISK, align 8
  store i64 %6, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sd_disk_info, i32 0, i32 0), align 8
  %7 = load i32, i32* @CMD_GO_IDLE_STATE, align 4
  %8 = call i64 @CardSendCmd(i32 %7, i32 0)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %84

10:                                               ; preds = %5
  %11 = load i32, i32* @CMD_SEND_IF_COND, align 4
  %12 = call i64 @CardSendCmd(i32 %11, i32 421)
  store i64 %12, i64* %1, align 8
  %13 = load i32, i32* @SDHOST_BASE, align 4
  %14 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %15 = call i32 @MAP_SDHostRespGet(i32 %13, i64* %14)
  %16 = load i64, i64* %1, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %10
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %20 = load i64, i64* %19, align 16
  %21 = and i64 %20, 255
  %22 = icmp eq i64 %21, 165
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load i32, i32* @CARD_VERSION_2, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sd_disk_info, i32 0, i32 4), align 4
  %25 = load i8*, i8** @CARD_TYPE_SDCARD, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sd_disk_info, i32 0, i32 2), align 8
  br label %26

26:                                               ; preds = %34, %23
  %27 = load i32, i32* @CMD_APP_CMD, align 4
  %28 = call i64 @CardSendCmd(i32 %27, i32 0)
  %29 = load i32, i32* @CMD_SD_SEND_OP_COND, align 4
  %30 = call i64 @CardSendCmd(i32 %29, i32 1088421888)
  store i64 %30, i64* %1, align 8
  %31 = load i32, i32* @SDHOST_BASE, align 4
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %33 = call i32 @MAP_SDHostRespGet(i32 %31, i64* %32)
  br label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %36 = load i64, i64* %35, align 16
  %37 = lshr i64 %36, 31
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %26, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %41 = load i64, i64* %40, align 16
  %42 = and i64 %41, 1073741824
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @CARD_CAP_CLASS_SDHC, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sd_disk_info, i32 0, i32 3), align 8
  br label %46

46:                                               ; preds = %44, %39
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sd_disk_info, i32 0, i32 0), align 8
  br label %83

47:                                               ; preds = %18, %10
  br label %48

48:                                               ; preds = %68, %47
  %49 = load i32, i32* @CMD_APP_CMD, align 4
  %50 = call i64 @CardSendCmd(i32 %49, i32 0)
  %51 = load i32, i32* @CMD_SD_SEND_OP_COND, align 4
  %52 = call i64 @CardSendCmd(i32 %51, i32 14680064)
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* @SDHOST_BASE, align 4
  %57 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %58 = call i32 @MAP_SDHostRespGet(i32 %56, i64* %57)
  br label %59

59:                                               ; preds = %55, %48
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %1, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %65 = load i64, i64* %64, align 16
  %66 = lshr i64 %65, 31
  %67 = icmp eq i64 %66, 0
  br label %68

68:                                               ; preds = %63, %60
  %69 = phi i1 [ false, %60 ], [ %67, %63 ]
  br i1 %69, label %48, label %70

70:                                               ; preds = %68
  %71 = load i64, i64* %1, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i8*, i8** @CARD_TYPE_SDCARD, align 8
  store i8* %74, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sd_disk_info, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sd_disk_info, i32 0, i32 0), align 8
  br label %82

75:                                               ; preds = %70
  %76 = load i32, i32* @CMD_SEND_OP_COND, align 4
  %77 = call i64 @CardSendCmd(i32 %76, i32 0)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i8*, i8** @CARD_TYPE_MMC, align 8
  store i8* %80, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sd_disk_info, i32 0, i32 2), align 8
  br label %81

81:                                               ; preds = %79, %75
  br label %82

82:                                               ; preds = %81, %73
  br label %83

83:                                               ; preds = %82, %46
  br label %84

84:                                               ; preds = %83, %5
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sd_disk_info, i32 0, i32 0), align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %84
  %88 = load i32, i32* @CMD_ALL_SEND_CID, align 4
  %89 = call i64 @CardSendCmd(i32 %88, i32 0)
  store i64 %89, i64* %1, align 8
  %90 = load i64, i64* %1, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load i32, i32* @CMD_SEND_REL_ADDR, align 4
  %94 = call i64 @CardSendCmd(i32 %93, i32 0)
  %95 = load i32, i32* @SDHOST_BASE, align 4
  %96 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %97 = call i32 @MAP_SDHostRespGet(i32 %95, i64* %96)
  %98 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %99 = load i64, i64* %98, align 16
  %100 = lshr i64 %99, 16
  store i64 %100, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sd_disk_info, i32 0, i32 1), align 8
  %101 = call i32 @CardCapacityGet(%struct.TYPE_4__* @sd_disk_info)
  br label %102

102:                                              ; preds = %92, %87
  %103 = call i64 @CardSelect(%struct.TYPE_4__* @sd_disk_info)
  store i64 %103, i64* %1, align 8
  %104 = load i64, i64* %1, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sd_disk_info, i32 0, i32 0), align 8
  br label %107

107:                                              ; preds = %106, %102
  br label %108

108:                                              ; preds = %107, %84
  br label %109

109:                                              ; preds = %108, %0
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sd_disk_info, i32 0, i32 0), align 8
  ret i64 %110
}

declare dso_local i64 @CardSendCmd(i32, i32) #1

declare dso_local i32 @MAP_SDHostRespGet(i32, i64*) #1

declare dso_local i32 @CardCapacityGet(%struct.TYPE_4__*) #1

declare dso_local i64 @CardSelect(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
