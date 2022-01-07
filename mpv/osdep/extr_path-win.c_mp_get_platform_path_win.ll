; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_path-win.c_mp_get_platform_path_win.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_path-win.c_mp_get_platform_path_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@path_init_once = common dso_local global i32 0, align 4
@path_init = common dso_local global i32 0, align 4
@portable_path = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"home\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"old_home\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mpv\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"desktop\00", align 1
@FOLDERID_Desktop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_get_platform_path_win(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* @path_init, align 4
  %7 = call i32 @pthread_once(i32* @path_init_once, i32 %6)
  %8 = load i8*, i8** @portable_path, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i8*, i8** @portable_path, align 8
  store i8* %15, i8** %3, align 8
  br label %47

16:                                               ; preds = %10
  br label %39

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @mp_get_win_app_dir(i8* %22)
  store i8* %23, i8** %3, align 8
  br label %47

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = call i8* @mp_get_win_exe_dir(i8* %29)
  store i8* %30, i8** %3, align 8
  br label %47

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @mp_get_win_exe_subdir(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %37, i8** %3, align 8
  br label %47

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %16
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @mp_get_win_shell_dir(i8* %44, i32* @FOLDERID_Desktop)
  store i8* %45, i8** %3, align 8
  br label %47

46:                                               ; preds = %39
  store i8* null, i8** %3, align 8
  br label %47

47:                                               ; preds = %46, %43, %35, %28, %21, %14
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i32 @pthread_once(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @mp_get_win_app_dir(i8*) #1

declare dso_local i8* @mp_get_win_exe_dir(i8*) #1

declare dso_local i8* @mp_get_win_exe_subdir(i8*, i8*) #1

declare dso_local i8* @mp_get_win_shell_dir(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
