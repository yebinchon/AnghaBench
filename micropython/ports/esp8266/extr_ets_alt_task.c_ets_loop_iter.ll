; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_ets_alt_task.c_ets_loop_iter.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_ets_alt_task.c_ets_loop_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_entry = type { i32, i32, i32, i32*, i32 (i32*)* }

@ets_loop_iter_disable = common dso_local global i64 0, align 8
@pend_flag_noise_check = external dso_local global i32, align 4
@emu_tasks = common dso_local global %struct.task_entry* null, align 8
@ets_loop_dont_feed_sw_wdt = common dso_local global i64 0, align 8
@idle_arg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ets_loop_iter() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i64, i64* @ets_loop_iter_disable, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %93

10:                                               ; preds = %0
  %11 = call i32 (...) @system_time_update()
  store i32* getelementptr inbounds (i32, i32* @pend_flag_noise_check, i64 -6), i32** %2, align 8
  store i32 0, i32* %3, align 4
  %12 = load %struct.task_entry*, %struct.task_entry** @emu_tasks, align 8
  store %struct.task_entry* %12, %struct.task_entry** %4, align 8
  br label %13

13:                                               ; preds = %81, %10
  %14 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %15 = load %struct.task_entry*, %struct.task_entry** @emu_tasks, align 8
  %16 = load %struct.task_entry*, %struct.task_entry** @emu_tasks, align 8
  %17 = call i64 @MP_ARRAY_SIZE(%struct.task_entry* %16)
  %18 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %15, i64 %17
  %19 = icmp ult %struct.task_entry* %14, %18
  br i1 %19, label %20, label %84

20:                                               ; preds = %13
  %21 = load i64, i64* @ets_loop_dont_feed_sw_wdt, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 (...) @system_soft_wdt_feed()
  br label %25

25:                                               ; preds = %23, %20
  %26 = call i32 (...) @ets_intr_lock()
  %27 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %28 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %27, i32 0, i32 0
  %29 = load volatile i32, i32* %28, align 8
  %30 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %31 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %30, i32 0, i32 1
  %32 = load volatile i32, i32* %31, align 4
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %79

34:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  %35 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %36 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %35, i32 0, i32 0
  %37 = load volatile i32, i32* %36, align 8
  store i32 %37, i32* %5, align 4
  %38 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %39 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %38, i32 0, i32 1
  %40 = load volatile i32, i32* %39, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %44 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %43, i32 0, i32 0
  %45 = load volatile i32, i32* %44, align 8
  %46 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %47 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %46, i32 0, i32 1
  store volatile i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %34
  %49 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %50 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %49, i32 0, i32 0
  %51 = load volatile i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store volatile i32 %52, i32* %50, align 8
  %53 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %54 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %53, i32 0, i32 2
  %55 = load volatile i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %59 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %58, i32 0, i32 0
  store volatile i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %48
  %61 = load i32*, i32** %2, align 8
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %64 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %63, i32 0, i32 4
  %65 = load volatile i32 (i32*)*, i32 (i32*)** %64, align 8
  %66 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %67 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %66, i32 0, i32 3
  %68 = load volatile i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 %65(i32* %71)
  %73 = load i64, i64* @ets_loop_dont_feed_sw_wdt, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %60
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %2, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %60
  br label %79

79:                                               ; preds = %78, %25
  %80 = call i32 (...) @ets_intr_unlock()
  br label %81

81:                                               ; preds = %79
  %82 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %83 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %82, i32 1
  store %struct.task_entry* %83, %struct.task_entry** %4, align 8
  br label %13

84:                                               ; preds = %13
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  br i1 true, label %88, label %91

88:                                               ; preds = %87
  %89 = load i32, i32* @idle_arg, align 4
  %90 = call i32 @idle_cb(i32 %89)
  br label %91

91:                                               ; preds = %88, %87, %84
  %92 = load i32, i32* %3, align 4
  store i32 %92, i32* %1, align 4
  br label %93

93:                                               ; preds = %91, %9
  %94 = load i32, i32* %1, align 4
  ret i32 %94
}

declare dso_local i32 @system_time_update(...) #1

declare dso_local i64 @MP_ARRAY_SIZE(%struct.task_entry*) #1

declare dso_local i32 @system_soft_wdt_feed(...) #1

declare dso_local i32 @ets_intr_lock(...) #1

declare dso_local i32 @ets_intr_unlock(...) #1

declare dso_local i32 @idle_cb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
