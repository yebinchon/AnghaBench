; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/logoff/extr_logoff.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/logoff/extr_logoff.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StdOut = common dso_local global i32 0, align 4
@IDS_USAGE = common dso_local global i32 0, align 4
@szRemoteServerName = common dso_local global i64 0, align 8
@bVerbose = common dso_local global i64 0, align 8
@IDS_LOGOFF_REMOTE = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i32] [i32 82, i32 101, i32 109, i32 111, i32 116, i32 101, i32 32, i32 80, i32 114, i32 111, i32 99, i32 101, i32 100, i32 117, i32 114, i32 101, i32 32, i32 67, i32 97, i32 108, i32 108, i32 32, i32 105, i32 110, i32 32, i32 108, i32 111, i32 103, i32 111, i32 102, i32 102, i32 46, i32 101, i32 120, i32 101, i32 32, i32 104, i32 97, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 98, i32 101, i32 101, i32 110, i32 32, i32 105, i32 109, i32 112, i32 108, i32 101, i32 109, i32 101, i32 110, i32 116, i32 101, i32 100, i32 0], align 4
@IDS_LOGOFF_LOCAL = common dso_local global i32 0, align 4
@EWX_LOGOFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %6 = call i32 (...) @ConInitStdStreams()
  %7 = load i32, i32* %4, align 4
  %8 = load i32**, i32*** %5, align 8
  %9 = call i32 @ParseCommandLine(i32 %7, i32** %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @StdOut, align 4
  %13 = load i32, i32* @IDS_USAGE, align 4
  %14 = call i32 @ConResPuts(i32 %12, i32 %13)
  store i32 1, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load i64, i64* @szRemoteServerName, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i64, i64* @bVerbose, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @StdOut, align 4
  %23 = load i32, i32* @IDS_LOGOFF_REMOTE, align 4
  %24 = call i32 @ConResPuts(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* @StdErr, align 4
  %27 = call i32 @ConPuts(i32 %26, i8* bitcast ([61 x i32]* @.str to i8*))
  br label %43

28:                                               ; preds = %15
  %29 = load i64, i64* @bVerbose, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @StdOut, align 4
  %33 = load i32, i32* @IDS_LOGOFF_LOCAL, align 4
  %34 = call i32 @ConResPuts(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* @EWX_LOGOFF, align 4
  %37 = call i32 @ExitWindowsEx(i32 %36, i32 0)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = call i32 (...) @GetLastError()
  %41 = call i32 @DisplayError(i32 %40)
  store i32 1, i32* %3, align 4
  br label %44

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %25
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %39, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @ConInitStdStreams(...) #1

declare dso_local i32 @ParseCommandLine(i32, i32**) #1

declare dso_local i32 @ConResPuts(i32, i32) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

declare dso_local i32 @ExitWindowsEx(i32, i32) #1

declare dso_local i32 @DisplayError(i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
