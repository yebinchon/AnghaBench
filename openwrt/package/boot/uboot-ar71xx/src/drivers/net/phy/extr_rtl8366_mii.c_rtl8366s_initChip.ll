; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366s_initChip.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366s_initChip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTL8366S_LED_GROUP_MAX = common dso_local global i32 0, align 4
@__const.rtl8366s_initChip.chipB = private unnamed_addr constant [72 x [2 x i32]] [[2 x i32] [i32 0, i32 56], [2 x i32] [i32 33024, i32 6967], [2 x i32] [i32 48686, i32 31647], [2 x i32] [i32 48683, i32 42184], [2 x i32] [i32 48756, i32 44308], [2 x i32] [i32 48684, i32 56320], [2 x i32] [i32 48745, i32 53775], [2 x i32] [i32 48699, i32 46100], [2 x i32] [i32 48676, i32 0], [2 x i32] [i32 48675, i32 161], [2 x i32] [i32 48674, i32 8], [2 x i32] [i32 48673, i32 288], [2 x i32] [i32 48672, i32 4096], [2 x i32] [i32 48676, i32 2048], [2 x i32] [i32 48676, i32 0], [2 x i32] [i32 48676, i32 61440], [2 x i32] [i32 48675, i32 57089], [2 x i32] [i32 48674, i32 57120], [2 x i32] [i32 48673, i32 4122], [2 x i32] [i32 48672, i32 41215], [2 x i32] [i32 48676, i32 63488], [2 x i32] [i32 48676, i32 61440], [2 x i32] [i32 578, i32 703], [2 x i32] [i32 581, i32 703], [2 x i32] [i32 584, i32 703], [2 x i32] [i32 587, i32 703], [2 x i32] [i32 590, i32 703], [2 x i32] [i32 593, i32 703], [2 x i32] [i32 560, i32 2610], [2 x i32] [i32 563, i32 2610], [2 x i32] [i32 566, i32 2610], [2 x i32] [i32 569, i32 2610], [2 x i32] [i32 572, i32 2610], [2 x i32] [i32 575, i32 2610], [2 x i32] [i32 596, i32 2623], [2 x i32] [i32 597, i32 100], [2 x i32] [i32 598, i32 2623], [2 x i32] [i32 599, i32 100], [2 x i32] [i32 600, i32 2623], [2 x i32] [i32 601, i32 100], [2 x i32] [i32 602, i32 2623], [2 x i32] [i32 603, i32 100], [2 x i32] [i32 604, i32 2623], [2 x i32] [i32 605, i32 100], [2 x i32] [i32 606, i32 2623], [2 x i32] [i32 607, i32 100], [2 x i32] [i32 608, i32 376], [2 x i32] [i32 609, i32 500], [2 x i32] [i32 610, i32 800], [2 x i32] [i32 611, i32 20], [2 x i32] [i32 541, i32 37449], [2 x i32] [i32 542, i32 0], [2 x i32] [i32 256, i32 4], [2 x i32] [i32 48714, i32 41140], [2 x i32] [i32 48704, i32 39936], [2 x i32] [i32 48705, i32 20509], [2 x i32] [i32 48712, i32 13826], [2 x i32] [i32 48711, i32 32849], [2 x i32] [i32 48716, i32 25701], [2 x i32] [i32 32768, i32 7936], [2 x i32] [i32 32769, i32 12], [2 x i32] [i32 32776, i32 0], [2 x i32] [i32 32775, i32 0], [2 x i32] [i32 32780, i32 165], [2 x i32] [i32 33025, i32 700], [2 x i32] [i32 48723, i32 5], [2 x i32] [i32 36421, i32 45032], [2 x i32] [i32 32787, i32 5], [2 x i32] [i32 48715, i32 26368], [2 x i32] [i32 32779, i32 28672], [2 x i32] [i32 48649, i32 3584], [2 x i32] [i32 65535, i32 43981]], align 16
@__const.rtl8366s_initChip.chipDefault = private unnamed_addr constant [37 x [2 x i32]] [[2 x i32] [i32 578, i32 703], [2 x i32] [i32 581, i32 703], [2 x i32] [i32 584, i32 703], [2 x i32] [i32 587, i32 703], [2 x i32] [i32 590, i32 703], [2 x i32] [i32 593, i32 703], [2 x i32] [i32 596, i32 2623], [2 x i32] [i32 598, i32 2623], [2 x i32] [i32 600, i32 2623], [2 x i32] [i32 602, i32 2623], [2 x i32] [i32 604, i32 2623], [2 x i32] [i32 606, i32 2623], [2 x i32] [i32 611, i32 124], [2 x i32] [i32 256, i32 4], [2 x i32] [i32 48731, i32 13568], [2 x i32] [i32 32782, i32 8207], [2 x i32] [i32 48669, i32 3840], [2 x i32] [i32 32769, i32 20497], [2 x i32] [i32 32778, i32 41716], [2 x i32] [i32 32779, i32 6051], [2 x i32] [i32 48715, i32 6051], [2 x i32] [i32 48705, i32 20497], [2 x i32] [i32 48663, i32 8448], [2 x i32] [i32 32768, i32 33540], [2 x i32] [i32 48704, i32 33540], [2 x i32] [i32 48714, i32 41716], [2 x i32] [i32 32780, i32 43221], [2 x i32] [i32 32788, i32 21760], [2 x i32] [i32 32789, i32 4], [2 x i32] [i32 48716, i32 43221], [2 x i32] [i32 48729, i32 8], [2 x i32] [i32 48649, i32 3584], [2 x i32] [i32 48694, i32 4150], [2 x i32] [i32 48695, i32 4150], [2 x i32] [i32 32781, i32 255], [2 x i32] [i32 48717, i32 255], [2 x i32] [i32 65535, i32 43981]], align 16
@.str = private unnamed_addr constant [19 x i8] c"rtl8366s_initChip\0A\00", align 1
@RTL8366S_LEDCONF_LEDFORCE = common dso_local global i32 0, align 4
@RTL8366S_MODEL_ID_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"rtl8366s_initChip: unsupported chip found!\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"rtl8366s_initChip: found %x chip\0A\00", align 1
@RTL8366S_PHY_ACCESS_CTRL_REG = common dso_local global i32 0, align 4
@RTL8366S_PHY_CTRL_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366s_initChip() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [2 x i32]*, align 8
  %8 = alloca [72 x [2 x i32]], align 16
  %9 = alloca [37 x [2 x i32]], align 16
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %11 = load i32, i32* @RTL8366S_LED_GROUP_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = bitcast [72 x [2 x i32]]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([72 x [2 x i32]]* @__const.rtl8366s_initChip.chipB to i8*), i64 576, i1 false)
  %16 = bitcast [37 x [2 x i32]]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([37 x [2 x i32]]* @__const.rtl8366s_initChip.chipDefault to i8*), i64 296, i1 false)
  %17 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %37, %0
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @RTL8366S_LED_GROUP_MAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %14, i64 %25
  %27 = call i64 @rtl8366s_getLedConfig(i32 %23, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %133

30:                                               ; preds = %22
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @RTL8366S_LEDCONF_LEDFORCE, align 4
  %33 = call i64 @rtl8366s_setLedConfig(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %133

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %18

40:                                               ; preds = %18
  %41 = call i64 @rtl8366s_setLedForceValue(i32 0, i32 0, i32 0, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %133

44:                                               ; preds = %40
  %45 = load i32, i32* @RTL8366S_MODEL_ID_REG, align 4
  %46 = call i64 @rtl8366_readRegister(i32 %45, i32* %4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %133

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  switch i32 %50, label %55 [
    i32 0, label %51
    i32 128, label %53
  ]

51:                                               ; preds = %49
  %52 = getelementptr inbounds [72 x [2 x i32]], [72 x [2 x i32]]* %8, i64 0, i64 0
  store [2 x i32]* %52, [2 x i32]** %7, align 8
  br label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds [37 x [2 x i32]], [37 x [2 x i32]]* %9, i64 0, i64 0
  store [2 x i32]* %54, [2 x i32]** %7, align 8
  br label %57

55:                                               ; preds = %49
  %56 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %133

57:                                               ; preds = %53, %51
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %110, %57
  %61 = load [2 x i32]*, [2 x i32]** %7, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %61, i64 %63
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %64, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 65535
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load [2 x i32]*, [2 x i32]** %7, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %69, i64 %71
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %72, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 43981
  br label %76

76:                                               ; preds = %68, %60
  %77 = phi i1 [ false, %60 ], [ %75, %68 ]
  br i1 %77, label %78, label %113

78:                                               ; preds = %76
  %79 = load [2 x i32]*, [2 x i32]** %7, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %79, i64 %81
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %82, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 48640
  %86 = icmp eq i32 %85, 48640
  br i1 %86, label %87, label %94

87:                                               ; preds = %78
  %88 = load i32, i32* @RTL8366S_PHY_ACCESS_CTRL_REG, align 4
  %89 = load i32, i32* @RTL8366S_PHY_CTRL_WRITE, align 4
  %90 = call i64 @rtl8366_writeRegister(i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %133

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %78
  %95 = load [2 x i32]*, [2 x i32]** %7, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %95, i64 %97
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %98, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load [2 x i32]*, [2 x i32]** %7, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %101, i64 %103
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %104, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @rtl8366_writeRegister(i32 %100, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %133

110:                                              ; preds = %94
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  br label %60

113:                                              ; preds = %76
  %114 = call i32 @udelay(i32 100000)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %129, %113
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @RTL8366S_LED_GROUP_MAX, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %115
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %14, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @rtl8366s_setLedConfig(i32 %120, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %133

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %2, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %2, align 4
  br label %115

132:                                              ; preds = %115
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %133

133:                                              ; preds = %132, %127, %109, %92, %55, %48, %43, %35, %29
  %134 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %1, align 4
  ret i32 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DBG(i8*, ...) #3

declare dso_local i64 @rtl8366s_getLedConfig(i32, i32*) #3

declare dso_local i64 @rtl8366s_setLedConfig(i32, i32) #3

declare dso_local i64 @rtl8366s_setLedForceValue(i32, i32, i32, i32) #3

declare dso_local i64 @rtl8366_readRegister(i32, i32*) #3

declare dso_local i32 @printf(i8*) #3

declare dso_local i64 @rtl8366_writeRegister(i32, i32) #3

declare dso_local i32 @udelay(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
