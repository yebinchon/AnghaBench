; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/meira/extr_TWIlib.c_TWIInit.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/meira/extr_TWIlib.c_TWIInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@Ready = common dso_local global i32 0, align 4
@TWIInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TWSR = common dso_local global i64 0, align 8
@F_CPU = common dso_local global i32 0, align 4
@TWI_FREQ = common dso_local global i32 0, align 4
@TWBR = common dso_local global i32 0, align 4
@TWIE = common dso_local global i32 0, align 4
@TWEN = common dso_local global i32 0, align 4
@TWCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TWIInit() #0 {
  %1 = load i32, i32* @Ready, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TWIInfo, i32 0, i32 2), align 8
  store i32 255, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TWIInfo, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TWIInfo, i32 0, i32 1), align 8
  store i64 0, i64* @TWSR, align 8
  %2 = load i32, i32* @F_CPU, align 4
  %3 = load i32, i32* @TWI_FREQ, align 4
  %4 = sdiv i32 %2, %3
  %5 = sub nsw i32 %4, 16
  %6 = sdiv i32 %5, 2
  store i32 %6, i32* @TWBR, align 4
  %7 = load i32, i32* @TWIE, align 4
  %8 = shl i32 1, %7
  %9 = load i32, i32* @TWEN, align 4
  %10 = shl i32 1, %9
  %11 = or i32 %8, %10
  store i32 %11, i32* @TWCR, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
