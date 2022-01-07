; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_acquire.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_scoreboard_s = type { i32 }

@fpm_scoreboard = common dso_local global %struct.fpm_scoreboard_s* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpm_scoreboard_s* @fpm_scoreboard_acquire(%struct.fpm_scoreboard_s* %0, i32 %1) #0 {
  %3 = alloca %struct.fpm_scoreboard_s*, align 8
  %4 = alloca %struct.fpm_scoreboard_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fpm_scoreboard_s*, align 8
  store %struct.fpm_scoreboard_s* %0, %struct.fpm_scoreboard_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %8 = icmp ne %struct.fpm_scoreboard_s* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  br label %13

11:                                               ; preds = %2
  %12 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** @fpm_scoreboard, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi %struct.fpm_scoreboard_s* [ %10, %9 ], [ %12, %11 ]
  store %struct.fpm_scoreboard_s* %14, %struct.fpm_scoreboard_s** %6, align 8
  %15 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %6, align 8
  %16 = icmp ne %struct.fpm_scoreboard_s* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store %struct.fpm_scoreboard_s* null, %struct.fpm_scoreboard_s** %3, align 8
  br label %27

18:                                               ; preds = %13
  %19 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %6, align 8
  %20 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @fpm_spinlock(i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store %struct.fpm_scoreboard_s* null, %struct.fpm_scoreboard_s** %3, align 8
  br label %27

25:                                               ; preds = %18
  %26 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %6, align 8
  store %struct.fpm_scoreboard_s* %26, %struct.fpm_scoreboard_s** %3, align 8
  br label %27

27:                                               ; preds = %25, %24, %17
  %28 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %3, align 8
  ret %struct.fpm_scoreboard_s* %28
}

declare dso_local i32 @fpm_spinlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
