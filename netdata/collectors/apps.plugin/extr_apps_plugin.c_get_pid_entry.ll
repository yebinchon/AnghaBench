; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_get_pid_entry.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_get_pid_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_stat = type { i32, i64, %struct.pid_stat*, %struct.pid_stat*, i32 }

@all_pids = common dso_local global %struct.pid_stat** null, align 8
@MAX_SPARE_FDS = common dso_local global i32 0, align 4
@root_of_pids = common dso_local global %struct.pid_stat* null, align 8
@all_pids_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pid_stat* (i64)* @get_pid_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pid_stat* @get_pid_entry(i64 %0) #0 {
  %2 = alloca %struct.pid_stat*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pid_stat*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.pid_stat**, %struct.pid_stat*** @all_pids, align 8
  %6 = load i64, i64* %3, align 8
  %7 = getelementptr inbounds %struct.pid_stat*, %struct.pid_stat** %5, i64 %6
  %8 = load %struct.pid_stat*, %struct.pid_stat** %7, align 8
  %9 = call i64 @unlikely(%struct.pid_stat* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.pid_stat**, %struct.pid_stat*** @all_pids, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.pid_stat*, %struct.pid_stat** %12, i64 %13
  %15 = load %struct.pid_stat*, %struct.pid_stat** %14, align 8
  store %struct.pid_stat* %15, %struct.pid_stat** %2, align 8
  br label %55

16:                                               ; preds = %1
  %17 = call %struct.pid_stat* @callocz(i32 40, i32 1)
  store %struct.pid_stat* %17, %struct.pid_stat** %4, align 8
  %18 = load i32, i32* @MAX_SPARE_FDS, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @mallocz(i32 %21)
  %23 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %24 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @MAX_SPARE_FDS, align 4
  %26 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %27 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %29 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %30 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @init_pid_fds(%struct.pid_stat* %28, i32 0, i32 %31)
  %33 = load %struct.pid_stat*, %struct.pid_stat** @root_of_pids, align 8
  %34 = call i64 @likely(%struct.pid_stat* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %16
  %37 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %38 = load %struct.pid_stat*, %struct.pid_stat** @root_of_pids, align 8
  %39 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %38, i32 0, i32 3
  store %struct.pid_stat* %37, %struct.pid_stat** %39, align 8
  br label %40

40:                                               ; preds = %36, %16
  %41 = load %struct.pid_stat*, %struct.pid_stat** @root_of_pids, align 8
  %42 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %43 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %42, i32 0, i32 2
  store %struct.pid_stat* %41, %struct.pid_stat** %43, align 8
  %44 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  store %struct.pid_stat* %44, %struct.pid_stat** @root_of_pids, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %47 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %49 = load %struct.pid_stat**, %struct.pid_stat*** @all_pids, align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds %struct.pid_stat*, %struct.pid_stat** %49, i64 %50
  store %struct.pid_stat* %48, %struct.pid_stat** %51, align 8
  %52 = load i32, i32* @all_pids_count, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @all_pids_count, align 4
  %54 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  store %struct.pid_stat* %54, %struct.pid_stat** %2, align 8
  br label %55

55:                                               ; preds = %40, %11
  %56 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  ret %struct.pid_stat* %56
}

declare dso_local i64 @unlikely(%struct.pid_stat*) #1

declare dso_local %struct.pid_stat* @callocz(i32, i32) #1

declare dso_local i32 @mallocz(i32) #1

declare dso_local i32 @init_pid_fds(%struct.pid_stat*, i32, i32) #1

declare dso_local i64 @likely(%struct.pid_stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
