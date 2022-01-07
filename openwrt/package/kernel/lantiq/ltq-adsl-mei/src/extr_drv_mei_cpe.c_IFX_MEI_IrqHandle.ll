; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_IrqHandle.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_IrqHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32*, i64, i32)* }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Error: Got Interrupt but pDev is NULL!!!!\0A\00", align 1
@ARC_MEI_MAILBOXR = common dso_local global i32 0, align 4
@OMB_CODESWAP_MESSAGE_MSG_TYPE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Receive Code Swap Request interrupt!!!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@OMB_CLEAREOC_INTERRUPT_CODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"OMB_CLEAREOC_INTERRUPT_CODE\0A\00", align 1
@DSL_BSP_CB_CEOC_IRQ = common dso_local global i64 0, align 8
@ME_ARC2ME_STAT = common dso_local global i64 0, align 8
@ARC_TO_MEI_MSGAV = common dso_local global i32 0, align 4
@dsl_bsp_event_callback = common dso_local global %struct.TYPE_3__* null, align 8
@OMB_REBOOT_INTERRUPT_CODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"OMB_REBOOT_INTERRUPT_CODE\0A\00", align 1
@DSL_BSP_CB_FIRMWARE_REBOOT = common dso_local global i64 0, align 8
@MSG_LENGTH = common dso_local global i32 0, align 4
@D2H_AUTONOMOUS_MODEM_READY_MSG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Got MODEM_READY_MSG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @IFX_MEI_IrqHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IFX_MEI_IrqHandle(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @ARC_MEI_MAILBOXR, align 4
  %18 = call i32 @IFX_MEI_DebugRead(i32* %16, i32 %17, i32* %6, i32 1)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @OMB_CODESWAP_MESSAGE_MSG_TYPE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %3, align 4
  br label %164

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @OMB_CLEAREOC_INTERRUPT_CODE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %26
  %32 = call i32 @IFX_MEI_DMSG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i64, i64* @DSL_BSP_CB_CEOC_IRQ, align 8
  store i64 %33, i64* %8, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* @ME_ARC2ME_STAT, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @ARC_TO_MEI_MSGAV, align 4
  %38 = call i32 @IFX_MEI_LongWordWriteOffset(i32* %34, i32 %36, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dsl_bsp_event_callback, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %42, align 8
  %44 = icmp ne i32 (i32*, i64, i32)* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %31
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dsl_bsp_event_callback, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %49, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dsl_bsp_event_callback, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %50(i32* %51, i64 %52, i32 %57)
  br label %59

59:                                               ; preds = %45, %31
  br label %161

60:                                               ; preds = %26
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @OMB_REBOOT_INTERRUPT_CODE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %60
  %66 = call i32 @IFX_MEI_DMSG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i64, i64* @DSL_BSP_CB_FIRMWARE_REBOOT, align 8
  store i64 %67, i64* %8, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i64, i64* @ME_ARC2ME_STAT, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @ARC_TO_MEI_MSGAV, align 4
  %72 = call i32 @IFX_MEI_LongWordWriteOffset(i32* %68, i32 %70, i32 %71)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dsl_bsp_event_callback, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %76, align 8
  %78 = icmp ne i32 (i32*, i64, i32)* %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %65
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dsl_bsp_event_callback, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %83, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dsl_bsp_event_callback, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 %84(i32* %85, i64 %86, i32 %91)
  br label %93

93:                                               ; preds = %79, %65
  br label %160

94:                                               ; preds = %60
  %95 = load i32*, i32** %7, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call %struct.TYPE_4__* @DSL_DEV_PRIVATE(i32* %96)
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @MSG_LENGTH, align 4
  %101 = call i32 @IFX_MEI_MailboxRead(i32* %95, i32* %99, i32 %100)
  %102 = load i32*, i32** %7, align 8
  %103 = call %struct.TYPE_4__* @DSL_DEV_PRIVATE(i32* %102)
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %119

107:                                              ; preds = %94
  %108 = load i32*, i32** %7, align 8
  %109 = call %struct.TYPE_4__* @DSL_DEV_PRIVATE(i32* %108)
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  store i32 1, i32* %110, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = call %struct.TYPE_4__* @DSL_DEV_PRIVATE(i32* %111)
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 0, i32* %113, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = call %struct.TYPE_4__* @DSL_DEV_PRIVATE(i32* %114)
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @MEI_WAKEUP_EVENT(i32 %117)
  br label %159

119:                                              ; preds = %94
  %120 = load i32*, i32** %7, align 8
  %121 = call %struct.TYPE_4__* @DSL_DEV_PRIVATE(i32* %120)
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = call %struct.TYPE_4__* @DSL_DEV_PRIVATE(i32* %125)
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load i32*, i32** %7, align 8
  %131 = call %struct.TYPE_4__* @DSL_DEV_PRIVATE(i32* %130)
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = bitcast i32* %133 to i8*
  %135 = load i32, i32* @MSG_LENGTH, align 4
  %136 = mul nsw i32 %135, 2
  %137 = call i32 @memcpy(i8* %129, i8* %134, i32 %136)
  %138 = load i32*, i32** %7, align 8
  %139 = call %struct.TYPE_4__* @DSL_DEV_PRIVATE(i32* %138)
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 4080
  %145 = ashr i32 %144, 4
  %146 = load i32, i32* @D2H_AUTONOMOUS_MODEM_READY_MSG, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %119
  %149 = call i32 @IFX_MEI_DMSG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i32*, i32** %7, align 8
  %151 = call %struct.TYPE_4__* @DSL_DEV_PRIVATE(i32* %150)
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 3
  store i32 1, i32* %152, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = call %struct.TYPE_4__* @DSL_DEV_PRIVATE(i32* %153)
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @MEI_WAKEUP_EVENT(i32 %156)
  br label %158

158:                                              ; preds = %148, %119
  br label %159

159:                                              ; preds = %158, %107
  br label %160

160:                                              ; preds = %159, %93
  br label %161

161:                                              ; preds = %160, %59
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %23
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @IFX_MEI_EMSG(i8*) #1

declare dso_local i32 @IFX_MEI_DebugRead(i32*, i32, i32*, i32) #1

declare dso_local i32 @IFX_MEI_DMSG(i8*) #1

declare dso_local i32 @IFX_MEI_LongWordWriteOffset(i32*, i32, i32) #1

declare dso_local i32 @IFX_MEI_MailboxRead(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @DSL_DEV_PRIVATE(i32*) #1

declare dso_local i32 @MEI_WAKEUP_EVENT(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
