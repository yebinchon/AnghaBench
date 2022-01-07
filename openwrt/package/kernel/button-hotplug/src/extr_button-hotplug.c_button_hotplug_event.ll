; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/button-hotplug/src/extr_button-hotplug.c_button_hotplug_event.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/button-hotplug/src/extr_button-hotplug.c_button_hotplug_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.input_handle = type { %struct.bh_priv* }
%struct.bh_priv = type { i64* }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"event type=%u, code=%u, value=%d\0A\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@button_map = common dso_local global %struct.TYPE_2__* null, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_handle*, i32, i32, i32)* @button_hotplug_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @button_hotplug_event(%struct.input_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.input_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bh_priv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.input_handle* %0, %struct.input_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.input_handle*, %struct.input_handle** %5, align 8
  %13 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %12, i32 0, i32 0
  %14 = load %struct.bh_priv*, %struct.bh_priv** %13, align 8
  store %struct.bh_priv* %14, %struct.bh_priv** %9, align 8
  %15 = load i64, i64* @jiffies, align 8
  store i64 %15, i64* %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @BH_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @EV_KEY, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %57

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @button_get_index(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %57

30:                                               ; preds = %24
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @button_map, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.bh_priv*, %struct.bh_priv** %9, align 8
  %39 = getelementptr inbounds %struct.bh_priv, %struct.bh_priv* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %37, %44
  %46 = load i64, i64* @HZ, align 8
  %47 = udiv i64 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @button_hotplug_create_event(i32 %36, i64 %47, i32 %48)
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.bh_priv*, %struct.bh_priv** %9, align 8
  %52 = getelementptr inbounds %struct.bh_priv, %struct.bh_priv* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %50, i64* %56, align 8
  br label %57

57:                                               ; preds = %30, %29, %23
  ret void
}

declare dso_local i32 @BH_DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @button_get_index(i32) #1

declare dso_local i32 @button_hotplug_create_event(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
