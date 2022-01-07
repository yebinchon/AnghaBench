; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_time_t_to_timestamptz.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_time_t_to_timestamptz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POSTGRES_EPOCH_JDATE = common dso_local global i32 0, align 4
@UNIX_EPOCH_JDATE = common dso_local global i32 0, align 4
@SECS_PER_DAY = common dso_local global i32 0, align 4
@USECS_PER_SEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @time_t_to_timestamptz(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i32, i32* @POSTGRES_EPOCH_JDATE, align 4
  %6 = load i32, i32* @UNIX_EPOCH_JDATE, align 4
  %7 = sub nsw i32 %5, %6
  %8 = load i32, i32* @SECS_PER_DAY, align 4
  %9 = mul nsw i32 %7, %8
  %10 = sext i32 %9 to i64
  %11 = sub nsw i64 %4, %10
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* @USECS_PER_SEC, align 8
  %13 = load i64, i64* %3, align 8
  %14 = mul nsw i64 %13, %12
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  ret i64 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
