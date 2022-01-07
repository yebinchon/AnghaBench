; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_LSCRIU_CloudLinux_Checkpoint.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_LSCRIU_CloudLinux_Checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_native = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"LSCRIU (%d): Not native and unable to dump - abandon one-time dump\0A\00", align 1
@s_pid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"LSCRIU: CloudLinux dump of PID: %d, error: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"LSCRIU: Successful CloudLinux dump of PID: %d\0A\00", align 1
@s_restored = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"LSCRIU: Successful CloudLinux restore of PID: %d, parent: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @LSCRIU_CloudLinux_Checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LSCRIU_CloudLinux_Checkpoint() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @s_native, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  br i1 true, label %8, label %5

5:                                                ; preds = %4
  %6 = load i32, i32* @s_pid, align 4
  %7 = call i32 @lscriu_dbg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %31

8:                                                ; preds = %4, %0
  %9 = call i32 (...) @s_lscapi_dump_me()
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* @s_pid, align 4
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 (i8*, i32, ...) @lscriu_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %15)
  br label %17

17:                                               ; preds = %12, %8
  %18 = load i32, i32* %1, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @s_pid, align 4
  %22 = call i32 (i8*, i32, ...) @lscriu_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  br label %29

23:                                               ; preds = %17
  store i32 1, i32* @s_restored, align 4
  %24 = call i32 (...) @LSAPI_reset_server_state()
  %25 = call i32 (...) @LSCRIU_Wink_Server_is_Ready()
  %26 = call i32 (...) @getpid()
  %27 = call i32 (...) @getppid()
  %28 = call i32 (i8*, i32, ...) @lscriu_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %20
  %30 = call i32 @LSCRIU_Set_Initial_Start_Reqs(i32 0)
  br label %31

31:                                               ; preds = %29, %5
  ret void
}

declare dso_local i32 @s_lscapi_dump_me(...) #1

declare dso_local i32 @lscriu_dbg(i8*, i32) #1

declare dso_local i32 @lscriu_err(i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @LSAPI_reset_server_state(...) #1

declare dso_local i32 @LSCRIU_Wink_Server_is_Ready(...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @LSCRIU_Set_Initial_Start_Reqs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
