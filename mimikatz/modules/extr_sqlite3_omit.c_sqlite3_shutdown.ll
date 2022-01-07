; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_sqlite3_shutdown.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_sqlite3_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@sqlite3GlobalConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@sqlite3_data_directory = common dso_local global i64 0, align 8
@sqlite3_temp_directory = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_shutdown() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3GlobalConfig, i32 0, i32 3), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = call i32 (...) @sqlite3_os_end()
  %5 = call i32 (...) @sqlite3_reset_auto_extension()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3GlobalConfig, i32 0, i32 3), align 8
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3GlobalConfig, i32 0, i32 2), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 (...) @sqlite3PcacheShutdown()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3GlobalConfig, i32 0, i32 2), align 8
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3GlobalConfig, i32 0, i32 1), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (...) @sqlite3MallocEnd()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3GlobalConfig, i32 0, i32 1), align 8
  store i64 0, i64* @sqlite3_data_directory, align 8
  store i64 0, i64* @sqlite3_temp_directory, align 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3GlobalConfig, i32 0, i32 0), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @sqlite3MutexEnd()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3GlobalConfig, i32 0, i32 0), align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %22
}

declare dso_local i32 @sqlite3_os_end(...) #1

declare dso_local i32 @sqlite3_reset_auto_extension(...) #1

declare dso_local i32 @sqlite3PcacheShutdown(...) #1

declare dso_local i32 @sqlite3MallocEnd(...) #1

declare dso_local i32 @sqlite3MutexEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
