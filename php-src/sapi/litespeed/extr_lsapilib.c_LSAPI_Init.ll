; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_Init.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_inited = common dso_local global i32 0, align 4
@s_uid = common dso_local global i32 0, align 4
@s_secret = common dso_local global i64* null, align 8
@SIGPIPE = common dso_local global i32 0, align 4
@lsapi_sigpipe = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@lsapi_siguser1 = common dso_local global i32 0, align 4
@g_req = common dso_local global i32 0, align 4
@LSAPI_SOCK_FILENO = common dso_local global i32 0, align 4
@s_ppid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"libpthread.so\00", align 1
@RTLD_LAZY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"pthread_atfork\00", align 1
@pthread_atfork_func = common dso_local global i32 0, align 4
@SIGXFSZ = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LSAPI_Init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @g_inited, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @geteuid()
  store i32 %6, i32* @s_uid, align 4
  %7 = load i64*, i64** @s_secret, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @SIGPIPE, align 4
  %10 = load i32, i32* @lsapi_sigpipe, align 4
  %11 = call i32 @lsapi_signal(i32 %9, i32 %10)
  %12 = load i32, i32* @SIGUSR1, align 4
  %13 = load i32, i32* @lsapi_siguser1, align 4
  %14 = call i32 @lsapi_signal(i32 %12, i32 %13)
  %15 = call i32 @dup2(i32 2, i32 1)
  %16 = load i32, i32* @LSAPI_SOCK_FILENO, align 4
  %17 = call i32 @LSAPI_InitRequest(i32* @g_req, i32 %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %1, align 4
  br label %31

20:                                               ; preds = %5
  store i32 1, i32* @g_inited, align 4
  %21 = call i32 (...) @getppid()
  store i32 %21, i32* @s_ppid, align 4
  %22 = load i32, i32* @RTLD_LAZY, align 4
  %23 = call i8* @dlopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i8* %23, i8** %2, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @dlsym(i8* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* @pthread_atfork_func, align 4
  br label %29

29:                                               ; preds = %26, %20
  br label %30

30:                                               ; preds = %29, %0
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @lsapi_signal(i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @LSAPI_InitRequest(i32*, i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i32 @dlsym(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
