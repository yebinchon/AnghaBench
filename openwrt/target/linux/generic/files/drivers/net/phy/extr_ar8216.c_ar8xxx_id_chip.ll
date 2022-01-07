; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_id_chip.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_id_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32, i32, i32* }

@ar8216_chip = common dso_local global i32 0, align 4
@ar8236_chip = common dso_local global i32 0, align 4
@ar8316_chip = common dso_local global i32 0, align 4
@ar8327_chip = common dso_local global i32 0, align 4
@ar8337_chip = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ar8216: Unknown Atheros device [ver=%d, rev=%d]\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*)* @ar8xxx_id_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8xxx_id_chip(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  %5 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %6 = call i32 @ar8xxx_read_id(%struct.ar8xxx_priv* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %30 [
    i32 132, label %15
    i32 131, label %18
    i32 130, label %21
    i32 129, label %24
    i32 128, label %27
  ]

15:                                               ; preds = %11
  %16 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %16, i32 0, i32 2
  store i32* @ar8216_chip, i32** %17, align 8
  br label %40

18:                                               ; preds = %11
  %19 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %20 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %19, i32 0, i32 2
  store i32* @ar8236_chip, i32** %20, align 8
  br label %40

21:                                               ; preds = %11
  %22 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %23 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %22, i32 0, i32 2
  store i32* @ar8316_chip, i32** %23, align 8
  br label %40

24:                                               ; preds = %11
  %25 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %25, i32 0, i32 2
  store i32* @ar8327_chip, i32** %26, align 8
  br label %40

27:                                               ; preds = %11
  %28 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %28, i32 0, i32 2
  store i32* @ar8337_chip, i32** %29, align 8
  br label %40

30:                                               ; preds = %11
  %31 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %32 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %35 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %27, %24, %21, %18, %15
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %30, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ar8xxx_read_id(%struct.ar8xxx_priv*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
