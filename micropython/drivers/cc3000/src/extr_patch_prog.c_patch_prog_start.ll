; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_patch_prog.c_patch_prog_start.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_patch_prog.c_patch_prog_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Initializing module...\0A\00", align 1
@cMacFromEeprom = common dso_local global i32* null, align 8
@mac_status = common dso_local global i64 0, align 8
@return_status = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Reading RM parameters...\0A\00", align 1
@counter = common dso_local global i32 0, align 4
@cRMParamsFromEeprom = common dso_local global i8* null, align 8
@NVMEM_RM_FILEID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"RM is not valid, loading default one...\0A\00", align 1
@cRMdefaultParams = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"RM is valid.\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Writing new FAT\0A\00", align 1
@aFATEntries = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Writing RM parameters...\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Writing back MAC address..\0A\00", align 1
@ucStatus_Dr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Updating driver patch...\0A\00", align 1
@NVMEM_WLAN_DRIVER_SP_FILEID = common dso_local global i32 0, align 4
@drv_length = common dso_local global i32 0, align 4
@wlan_drv_patch = common dso_local global i32 0, align 4
@ucStatus_FW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Updating firmware patch...\0A\00", align 1
@NVMEM_WLAN_FW_SP_FILEID = common dso_local global i32 0, align 4
@fw_length = common dso_local global i32 0, align 4
@fw_patch = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [75 x i8] c"Update complete, resetting module\0AIf this doesn't work, reset manually...\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"MAC address is not valid, please write a new one\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"All done, call wlan.patch_version()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @patch_prog_start() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i8*, align 8
  %3 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @initDriver(i32 1)
  %5 = load i32*, i32** @cMacFromEeprom, align 8
  %6 = call i64 @nvmem_get_mac_address(i32* %5)
  store i64 %6, i64* @mac_status, align 8
  store i32 1, i32* @return_status, align 4
  %7 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %36, %0
  %9 = load i32, i32* @return_status, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @counter, align 4
  %13 = icmp slt i32 %12, 3
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i1 [ false, %8 ], [ %13, %11 ]
  br i1 %15, label %16, label %39

16:                                               ; preds = %14
  store i32 0, i32* @return_status, align 4
  %17 = load i8*, i8** @cRMParamsFromEeprom, align 8
  store i8* %17, i8** %2, align 8
  store i16 0, i16* %1, align 2
  br label %18

18:                                               ; preds = %33, %16
  %19 = load i16, i16* %1, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i32, i32* @NVMEM_RM_FILEID, align 4
  %24 = load i16, i16* %1, align 2
  %25 = zext i16 %24 to i32
  %26 = mul nsw i32 8, %25
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @nvmem_read(i32 %23, i32 8, i32 %26, i8* %27)
  %29 = load i32, i32* @return_status, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* @return_status, align 4
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 8
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %22
  %34 = load i16, i16* %1, align 2
  %35 = add i16 %34, 1
  store i16 %35, i16* %1, align 2
  br label %18

36:                                               ; preds = %18
  %37 = load i32, i32* @counter, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @counter, align 4
  br label %8

39:                                               ; preds = %14
  %40 = load i32, i32* @counter, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i64, i64* @cRMdefaultParams, align 8
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %2, align 8
  br label %49

46:                                               ; preds = %39
  %47 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i8*, i8** @cRMParamsFromEeprom, align 8
  store i8* %48, i8** %2, align 8
  br label %49

49:                                               ; preds = %46, %42
  store i32 1, i32* @return_status, align 4
  %50 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %54, %49
  %52 = load i32, i32* @return_status, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32*, i32** @aFATEntries, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** @aFATEntries, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @fat_write_content(i32 %57, i32 %60)
  store i32 %61, i32* @return_status, align 4
  br label %51

62:                                               ; preds = %51
  store i32 1, i32* @return_status, align 4
  %63 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %89, %62
  %65 = load i32, i32* @return_status, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %64
  store i32 0, i32* @return_status, align 4
  store i16 0, i16* %1, align 2
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i16, i16* %1, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = load i32, i32* @NVMEM_RM_FILEID, align 4
  %74 = load i16, i16* %1, align 2
  %75 = zext i16 %74 to i32
  %76 = mul nsw i32 32, %75
  %77 = load i8*, i8** %2, align 8
  %78 = load i16, i16* %1, align 2
  %79 = zext i16 %78 to i32
  %80 = mul nsw i32 32, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  %83 = call i32 @nvmem_write(i32 %73, i32 32, i32 %76, i8* %82)
  %84 = load i32, i32* @return_status, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* @return_status, align 4
  br label %86

86:                                               ; preds = %72
  %87 = load i16, i16* %1, align 2
  %88 = add i16 %87, 1
  store i16 %88, i16* %1, align 2
  br label %68

89:                                               ; preds = %68
  br label %64

90:                                               ; preds = %64
  store i32 1, i32* @return_status, align 4
  %91 = load i64, i64* @mac_status, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = load i32*, i32** @cMacFromEeprom, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 254
  store i32 %97, i32* %95, align 4
  %98 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %99

99:                                               ; preds = %102, %93
  %100 = load i32, i32* @return_status, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32*, i32** @cMacFromEeprom, align 8
  %104 = call i32 @nvmem_set_mac_address(i32* %103)
  store i32 %104, i32* @return_status, align 4
  br label %99

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %90
  store i32 1, i32* @ucStatus_Dr, align 4
  %107 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %108

108:                                              ; preds = %111, %106
  %109 = load i32, i32* @ucStatus_Dr, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* @NVMEM_WLAN_DRIVER_SP_FILEID, align 4
  %113 = load i32, i32* @drv_length, align 4
  %114 = load i32, i32* @wlan_drv_patch, align 4
  %115 = call i32 @nvmem_write_patch(i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* @ucStatus_Dr, align 4
  br label %108

116:                                              ; preds = %108
  store i32 1, i32* @ucStatus_FW, align 4
  %117 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %118

118:                                              ; preds = %121, %116
  %119 = load i32, i32* @ucStatus_FW, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32, i32* @NVMEM_WLAN_FW_SP_FILEID, align 4
  %123 = load i32, i32* @fw_length, align 4
  %124 = load i32, i32* @fw_patch, align 4
  %125 = call i32 @nvmem_write_patch(i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* @ucStatus_FW, align 4
  br label %118

126:                                              ; preds = %118
  %127 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0))
  %128 = call i32 (...) @wlan_stop()
  %129 = call i32 @systick_sleep(i32 500)
  %130 = call i32 @initDriver(i32 0)
  %131 = load i64, i64* @mac_status, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %126
  %136 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @initDriver(i32) #1

declare dso_local i64 @nvmem_get_mac_address(i32*) #1

declare dso_local i32 @nvmem_read(i32, i32, i32, i8*) #1

declare dso_local i32 @fat_write_content(i32, i32) #1

declare dso_local i32 @nvmem_write(i32, i32, i32, i8*) #1

declare dso_local i32 @nvmem_set_mac_address(i32*) #1

declare dso_local i32 @nvmem_write_patch(i32, i32, i32) #1

declare dso_local i32 @wlan_stop(...) #1

declare dso_local i32 @systick_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
