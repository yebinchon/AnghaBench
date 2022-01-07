; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_LSCRIU_try_checkpoint.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_LSCRIU_try_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_tried_checkpoint = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"LSCRIU (%d): Already tried checkpoint - one time per customer\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"LSCRIU (%d): Trying checkpoint\0A\00", align 1
@s_native = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"LSCRIU (%d): fork!\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"LSCRIU (%d): Can't checkpoint due to a fork error: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@s_criu_image_path = common dso_local global i32 0, align 4
@s_fd_native = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Restored!\00", align 1
@s_restored = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @LSCRIU_try_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LSCRIU_try_checkpoint(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = call i32 (...) @getpid()
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @s_tried_checkpoint, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @lscriu_dbg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %56

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @lscriu_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  store i32 1, i32* @s_tried_checkpoint, align 4
  %16 = load i32, i32* @s_native, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 (...) @LSCRIU_CloudLinux_Checkpoint()
  br label %56

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @lscriu_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = call i32 (...) @fork()
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @lscriu_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32 %29)
  br label %56

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = call i32 (...) @getppid()
  store i32 %35, i32* %6, align 4
  %36 = call i32 (...) @setsid()
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @s_criu_image_path, align 4
  %39 = load i32, i32* @s_fd_native, align 4
  %40 = call i32 @LSCRIU_Native_Dump(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @s_fd_native, align 4
  %42 = call i32 @close(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @LSCRIU_Wait_Dump_Finsh_Or_Restored(i32 %43)
  %45 = call i32 @LSCRIU_Restored_Error(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %46 = call i32 (...) @LSAPI_reset_server_state()
  store i32 1, i32* @s_restored, align 4
  br label %54

47:                                               ; preds = %31
  %48 = load i32*, i32** %2, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = load i32*, i32** %2, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %34
  %55 = call i32 @LSCRIU_Set_Initial_Start_Reqs(i32 0)
  br label %56

56:                                               ; preds = %54, %26, %18, %10
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @lscriu_dbg(i8*, i32) #1

declare dso_local i32 @LSCRIU_CloudLinux_Checkpoint(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @lscriu_err(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @LSCRIU_Native_Dump(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @LSCRIU_Wait_Dump_Finsh_Or_Restored(i32) #1

declare dso_local i32 @LSCRIU_Restored_Error(i32, i8*) #1

declare dso_local i32 @LSAPI_reset_server_state(...) #1

declare dso_local i32 @LSCRIU_Set_Initial_Start_Reqs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
