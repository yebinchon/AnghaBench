; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_restart.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar934x_nfc = type { i32 (i32)*, i32 }

@NAND_CMD_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar934x_nfc*)* @ar934x_nfc_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar934x_nfc_restart(%struct.ar934x_nfc* %0) #0 {
  %2 = alloca %struct.ar934x_nfc*, align 8
  %3 = alloca i32, align 4
  store %struct.ar934x_nfc* %0, %struct.ar934x_nfc** %2, align 8
  %4 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %5 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %4, i32 0, i32 0
  %6 = load i32 (i32)*, i32 (i32)** %5, align 8
  %7 = icmp ne i32 (i32)* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %10 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %9, i32 0, i32 0
  %11 = load i32 (i32)*, i32 (i32)** %10, align 8
  %12 = call i32 %11(i32 -1)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %15 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  %17 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %18 = call i32 @ar934x_nfc_hw_init(%struct.ar934x_nfc* %17)
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %21 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %23 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = icmp ne i32 (i32)* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %28 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %27, i32 0, i32 0
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = call i32 %29(i32 0)
  br label %31

31:                                               ; preds = %26, %13
  %32 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %33 = load i32, i32* @NAND_CMD_RESET, align 4
  %34 = call i32 @ar934x_nfc_send_cmd(%struct.ar934x_nfc* %32, i32 %33)
  ret void
}

declare dso_local i32 @ar934x_nfc_hw_init(%struct.ar934x_nfc*) #1

declare dso_local i32 @ar934x_nfc_send_cmd(%struct.ar934x_nfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
