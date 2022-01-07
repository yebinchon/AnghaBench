; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_GetCurrentTimestamp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_GetCurrentTimestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@POSTGRES_EPOCH_JDATE = common dso_local global i32 0, align 4
@UNIX_EPOCH_JDATE = common dso_local global i32 0, align 4
@SECS_PER_DAY = common dso_local global i32 0, align 4
@USECS_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetCurrentTimestamp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 8
  %3 = call i32 @gettimeofday(%struct.timeval* %2, i32* null)
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = load i32, i32* @POSTGRES_EPOCH_JDATE, align 4
  %8 = load i32, i32* @UNIX_EPOCH_JDATE, align 4
  %9 = sub nsw i32 %7, %8
  %10 = load i32, i32* @SECS_PER_DAY, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sub nsw i32 %6, %11
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @USECS_PER_SEC, align 4
  %15 = mul nsw i32 %13, %14
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %15, %17
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
