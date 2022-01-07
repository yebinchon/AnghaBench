; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_RunAdslModem.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_RunAdslModem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }

@mei_arc_swap_buff = common dso_local global i32* null, align 8
@MAXSWAPSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c">>> malloc fail for codeswap buff!!! <<<\0A\00", align 1
@DSL_DEV_MEI_ERR_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"allocate %dKB swap buff memory at: 0x%p\0A\00", align 1
@SDRAM_SEGMENT_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"firmware header size is bigger than 64K segment size\0A\00", align 1
@MAX_BAR_REGISTERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"Firmware download is not completed. Please download firmware again!\0A\00", align 1
@LTQ_ICU_IM0_IER = common dso_local global i32* null, align 8
@LTQ_ICU_IM2_IER = common dso_local global i32* null, align 8
@LTQ_USB_OC_INT = common dso_local global i32 0, align 4
@IFX_DYING_GASP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Modem failed to be ready!\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Modem is ready.\0A\00", align 1
@DSL_DEV_MEI_ERR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @IFX_MEI_RunAdslModem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IFX_MEI_RunAdslModem(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32*, i32** @mei_arc_swap_buff, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @MAXSWAPSIZE, align 4
  %12 = mul nsw i32 %11, 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i64 @kmalloc(i32 %12, i32 %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** @mei_arc_swap_buff, align 8
  %16 = load i32*, i32** @mei_arc_swap_buff, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @DSL_DEV_MEI_ERR_FAILURE, align 4
  store i32 %20, i32* %2, align 4
  br label %155

21:                                               ; preds = %10
  %22 = load i32*, i32** @mei_arc_swap_buff, align 8
  %23 = call i32 @ksize(i32* %22)
  %24 = sdiv i32 %23, 1024
  %25 = load i32*, i32** @mei_arc_swap_buff, align 8
  %26 = call i32 (i8*, ...) @IFX_MEI_DMSG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32* %25)
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = call %struct.TYPE_12__* @DSL_DEV_PRIVATE(%struct.TYPE_14__* %28)
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_15__*
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = call %struct.TYPE_12__* @DSL_DEV_PRIVATE(%struct.TYPE_14__* %36)
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 5
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %38, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = call %struct.TYPE_12__* @DSL_DEV_PRIVATE(%struct.TYPE_14__* %39)
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = load i32, i32* @SDRAM_SEGMENT_SIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ugt i64 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %27
  %51 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @DSL_DEV_MEI_ERR_FAILURE, align 4
  store i32 %52, i32* %2, align 4
  br label %155

53:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %72, %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MAX_BAR_REGISTERS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = call %struct.TYPE_12__* @DSL_DEV_PRIVATE(%struct.TYPE_14__* %59)
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %54

75:                                               ; preds = %54
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = call %struct.TYPE_12__* @DSL_DEV_PRIVATE(%struct.TYPE_14__* %77)
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %76, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @DSL_DEV_MEI_ERR_FAILURE, align 4
  store i32 %84, i32* %2, align 4
  br label %155

85:                                               ; preds = %75
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = call i32 @IFX_MEI_ResetARC(%struct.TYPE_14__* %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %89 = call i32 @IFX_MEI_HaltArc(%struct.TYPE_14__* %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = call %struct.TYPE_12__* @DSL_DEV_PRIVATE(%struct.TYPE_14__* %91)
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @IFX_MEI_BarUpdate(%struct.TYPE_14__* %90, i32 %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = call i32 @IFX_MEI_DownloadBootCode(%struct.TYPE_14__* %96)
  %98 = load i32*, i32** @LTQ_ICU_IM0_IER, align 8
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 1048576
  store i32 %100, i32* %6, align 4
  %101 = load i32*, i32** @LTQ_ICU_IM2_IER, align 8
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 1048576
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* @LTQ_USB_OC_INT, align 4
  %105 = call i32 @disable_irq(i32 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @IFX_DYING_GASP, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @disable_irq(i32 %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = call i32 @IFX_MEI_RunArc(%struct.TYPE_14__* %113)
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = call %struct.TYPE_12__* @DSL_DEV_PRIVATE(%struct.TYPE_14__* %115)
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @MEI_WAIT_EVENT_TIMEOUT(i32 %118, i32 1000)
  %120 = load i32, i32* @LTQ_USB_OC_INT, align 4
  %121 = call i32 @MEI_MASK_AND_ACK_IRQ(i32 %120)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @IFX_DYING_GASP, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @MEI_MASK_AND_ACK_IRQ(i32 %127)
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @IFX_DYING_GASP, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @enable_irq(i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = load i32*, i32** @LTQ_ICU_IM0_IER, align 8
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %136
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32*, i32** @LTQ_ICU_IM2_IER, align 8
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %140
  store i32 %143, i32* %141, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %145 = call %struct.TYPE_12__* @DSL_DEV_PRIVATE(%struct.TYPE_14__* %144)
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 1
  br i1 %148, label %149, label %152

149:                                              ; preds = %85
  %150 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i32, i32* @DSL_DEV_MEI_ERR_FAILURE, align 4
  store i32 %151, i32* %2, align 4
  br label %155

152:                                              ; preds = %85
  %153 = call i32 (i8*, ...) @IFX_MEI_DMSG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %154 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %152, %149, %82, %50, %18
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @IFX_MEI_EMSG(i8*) #1

declare dso_local i32 @IFX_MEI_DMSG(i8*, ...) #1

declare dso_local i32 @ksize(i32*) #1

declare dso_local %struct.TYPE_12__* @DSL_DEV_PRIVATE(%struct.TYPE_14__*) #1

declare dso_local i32 @IFX_MEI_ResetARC(%struct.TYPE_14__*) #1

declare dso_local i32 @IFX_MEI_HaltArc(%struct.TYPE_14__*) #1

declare dso_local i32 @IFX_MEI_BarUpdate(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @IFX_MEI_DownloadBootCode(%struct.TYPE_14__*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @IFX_MEI_RunArc(%struct.TYPE_14__*) #1

declare dso_local i32 @MEI_WAIT_EVENT_TIMEOUT(i32, i32) #1

declare dso_local i32 @MEI_MASK_AND_ACK_IRQ(i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
