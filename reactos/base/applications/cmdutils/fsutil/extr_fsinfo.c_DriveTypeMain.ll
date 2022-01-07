; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_fsinfo.c_DriveTypeMain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_fsinfo.c_DriveTypeMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Usage: fsutil fsinfo drivetype <volume>\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"\09For example: fsutil fsinfo drivetype c:\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s - unknown drive type\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s - not a root directory\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s - removable drive\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%s - fixed drive\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%s - remote or network drive\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"%s - CD-ROM drive\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"%s - RAM disk drive\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @DriveTypeMain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DriveTypeMain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @_T(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (i32, i32, ...) @_ftprintf(i32 %10, i32 %11)
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @_T(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 (i32, i32, ...) @_ftprintf(i32 %13, i32 %14)
  store i32 1, i32* %3, align 4
  br label %72

16:                                               ; preds = %2
  %17 = load i32**, i32*** %5, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @GetDriveType(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %71 [
    i32 128, label %22
    i32 132, label %29
    i32 129, label %36
    i32 133, label %43
    i32 130, label %50
    i32 134, label %57
    i32 131, label %64
  ]

22:                                               ; preds = %16
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 @_T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32**, i32*** %5, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 (i32, i32, ...) @_ftprintf(i32 %23, i32 %24, i32* %27)
  br label %71

29:                                               ; preds = %16
  %30 = load i32, i32* @stdout, align 4
  %31 = call i32 @_T(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32**, i32*** %5, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 (i32, i32, ...) @_ftprintf(i32 %30, i32 %31, i32* %34)
  br label %71

36:                                               ; preds = %16
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @_T(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32**, i32*** %5, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 (i32, i32, ...) @_ftprintf(i32 %37, i32 %38, i32* %41)
  br label %71

43:                                               ; preds = %16
  %44 = load i32, i32* @stdout, align 4
  %45 = call i32 @_T(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32**, i32*** %5, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 (i32, i32, ...) @_ftprintf(i32 %44, i32 %45, i32* %48)
  br label %71

50:                                               ; preds = %16
  %51 = load i32, i32* @stdout, align 4
  %52 = call i32 @_T(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %53 = load i32**, i32*** %5, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 (i32, i32, ...) @_ftprintf(i32 %51, i32 %52, i32* %55)
  br label %71

57:                                               ; preds = %16
  %58 = load i32, i32* @stdout, align 4
  %59 = call i32 @_T(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %60 = load i32**, i32*** %5, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 (i32, i32, ...) @_ftprintf(i32 %58, i32 %59, i32* %62)
  br label %71

64:                                               ; preds = %16
  %65 = load i32, i32* @stdout, align 4
  %66 = call i32 @_T(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %67 = load i32**, i32*** %5, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 (i32, i32, ...) @_ftprintf(i32 %65, i32 %66, i32* %69)
  br label %71

71:                                               ; preds = %16, %64, %57, %50, %43, %36, %29, %22
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %9
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @_ftprintf(i32, i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @GetDriveType(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
