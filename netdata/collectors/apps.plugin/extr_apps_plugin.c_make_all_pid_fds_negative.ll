; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_make_all_pid_fds_negative.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_make_all_pid_fds_negative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_stat = type { i64, %struct.pid_fd* }
%struct.pid_fd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pid_stat*)* @make_all_pid_fds_negative to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_all_pid_fds_negative(%struct.pid_stat* %0) #0 {
  %2 = alloca %struct.pid_stat*, align 8
  %3 = alloca %struct.pid_fd*, align 8
  %4 = alloca %struct.pid_fd*, align 8
  store %struct.pid_stat* %0, %struct.pid_stat** %2, align 8
  %5 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %6 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %5, i32 0, i32 1
  %7 = load %struct.pid_fd*, %struct.pid_fd** %6, align 8
  store %struct.pid_fd* %7, %struct.pid_fd** %3, align 8
  %8 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %9 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %8, i32 0, i32 1
  %10 = load %struct.pid_fd*, %struct.pid_fd** %9, align 8
  %11 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %12 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.pid_fd, %struct.pid_fd* %10, i64 %13
  store %struct.pid_fd* %14, %struct.pid_fd** %4, align 8
  br label %15

15:                                               ; preds = %19, %1
  %16 = load %struct.pid_fd*, %struct.pid_fd** %3, align 8
  %17 = load %struct.pid_fd*, %struct.pid_fd** %4, align 8
  %18 = icmp ult %struct.pid_fd* %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load %struct.pid_fd*, %struct.pid_fd** %3, align 8
  %21 = getelementptr inbounds %struct.pid_fd, %struct.pid_fd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 0, %22
  %24 = load %struct.pid_fd*, %struct.pid_fd** %3, align 8
  %25 = getelementptr inbounds %struct.pid_fd, %struct.pid_fd* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.pid_fd*, %struct.pid_fd** %3, align 8
  %27 = getelementptr inbounds %struct.pid_fd, %struct.pid_fd* %26, i32 1
  store %struct.pid_fd* %27, %struct.pid_fd** %3, align 8
  br label %15

28:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
