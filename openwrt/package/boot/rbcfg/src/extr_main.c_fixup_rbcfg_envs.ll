; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/rbcfg/src/extr_main.c_fixup_rbcfg_envs.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/rbcfg/src/extr_main.c_fixup_rbcfg_envs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbcfg_value = type { i64, i32, %struct.rbcfg_value* }

@rbcfg_cpu_freq_qca953x = common dso_local global %struct.rbcfg_value* null, align 8
@rbcfg_cpu_freq_ar9344 = common dso_local global %struct.rbcfg_value* null, align 8
@rbcfg_envs = common dso_local global %struct.rbcfg_value* null, align 8
@RB_ID_CPU_FREQ = common dso_local global i64 0, align 8
@RBCFG_SOC_UNKNOWN = common dso_local global i32 0, align 4
@RB_ID_TERMINATOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fixup_rbcfg_envs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_rbcfg_envs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbcfg_value*, align 8
  %5 = call i32 (...) @cpuinfo_find_soc()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %15 [
    i32 128, label %7
    i32 129, label %11
  ]

7:                                                ; preds = %0
  %8 = load %struct.rbcfg_value*, %struct.rbcfg_value** @rbcfg_cpu_freq_qca953x, align 8
  store %struct.rbcfg_value* %8, %struct.rbcfg_value** %4, align 8
  %9 = load %struct.rbcfg_value*, %struct.rbcfg_value** @rbcfg_cpu_freq_qca953x, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.rbcfg_value* %9)
  store i32 %10, i32* %2, align 4
  br label %15

11:                                               ; preds = %0
  %12 = load %struct.rbcfg_value*, %struct.rbcfg_value** @rbcfg_cpu_freq_ar9344, align 8
  store %struct.rbcfg_value* %12, %struct.rbcfg_value** %4, align 8
  %13 = load %struct.rbcfg_value*, %struct.rbcfg_value** @rbcfg_cpu_freq_ar9344, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.rbcfg_value* %13)
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %0, %11, %7
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %56, %15
  %17 = load i32, i32* %1, align 4
  %18 = load %struct.rbcfg_value*, %struct.rbcfg_value** @rbcfg_envs, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.rbcfg_value* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %16
  %22 = load i64, i64* @RB_ID_CPU_FREQ, align 8
  %23 = load %struct.rbcfg_value*, %struct.rbcfg_value** @rbcfg_envs, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %23, i64 %25
  %27 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %22, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %21
  %31 = load i32, i32* @RBCFG_SOC_UNKNOWN, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i64, i64* @RB_ID_TERMINATOR, align 8
  %36 = load %struct.rbcfg_value*, %struct.rbcfg_value** @rbcfg_envs, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %36, i64 %38
  %40 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %39, i32 0, i32 0
  store i64 %35, i64* %40, align 8
  br label %54

41:                                               ; preds = %30
  %42 = load %struct.rbcfg_value*, %struct.rbcfg_value** %4, align 8
  %43 = load %struct.rbcfg_value*, %struct.rbcfg_value** @rbcfg_envs, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %43, i64 %45
  %47 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %46, i32 0, i32 2
  store %struct.rbcfg_value* %42, %struct.rbcfg_value** %47, align 8
  %48 = load i32, i32* %2, align 4
  %49 = load %struct.rbcfg_value*, %struct.rbcfg_value** @rbcfg_envs, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %49, i64 %51
  %53 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %52, i32 0, i32 1
  store i32 %48, i32* %53, align 8
  br label %54

54:                                               ; preds = %41, %34
  br label %59

55:                                               ; preds = %21
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %16

59:                                               ; preds = %54, %16
  ret void
}

declare dso_local i32 @cpuinfo_find_soc(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.rbcfg_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
