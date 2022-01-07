; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_cleanup_negative_pid_fds.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_cleanup_negative_pid_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_stat = type { i64, %struct.pid_fd* }
%struct.pid_fd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pid_stat*)* @cleanup_negative_pid_fds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_negative_pid_fds(%struct.pid_stat* %0) #0 {
  %2 = alloca %struct.pid_stat*, align 8
  %3 = alloca %struct.pid_fd*, align 8
  %4 = alloca %struct.pid_fd*, align 8
  %5 = alloca i32, align 4
  store %struct.pid_stat* %0, %struct.pid_stat** %2, align 8
  %6 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %7 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %6, i32 0, i32 1
  %8 = load %struct.pid_fd*, %struct.pid_fd** %7, align 8
  store %struct.pid_fd* %8, %struct.pid_fd** %3, align 8
  %9 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %10 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %9, i32 0, i32 1
  %11 = load %struct.pid_fd*, %struct.pid_fd** %10, align 8
  %12 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %13 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.pid_fd, %struct.pid_fd* %11, i64 %14
  store %struct.pid_fd* %15, %struct.pid_fd** %4, align 8
  br label %16

16:                                               ; preds = %35, %1
  %17 = load %struct.pid_fd*, %struct.pid_fd** %3, align 8
  %18 = load %struct.pid_fd*, %struct.pid_fd** %4, align 8
  %19 = icmp ult %struct.pid_fd* %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load %struct.pid_fd*, %struct.pid_fd** %3, align 8
  %22 = getelementptr inbounds %struct.pid_fd, %struct.pid_fd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @file_descriptor_not_used(i32 %31)
  %33 = load %struct.pid_fd*, %struct.pid_fd** %3, align 8
  %34 = call i32 @clear_pid_fd(%struct.pid_fd* %33)
  br label %35

35:                                               ; preds = %29, %20
  %36 = load %struct.pid_fd*, %struct.pid_fd** %3, align 8
  %37 = getelementptr inbounds %struct.pid_fd, %struct.pid_fd* %36, i32 1
  store %struct.pid_fd* %37, %struct.pid_fd** %3, align 8
  br label %16

38:                                               ; preds = %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @file_descriptor_not_used(i32) #1

declare dso_local i32 @clear_pid_fd(%struct.pid_fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
