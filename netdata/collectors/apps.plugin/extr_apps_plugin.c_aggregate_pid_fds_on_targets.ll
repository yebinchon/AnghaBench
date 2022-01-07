; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_aggregate_pid_fds_on_targets.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_aggregate_pid_fds_on_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_stat = type { i64, %struct.pid_fd*, %struct.target*, %struct.target*, %struct.target*, i32 }
%struct.pid_fd = type { i32 }
%struct.target = type { i32 }

@all_files_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pid_stat*)* @aggregate_pid_fds_on_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggregate_pid_fds_on_targets(%struct.pid_stat* %0) #0 {
  %2 = alloca %struct.pid_stat*, align 8
  %3 = alloca %struct.target*, align 8
  %4 = alloca %struct.target*, align 8
  %5 = alloca %struct.target*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pid_fd*, align 8
  %9 = alloca i32, align 4
  store %struct.pid_stat* %0, %struct.pid_stat** %2, align 8
  %10 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %11 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %76

19:                                               ; preds = %1
  %20 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %21 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %20, i32 0, i32 4
  %22 = load %struct.target*, %struct.target** %21, align 8
  store %struct.target* %22, %struct.target** %3, align 8
  %23 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %24 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %23, i32 0, i32 3
  %25 = load %struct.target*, %struct.target** %24, align 8
  store %struct.target* %25, %struct.target** %4, align 8
  %26 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %27 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %26, i32 0, i32 2
  %28 = load %struct.target*, %struct.target** %27, align 8
  store %struct.target* %28, %struct.target** %5, align 8
  %29 = load %struct.target*, %struct.target** %3, align 8
  %30 = call i32 @reallocate_target_fds(%struct.target* %29)
  %31 = load %struct.target*, %struct.target** %4, align 8
  %32 = call i32 @reallocate_target_fds(%struct.target* %31)
  %33 = load %struct.target*, %struct.target** %5, align 8
  %34 = call i32 @reallocate_target_fds(%struct.target* %33)
  %35 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %36 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  %38 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %39 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %38, i32 0, i32 1
  %40 = load %struct.pid_fd*, %struct.pid_fd** %39, align 8
  store %struct.pid_fd* %40, %struct.pid_fd** %8, align 8
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %73, %19
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %41
  %46 = load %struct.pid_fd*, %struct.pid_fd** %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.pid_fd, %struct.pid_fd* %46, i64 %47
  %49 = getelementptr inbounds %struct.pid_fd, %struct.pid_fd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @all_files_size, align 4
  %56 = icmp sge i32 %54, %55
  br label %57

57:                                               ; preds = %53, %45
  %58 = phi i1 [ true, %45 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @likely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %73

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.target*, %struct.target** %3, align 8
  %66 = call i32 @aggregate_fd_on_target(i32 %64, %struct.target* %65)
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.target*, %struct.target** %4, align 8
  %69 = call i32 @aggregate_fd_on_target(i32 %67, %struct.target* %68)
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.target*, %struct.target** %5, align 8
  %72 = call i32 @aggregate_fd_on_target(i32 %70, %struct.target* %71)
  br label %73

73:                                               ; preds = %63, %62
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %41

76:                                               ; preds = %18, %41
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @reallocate_target_fds(%struct.target*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @aggregate_fd_on_target(i32, %struct.target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
