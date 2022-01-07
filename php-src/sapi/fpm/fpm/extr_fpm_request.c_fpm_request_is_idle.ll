; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_request.c_fpm_request_is_idle.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_request.c_fpm_request_is_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_child_s = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fpm_scoreboard_proc_s = type { i64 }

@FPM_REQUEST_ACCEPTING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_request_is_idle(%struct.fpm_child_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpm_child_s*, align 8
  %4 = alloca %struct.fpm_scoreboard_proc_s*, align 8
  store %struct.fpm_child_s* %0, %struct.fpm_child_s** %3, align 8
  %5 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %6 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %11 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.fpm_scoreboard_proc_s* @fpm_scoreboard_proc_get(i32 %9, i32 %12)
  store %struct.fpm_scoreboard_proc_s* %13, %struct.fpm_scoreboard_proc_s** %4, align 8
  %14 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %4, align 8
  %15 = icmp ne %struct.fpm_scoreboard_proc_s* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %4, align 8
  %19 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FPM_REQUEST_ACCEPTING, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %17, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.fpm_scoreboard_proc_s* @fpm_scoreboard_proc_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
