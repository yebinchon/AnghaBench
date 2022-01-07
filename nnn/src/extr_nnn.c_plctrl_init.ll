; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_plctrl_init.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_plctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_buf = common dso_local global i32 0, align 4
@CMD_LEN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"nnn-pipe.%d\00", align 1
@g_tmpfpath = common dso_local global i8* null, align 8
@g_tmpfplen = common dso_local global i32 0, align 4
@g_pipepath = common dso_local global i32 0, align 4
@_FAILURE = common dso_local global i32 0, align 4
@env_cfg = common dso_local global i32* null, align 8
@NNN_PIPE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @plctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plctrl_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @g_buf, align 4
  %3 = load i32, i32* @CMD_LEN_MAX, align 4
  %4 = call i32 (...) @getpid()
  %5 = call i32 @snprintf(i32 %2, i32 %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i8*, i8** @g_tmpfpath, align 8
  %7 = load i32, i32* @g_tmpfplen, align 4
  %8 = sub nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  store i8 0, i8* %10, align 1
  %11 = load i8*, i8** @g_tmpfpath, align 8
  %12 = load i32, i32* @g_buf, align 4
  %13 = load i32, i32* @g_pipepath, align 4
  %14 = call i32 @mkpath(i8* %11, i32 %12, i32 %13)
  %15 = load i32, i32* @g_pipepath, align 4
  %16 = call i32 @unlink(i32 %15)
  %17 = load i32, i32* @g_pipepath, align 4
  %18 = call i64 @mkfifo(i32 %17, i32 384)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = load i32, i32* @_FAILURE, align 4
  store i32 %21, i32* %1, align 4
  br label %31

22:                                               ; preds = %0
  %23 = load i32*, i32** @env_cfg, align 8
  %24 = load i64, i64* @NNN_PIPE, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @g_pipepath, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @setenv(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @_SUCCESS, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %22, %20
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @mkpath(i8*, i32, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i64 @mkfifo(i32, i32) #1

declare dso_local i32 @setenv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
