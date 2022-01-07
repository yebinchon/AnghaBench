; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_path-unix.c_mp_get_platform_path_unix.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_path-unix.c_mp_get_platform_path_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@path_init_once = common dso_local global i32 0, align 4
@path_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"home\00", align 1
@mpv_home = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"old_home\00", align 1
@old_home = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@MPV_CONFDIR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"desktop\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_get_platform_path_unix(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* @path_init, align 4
  %7 = call i32 @pthread_once(i32* @path_init_once, i32 %6)
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i8*, i8** @mpv_home, align 8
  store i8* %12, i8** %3, align 8
  br label %32

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i8*, i8** @old_home, align 8
  store i8* %18, i8** %3, align 8
  br label %32

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i8*, i8** @MPV_CONFDIR, align 8
  store i8* %24, i8** %3, align 8
  br label %32

25:                                               ; preds = %19
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %30, i8** %3, align 8
  br label %32

31:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %32

32:                                               ; preds = %31, %29, %23, %17, %11
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

declare dso_local i32 @pthread_once(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
