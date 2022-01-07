; ModuleID = '/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_get_inf_from_bus_id.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_get_inf_from_bus_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panda_inf_priv = type { i32 }
%struct.panda_dev_priv = type { %struct.panda_inf_priv** }

@PANDA_NUM_CAN_INTERFACES = common dso_local global i32 0, align 4
@can_numbering = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.panda_inf_priv* @panda_get_inf_from_bus_id(%struct.panda_dev_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.panda_inf_priv*, align 8
  %4 = alloca %struct.panda_dev_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.panda_dev_priv* %0, %struct.panda_dev_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @PANDA_NUM_CAN_INTERFACES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load i32*, i32** @can_numbering, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %4, align 8
  %21 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %20, i32 0, i32 0
  %22 = load %struct.panda_inf_priv**, %struct.panda_inf_priv*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.panda_inf_priv*, %struct.panda_inf_priv** %22, i64 %24
  %26 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %25, align 8
  store %struct.panda_inf_priv* %26, %struct.panda_inf_priv** %3, align 8
  br label %32

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %7

31:                                               ; preds = %7
  store %struct.panda_inf_priv* null, %struct.panda_inf_priv** %3, align 8
  br label %32

32:                                               ; preds = %31, %19
  %33 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %3, align 8
  ret %struct.panda_inf_priv* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
