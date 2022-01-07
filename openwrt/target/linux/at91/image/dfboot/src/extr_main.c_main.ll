; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (i8*, i32, i32*)*, i32 (%struct.TYPE_23__*, i32, i32)*, i32 (%struct.TYPE_24__*, i32, %struct.TYPE_18__*)*, i32 (i32*)*, i32, i32 (%struct.TYPE_18__*, i8*)* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*, i8*, i32, i32, i32)* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, %struct.TYPE_22__*)*, i32 (i8*)* }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*, i32, i32, i32 (...)*, i32*)* }
%struct.TYPE_20__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@AT91C_ROM_BOOT_ADDRESS = common dso_local global %struct.TYPE_19__* null, align 8
@pAT91 = common dso_local global %struct.TYPE_19__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"F SetPLL\00", align 1
@ctlTempo = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@AT91C_BASE_AIC = common dso_local global i32 0, align 4
@AT91C_ID_SYS = common dso_local global i32 0, align 4
@AT91C_AIC_PRIOR_HIGHEST = common dso_local global i32 0, align 4
@AT91C_AIC_SRCTYPE_INT_LEVEL_SENSITIVE = common dso_local global i32 0, align 4
@AT91F_ST_ASM_HANDLER = common dso_local global i32 0, align 4
@AT91C_DELAY_TO_BOOT = common dso_local global i32 0, align 4
@AT91C_DOWNLOAD_BASE_ADDRESS = common dso_local global i32 0, align 4
@AT91C_DOWNLOAD_MAX_SIZE = common dso_local global i32 0, align 4
@message = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Enter: \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"RDY ERA\0ASure?\00", align 1
@AT91C_BASE_DBGU = common dso_local global i64 0, align 8
@AT91C_BOOT_DATAFLASH_ADDR = common dso_local global i32 0, align 4
@AT91C_OFFSET_VECT6 = common dso_local global i64 0, align 8
@XmodemComplete = common dso_local global i32 0, align 4
@XmodemProtocol = common dso_local global i32 0, align 4
@dataflash_info = common dso_local global %struct.TYPE_20__* null, align 8
@sXmBuffer = common dso_local global i32 0, align 4
@svcXmodem = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@xmodemPipe = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_22__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %6, align 4
  store i8 0, i8* %7, align 1
  store volatile i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** @AT91C_ROM_BOOT_ADDRESS, align 8
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** @pAT91, align 8
  %11 = call i32 (...) @AT91F_SetPLL()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %0
  %14 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %15
  br label %15

16:                                               ; preds = %0
  %17 = call i32 (...) @at91_init_uarts()
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pAT91, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 5
  %20 = load i32 (%struct.TYPE_18__*, i8*)*, i32 (%struct.TYPE_18__*, i8*)** %19, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pAT91, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 4
  %23 = bitcast i32* %22 to i8*
  %24 = call i32 %20(%struct.TYPE_18__* @ctlTempo, i8* %23)
  %25 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ctlTempo, i32 0, i32 1), align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pAT91, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 4
  %28 = bitcast i32* %27 to i8*
  %29 = call i32 %25(i8* %28)
  %30 = load i32 (%struct.TYPE_18__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_22__*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ctlTempo, i32 0, i32 0), align 8
  %31 = call i32 %30(%struct.TYPE_18__* @ctlTempo, %struct.TYPE_22__* %2)
  %32 = load i32, i32* @AT91C_BASE_AIC, align 4
  %33 = load i32, i32* @AT91C_ID_SYS, align 4
  %34 = load i32, i32* @AT91C_AIC_PRIOR_HIGHEST, align 4
  %35 = load i32, i32* @AT91C_AIC_SRCTYPE_INT_LEVEL_SENSITIVE, align 4
  %36 = load i32, i32* @AT91F_ST_ASM_HANDLER, align 4
  %37 = call i32 @AT91F_AIC_ConfigureIt(i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @AT91C_BASE_AIC, align 4
  %39 = load i32, i32* @AT91C_ID_SYS, align 4
  %40 = call i32 @AT91F_AIC_EnableIt(i32 %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %2, i32 0, i32 1
  %42 = load i32 (%struct.TYPE_22__*, i32, i32, i32 (...)*, i32*)*, i32 (%struct.TYPE_22__*, i32, i32, i32 (...)*, i32*)** %41, align 8
  %43 = load i32, i32* @AT91C_DELAY_TO_BOOT, align 4
  %44 = call i32 %42(%struct.TYPE_22__* %2, i32 %43, i32 0, i32 (...)* @AT91F_StartBoot, i32* null)
  br label %45

45:                                               ; preds = %16, %137
  br label %46

46:                                               ; preds = %136, %45
  %47 = load i8, i8* %7, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %137

50:                                               ; preds = %46
  %51 = load i32, i32* @AT91C_DOWNLOAD_BASE_ADDRESS, align 4
  store volatile i32 %51, i32* %4, align 4
  %52 = load volatile i32, i32* @AT91C_DOWNLOAD_MAX_SIZE, align 4
  store volatile i32 %52, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %53 = load volatile i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = call i32 (...) @AT91F_DataflashInit()
  store volatile i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %50
  %58 = call i32 (...) @AT91F_DisplayMenu()
  store i32 %58, i32* %9, align 4
  %59 = load i8*, i8** @message, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** @message, align 8
  %62 = call i32 @AT91F_ReadLine(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %2, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %63, align 8
  %65 = call i32 %64(%struct.TYPE_22__* %2)
  %66 = load i8*, i8** @message, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %7, align 1
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %83, %57
  %70 = load i8*, i8** @message, align 8
  %71 = load i32, i32* %3, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 32
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* %3, align 4
  %79 = icmp ult i32 %78, 12
  br label %80

80:                                               ; preds = %77, %69
  %81 = phi i1 [ false, %69 ], [ %79, %77 ]
  br i1 %81, label %82, label %86

82:                                               ; preds = %80
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %3, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %69

86:                                               ; preds = %80
  %87 = load i8*, i8** @message, align 8
  %88 = load i32, i32* %3, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = call i32 @AsciiToHex(i8* %90, i32* %6)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %86
  %95 = load i8, i8* %7, align 1
  %96 = sext i8 %95 to i32
  switch i32 %96, label %135 [
    i32 51, label %97
    i32 52, label %103
    i32 55, label %105
  ]

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i64 (...) @Program_From_MCI()
  br label %102

102:                                              ; preds = %100, %97
  store i8 0, i8* %7, align 1
  br label %136

103:                                              ; preds = %94
  %104 = call i32 (...) @AT91F_StartBoot()
  store i8 0, i8* %7, align 1
  br label %136

105:                                              ; preds = %94
  %106 = load i32, i32* %6, align 4
  %107 = and i32 %106, -16777216
  switch i32 %107, label %110 [
    i32 129, label %108
    i32 128, label %109
  ]

108:                                              ; preds = %105
  br label %111

109:                                              ; preds = %105
  br label %111

110:                                              ; preds = %105
  store i8 0, i8* %7, align 1
  br label %111

111:                                              ; preds = %110, %109, %108
  %112 = load i8, i8* %7, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %111
  %116 = load i8*, i8** @message, align 8
  %117 = call i32 @AT91F_ReadLine(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %116)
  %118 = load i8*, i8** @message, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 89
  br i1 %122, label %129, label %123

123:                                              ; preds = %115
  %124 = load i8*, i8** @message, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 121
  br i1 %128, label %129, label %133

129:                                              ; preds = %123, %115
  %130 = load i32, i32* %6, align 4
  %131 = and i32 %130, -16777216
  %132 = call i32 @erase_dataflash(i32 %131)
  br label %133

133:                                              ; preds = %129, %123
  br label %134

134:                                              ; preds = %133, %111
  store i8 0, i8* %7, align 1
  br label %136

135:                                              ; preds = %94
  store i8 0, i8* %7, align 1
  br label %136

136:                                              ; preds = %135, %134, %103, %102
  br label %46

137:                                              ; preds = %46
  br label %45
}

declare dso_local i32 @AT91F_SetPLL(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @at91_init_uarts(...) #1

declare dso_local i32 @AT91F_AIC_ConfigureIt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @AT91F_AIC_EnableIt(i32, i32) #1

declare dso_local i32 @AT91F_StartBoot(...) #1

declare dso_local i32 @AT91F_DataflashInit(...) #1

declare dso_local i32 @AT91F_DisplayMenu(...) #1

declare dso_local i32 @AT91F_ReadLine(i8*, i8*) #1

declare dso_local i32 @AsciiToHex(i8*, i32*) #1

declare dso_local i64 @Program_From_MCI(...) #1

declare dso_local i32 @erase_dataflash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
