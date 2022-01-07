; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_proc_get.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_proc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_scoreboard_s = type { i32, %struct.fpm_scoreboard_proc_s** }
%struct.fpm_scoreboard_proc_s = type { i32 }

@fpm_scoreboard = common dso_local global %struct.fpm_scoreboard_s* null, align 8
@fpm_scoreboard_i = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpm_scoreboard_proc_s* @fpm_scoreboard_proc_get(%struct.fpm_scoreboard_s* %0, i32 %1) #0 {
  %3 = alloca %struct.fpm_scoreboard_proc_s*, align 8
  %4 = alloca %struct.fpm_scoreboard_s*, align 8
  %5 = alloca i32, align 4
  store %struct.fpm_scoreboard_s* %0, %struct.fpm_scoreboard_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %7 = icmp ne %struct.fpm_scoreboard_s* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** @fpm_scoreboard, align 8
  store %struct.fpm_scoreboard_s* %9, %struct.fpm_scoreboard_s** %4, align 8
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %12 = icmp ne %struct.fpm_scoreboard_s* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store %struct.fpm_scoreboard_proc_s* null, %struct.fpm_scoreboard_proc_s** %3, align 8
  br label %37

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @fpm_scoreboard_i, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %25 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp uge i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %19
  store %struct.fpm_scoreboard_proc_s* null, %struct.fpm_scoreboard_proc_s** %3, align 8
  br label %37

29:                                               ; preds = %22
  %30 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %31 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %30, i32 0, i32 1
  %32 = load %struct.fpm_scoreboard_proc_s**, %struct.fpm_scoreboard_proc_s*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %32, i64 %34
  %36 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %35, align 8
  store %struct.fpm_scoreboard_proc_s* %36, %struct.fpm_scoreboard_proc_s** %3, align 8
  br label %37

37:                                               ; preds = %29, %28, %13
  %38 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %3, align 8
  ret %struct.fpm_scoreboard_proc_s* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
