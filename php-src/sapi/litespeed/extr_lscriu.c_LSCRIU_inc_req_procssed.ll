; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_LSCRIU_inc_req_procssed.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_LSCRIU_inc_req_procssed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_requests_count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"LSCRIU (%d): s_requests_count %d counter %d\0A\00", align 1
@s_initial_start_reqs = common dso_local global i64 0, align 8
@CRIU_GCOUNTER_SHM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"LSCRIU (%d): Time to dump main process with semaphore\0A\00", align 1
@SIGUSR2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"LSCRIU (%d): Send kill to main process with signals\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LSCRIU_inc_req_procssed() #0 {
  %1 = call i64 (...) @LSCRIU_Get_Global_Counter_Type()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @s_requests_count, align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* @s_requests_count, align 8
  br label %6

6:                                                ; preds = %3, %0
  %7 = call i32 (...) @getpid()
  %8 = load i64, i64* @s_requests_count, align 8
  %9 = load i64, i64* @s_initial_start_reqs, align 8
  %10 = call i32 (i8*, i32, ...) @lscriu_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %7, i64 %8, i64 %9)
  %11 = load i64, i64* @s_initial_start_reqs, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %6
  %14 = load i64, i64* @s_requests_count, align 8
  %15 = load i64, i64* @s_initial_start_reqs, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = call i64 (...) @LSCRIU_Get_Global_Counter_Type()
  %19 = load i64, i64* @CRIU_GCOUNTER_SHM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = call i32 (...) @LSCRIU_Increase_Global_Counter()
  %23 = load i64, i64* @s_requests_count, align 8
  %24 = load i64, i64* @s_initial_start_reqs, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = call i32 (...) @getpid()
  %28 = call i32 (i8*, i32, ...) @lscriu_dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %21
  br label %36

30:                                               ; preds = %17
  %31 = call i32 (...) @LSAPI_Get_ppid()
  %32 = load i32, i32* @SIGUSR2, align 4
  %33 = call i32 @kill(i32 %31, i32 %32)
  %34 = call i32 (...) @getpid()
  %35 = call i32 (i8*, i32, ...) @lscriu_dbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %30, %29
  br label %37

37:                                               ; preds = %36, %13, %6
  ret void
}

declare dso_local i64 @LSCRIU_Get_Global_Counter_Type(...) #1

declare dso_local i32 @lscriu_dbg(i8*, i32, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @LSCRIU_Increase_Global_Counter(...) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @LSAPI_Get_ppid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
