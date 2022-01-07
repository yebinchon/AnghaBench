; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/setup/extr_setup.c_RunInstallReactOS.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/setup/extr_setup.c_RunInstallReactOS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i32] [i32 115, i32 121, i32 115, i32 115, i32 101, i32 116, i32 117, i32 112, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to load 'syssetup.dll'!\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Loaded 'syssetup.dll'!\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"InstallWindowsNt\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Failed to get address for 'InstallWindowsNt()'!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @RunInstallReactOS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RunInstallReactOS(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32 (i32, i32**)*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %9 = call i32* @LoadLibraryW(i8* bitcast ([13 x i32]* @.str to i8*))
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (...) @GetLastError()
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = call i32 @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @GetProcAddress(i32* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %19 = inttoptr i64 %18 to i32 (i32, i32**)*
  store i32 (i32, i32**)* %19, i32 (i32, i32**)** %8, align 8
  %20 = load i32 (i32, i32**)*, i32 (i32, i32**)** %8, align 8
  %21 = icmp eq i32 (i32, i32**)* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = call i32 (...) @GetLastError()
  store i32 %23, i32* %6, align 4
  %24 = call i32 @DPRINT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %30

25:                                               ; preds = %15
  %26 = load i32 (i32, i32**)*, i32 (i32, i32**)** %8, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32**, i32*** %5, align 8
  %29 = call i32 %26(i32 %27, i32** %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @FreeLibrary(i32* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32* @LoadLibraryW(i8*) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @GetProcAddress(i32*, i8*) #1

declare dso_local i32 @FreeLibrary(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
