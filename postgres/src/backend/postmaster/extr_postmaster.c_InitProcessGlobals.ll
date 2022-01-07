; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_InitProcessGlobals.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_InitProcessGlobals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MyProcPid = common dso_local global i64 0, align 8
@MyStartTimestamp = common dso_local global i64 0, align 8
@MyStartTime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitProcessGlobals() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @getpid()
  store i64 %2, i64* @MyProcPid, align 8
  %3 = call i64 (...) @GetCurrentTimestamp()
  store i64 %3, i64* @MyStartTimestamp, align 8
  %4 = load i64, i64* @MyStartTimestamp, align 8
  %5 = call i32 @timestamptz_to_time_t(i64 %4)
  store i32 %5, i32* @MyStartTime, align 4
  %6 = call i32 @pg_strong_random(i32* %1, i32 4)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* @MyProcPid, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i64, i64* @MyStartTimestamp, align 8
  %12 = trunc i64 %11 to i32
  %13 = shl i32 %12, 12
  %14 = xor i32 %10, %13
  %15 = load i64, i64* @MyStartTimestamp, align 8
  %16 = trunc i64 %15 to i32
  %17 = ashr i32 %16, 20
  %18 = xor i32 %14, %17
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %8, %0
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @srandom(i32 %20)
  ret void
}

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @GetCurrentTimestamp(...) #1

declare dso_local i32 @timestamptz_to_time_t(i64) #1

declare dso_local i32 @pg_strong_random(i32*, i32) #1

declare dso_local i32 @srandom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
