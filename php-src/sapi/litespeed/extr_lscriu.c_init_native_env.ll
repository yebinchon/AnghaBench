; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_init_native_env.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_init_native_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"LSAPI_CRIU_SYNC_FD\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"LSCAPI_CRIU_SYNC_FD\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"LSAPI_CRIU_IMAGE_PATH\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"LSCRIU (%d): LSAPI_CRIU_SYNC_FD internal environment variable not set - contact Litespeed tech support\0A\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"LSCRIU (%d): LSAPI_CRIU_IMAGE_PATH internal environment variable not set - contact Litespeed tech support\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"LSCRIU (%d): Checkpoint dump.  ImagePath: %s\0A\00", align 1
@s_fd_native = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [73 x i8] c"LSCRIU (%d): Native checkpoint.  Use filepointer %d (%s) to send pid %d\0A\00", align 1
@iPidDump = common dso_local global i32 0, align 4
@s_criu_image_path = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_native_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_native_env() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i8* %8, i8** %2, align 8
  br label %9

9:                                                ; preds = %7, %0
  %10 = call i8* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = call i32 (...) @getpid()
  %15 = call i32 @lscriu_err(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  store i32 -1, i32* %1, align 4
  br label %37

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = call i32 (...) @getpid()
  %21 = call i32 @lscriu_err(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  store i32 -1, i32* %1, align 4
  br label %37

22:                                               ; preds = %16
  %23 = call i32 (...) @getpid()
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 (i8*, i32, i8*, ...) @lscriu_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %23, i8* %24)
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @atoi(i8* %26)
  store i32 %27, i32* @s_fd_native, align 4
  %28 = call i32 (...) @getpid()
  %29 = load i32, i32* @s_fd_native, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load i8*, i8** %2, align 8
  %33 = load i32, i32* @iPidDump, align 4
  %34 = call i32 (i8*, i32, i8*, ...) @lscriu_dbg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i32 %28, i8* %31, i8* %32, i32 %33)
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strdup(i8* %35)
  store i32 %36, i32* @s_criu_image_path, align 4
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %22, %19, %13
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @lscriu_err(i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @lscriu_dbg(i8*, i32, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
