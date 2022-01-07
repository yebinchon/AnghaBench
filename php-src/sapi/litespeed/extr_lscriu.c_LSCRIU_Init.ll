; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_LSCRIU_Init.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_LSCRIU_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_pid = common dso_local global i32 0, align 4
@s_initial_start_reqs = common dso_local global i64 0, align 8
@s_native = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"LSCRIU (%d): LSAPI_Register_Pgrp_Timer_Callback\0A\00", align 1
@LSCRIU_on_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LSCRIU_Init() #0 {
  %1 = call i32 (...) @getpid()
  store i32 %1, i32* @s_pid, align 4
  %2 = call i32 (...) @LSCRIU_Debugging()
  %3 = call i32 (...) @LSCRIU_Init_Env_Parameters()
  %4 = load i64, i64* @s_initial_start_reqs, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load i32, i32* @s_native, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = call i32 (...) @LSCRIU_load_liblscapi()
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i64 0, i64* @s_initial_start_reqs, align 8
  br label %13

13:                                               ; preds = %12, %9
  br label %14

14:                                               ; preds = %13, %6, %0
  %15 = load i64, i64* @s_initial_start_reqs, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = call i32 (...) @LSCRIU_Wink_Server_is_Ready()
  %19 = load i32, i32* @s_pid, align 4
  %20 = call i32 @lscriu_dbg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @LSCRIU_on_timer, align 4
  %22 = call i32 @LSAPI_Register_Pgrp_Timer_Callback(i32 %21)
  %23 = call i32 @LSCRIU_Init_Global_Counter(i32 0)
  br label %24

24:                                               ; preds = %17, %14
  %25 = load i64, i64* @s_initial_start_reqs, align 8
  %26 = icmp sgt i64 %25, 0
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @LSCRIU_Debugging(...) #1

declare dso_local i32 @LSCRIU_Init_Env_Parameters(...) #1

declare dso_local i32 @LSCRIU_load_liblscapi(...) #1

declare dso_local i32 @LSCRIU_Wink_Server_is_Ready(...) #1

declare dso_local i32 @lscriu_dbg(i8*, i32) #1

declare dso_local i32 @LSAPI_Register_Pgrp_Timer_Callback(i32) #1

declare dso_local i32 @LSCRIU_Init_Global_Counter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
