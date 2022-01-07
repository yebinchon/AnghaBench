; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_clear_reg_access_error.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_clear_reg_access_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.sata_oxnas_port_priv* }
%struct.sata_oxnas_port_priv = type { i32* }

@INT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@INT_REG_ACCESS_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"clearing register access error on port %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"register access error didn't clear\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @sata_oxnas_clear_reg_access_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_oxnas_clear_reg_access_error(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.sata_oxnas_port_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 1
  %8 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %7, align 8
  store %struct.sata_oxnas_port_priv* %8, %struct.sata_oxnas_port_priv** %3, align 8
  %9 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %10 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @INT_STATUS, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @ioread32(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @INT_REG_ACCESS_ERR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %24 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @INT_REG_ACCESS_ERR, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @INT_STATUS, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @iowrite32(i32 %27, i32* %31)
  br label %33

33:                                               ; preds = %22, %1
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @INT_STATUS, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @ioread32(i32* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @INT_REG_ACCESS_ERR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %33
  ret void
}

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
