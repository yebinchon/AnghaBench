; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_fsinfo.c_DrivesMain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_fsinfo.c_DrivesMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Drives:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %c:\\\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @DrivesMain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DrivesMain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %8 = call i32 (...) @GetLogicalDrives()
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 (...) @GetLastError()
  %13 = call i32 @PrintErrorMessage(i32 %12)
  store i32 1, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (i32, i32, ...) @_ftprintf(i32 %15, i32 %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %34, %14
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 26
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 65, %30
  %32 = call i32 (i32, i32, ...) @_ftprintf(i32 %28, i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %27, %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load i32, i32* @stdout, align 4
  %39 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 (i32, i32, ...) @_ftprintf(i32 %38, i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @GetLogicalDrives(...) #1

declare dso_local i32 @PrintErrorMessage(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @_ftprintf(i32, i32, ...) #1

declare dso_local i32 @_T(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
