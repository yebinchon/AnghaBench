; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_proc_acquire.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_proc_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_scoreboard_proc_s = type { i32 }
%struct.fpm_scoreboard_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpm_scoreboard_proc_s* @fpm_scoreboard_proc_acquire(%struct.fpm_scoreboard_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fpm_scoreboard_proc_s*, align 8
  %5 = alloca %struct.fpm_scoreboard_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fpm_scoreboard_proc_s*, align 8
  store %struct.fpm_scoreboard_s* %0, %struct.fpm_scoreboard_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.fpm_scoreboard_proc_s* @fpm_scoreboard_proc_get(%struct.fpm_scoreboard_s* %9, i32 %10)
  store %struct.fpm_scoreboard_proc_s* %11, %struct.fpm_scoreboard_proc_s** %8, align 8
  %12 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %8, align 8
  %13 = icmp ne %struct.fpm_scoreboard_proc_s* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.fpm_scoreboard_proc_s* null, %struct.fpm_scoreboard_proc_s** %4, align 8
  br label %24

15:                                               ; preds = %3
  %16 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %8, align 8
  %17 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %16, i32 0, i32 0
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @fpm_spinlock(i32* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store %struct.fpm_scoreboard_proc_s* null, %struct.fpm_scoreboard_proc_s** %4, align 8
  br label %24

22:                                               ; preds = %15
  %23 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %8, align 8
  store %struct.fpm_scoreboard_proc_s* %23, %struct.fpm_scoreboard_proc_s** %4, align 8
  br label %24

24:                                               ; preds = %22, %21, %14
  %25 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %4, align 8
  ret %struct.fpm_scoreboard_proc_s* %25
}

declare dso_local %struct.fpm_scoreboard_proc_s* @fpm_scoreboard_proc_get(%struct.fpm_scoreboard_s*, i32) #1

declare dso_local i32 @fpm_spinlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
