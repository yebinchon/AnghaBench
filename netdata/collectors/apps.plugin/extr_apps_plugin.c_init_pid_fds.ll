; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_init_pid_fds.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_init_pid_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_stat = type { %struct.pid_fd* }
%struct.pid_fd = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pid_stat*, i64, i64)* @init_pid_fds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pid_fds(%struct.pid_stat* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pid_stat*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pid_fd*, align 8
  %8 = alloca %struct.pid_fd*, align 8
  %9 = alloca i64, align 8
  store %struct.pid_stat* %0, %struct.pid_stat** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %11 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %10, i32 0, i32 0
  %12 = load %struct.pid_fd*, %struct.pid_fd** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.pid_fd, %struct.pid_fd* %12, i64 %13
  store %struct.pid_fd* %14, %struct.pid_fd** %7, align 8
  %15 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %16 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %15, i32 0, i32 0
  %17 = load %struct.pid_fd*, %struct.pid_fd** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %18, %19
  %21 = getelementptr inbounds %struct.pid_fd, %struct.pid_fd* %17, i64 %20
  store %struct.pid_fd* %21, %struct.pid_fd** %8, align 8
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %27, %3
  %24 = load %struct.pid_fd*, %struct.pid_fd** %7, align 8
  %25 = load %struct.pid_fd*, %struct.pid_fd** %8, align 8
  %26 = icmp ult %struct.pid_fd* %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.pid_fd*, %struct.pid_fd** %7, align 8
  %29 = getelementptr inbounds %struct.pid_fd, %struct.pid_fd* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.pid_fd*, %struct.pid_fd** %7, align 8
  %31 = call i32 @clear_pid_fd(%struct.pid_fd* %30)
  %32 = load %struct.pid_fd*, %struct.pid_fd** %7, align 8
  %33 = getelementptr inbounds %struct.pid_fd, %struct.pid_fd* %32, i32 1
  store %struct.pid_fd* %33, %struct.pid_fd** %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %9, align 8
  br label %23

36:                                               ; preds = %23
  ret void
}

declare dso_local i32 @clear_pid_fd(%struct.pid_fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
