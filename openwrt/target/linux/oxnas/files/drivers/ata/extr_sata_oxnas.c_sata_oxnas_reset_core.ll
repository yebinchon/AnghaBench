; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_reset_core.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_reset_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32*, %struct.sata_oxnas_host_priv* }
%struct.sata_oxnas_host_priv = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_host*)* @sata_oxnas_reset_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_oxnas_reset_core(%struct.ata_host* %0) #0 {
  %2 = alloca %struct.ata_host*, align 8
  %3 = alloca %struct.sata_oxnas_host_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ata_host* %0, %struct.ata_host** %2, align 8
  %5 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %6 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %5, i32 0, i32 1
  %7 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %6, align 8
  store %struct.sata_oxnas_host_priv* %7, %struct.sata_oxnas_host_priv** %3, align 8
  %8 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %3, align 8
  %10 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_prepare_enable(i32 %11)
  %13 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %3, align 8
  %14 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @reset_control_assert(i32 %15)
  %17 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %3, align 8
  %18 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @reset_control_assert(i32 %19)
  %21 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %3, align 8
  %22 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @reset_control_assert(i32 %23)
  %25 = call i32 @udelay(i32 50)
  %26 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %3, align 8
  %27 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @reset_control_deassert(i32 %28)
  %30 = call i32 @udelay(i32 50)
  %31 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %3, align 8
  %32 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @reset_control_deassert(i32 %33)
  %35 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %3, align 8
  %36 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @reset_control_deassert(i32 %37)
  %39 = call i32 @udelay(i32 50)
  %40 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %41 = call i32 @workaround5458(%struct.ata_host* %40)
  %42 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %43 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sata_oxnas_link_write(i32 %46, i32 96, i32 10632)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %63, %1
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %3, align 8
  %51 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %56 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sata_oxnas_link_write(i32 %61, i32 112, i32 349737)
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %48

66:                                               ; preds = %48
  %67 = call i32 @udelay(i32 50)
  ret void
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @workaround5458(%struct.ata_host*) #1

declare dso_local i32 @sata_oxnas_link_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
