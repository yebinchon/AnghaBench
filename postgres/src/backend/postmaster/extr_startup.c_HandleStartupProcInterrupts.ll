; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_startup.c_HandleStartupProcInterrupts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_startup.c_HandleStartupProcInterrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@got_SIGHUP = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@shutdown_requested = common dso_local global i64 0, align 8
@IsUnderPostmaster = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HandleStartupProcInterrupts() #0 {
  %1 = load i32, i32* @got_SIGHUP, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  store i32 0, i32* @got_SIGHUP, align 4
  %4 = load i32, i32* @PGC_SIGHUP, align 4
  %5 = call i32 @ProcessConfigFile(i32 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i64, i64* @shutdown_requested, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @proc_exit(i32 1)
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i64, i64* @IsUnderPostmaster, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = call i32 (...) @PostmasterIsAlive()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @ProcessConfigFile(i32) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i32 @PostmasterIsAlive(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
