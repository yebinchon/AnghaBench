; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_autovac_refresh_stats.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_autovac_refresh_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@autovac_refresh_stats.last_read = internal global i32 0, align 4
@STATS_READ_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @autovac_refresh_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autovac_refresh_stats() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @IsAutoVacuumLauncherProcess()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = call i32 (...) @GetCurrentTimestamp()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @autovac_refresh_stats.last_read, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @STATS_READ_DELAY, align 4
  %9 = call i32 @TimestampDifferenceExceeds(i32 %6, i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %16

12:                                               ; preds = %4
  %13 = load i32, i32* %1, align 4
  store i32 %13, i32* @autovac_refresh_stats.last_read, align 4
  br label %14

14:                                               ; preds = %12, %0
  %15 = call i32 (...) @pgstat_clear_snapshot()
  br label %16

16:                                               ; preds = %14, %11
  ret void
}

declare dso_local i64 @IsAutoVacuumLauncherProcess(...) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @TimestampDifferenceExceeds(i32, i32, i32) #1

declare dso_local i32 @pgstat_clear_snapshot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
