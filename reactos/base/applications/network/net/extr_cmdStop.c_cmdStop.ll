; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdStop.c_cmdStop.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdStop.c_cmdStop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@StdOut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@MSG_STOP_SYNTAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 47, i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@MSG_STOP_HELP = common dso_local global i32 0, align 4
@SERVICES_ACTIVE_DATABASE = common dso_local global i32 0, align 4
@SC_MANAGER_ENUMERATE_SERVICE = common dso_local global i32 0, align 4
@SERVICE_STOP = common dso_local global i32 0, align 4
@SERVICE_CONTROL_STOP = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i32] [i32 69, i32 114, i32 114, i32 111, i32 114, i32 58, i32 32, i32 37, i32 108, i32 117, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdStop(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %12 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %12, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = call i32 @PrintMessageString(i32 4381)
  %17 = load i32, i32* @StdOut, align 4
  %18 = call i32 @ConPuts(i32 %17, i8* bitcast ([2 x i32]* @.str to i8*))
  %19 = load i32, i32* @MSG_STOP_SYNTAX, align 4
  %20 = call i32 @PrintNetMessage(i32 %19)
  store i32 1, i32* %3, align 4
  br label %95

21:                                               ; preds = %2
  store i32 2, i32* %11, align 4
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load i32**, i32*** %5, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @_wcsicmp(i32* %31, i8* bitcast ([6 x i32]* @.str.1 to i8*))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = call i32 @PrintMessageString(i32 4381)
  %36 = load i32, i32* @StdOut, align 4
  %37 = call i32 @ConPuts(i32 %36, i8* bitcast ([2 x i32]* @.str to i8*))
  %38 = load i32, i32* @MSG_STOP_SYNTAX, align 4
  %39 = call i32 @PrintNetMessage(i32 %38)
  %40 = load i32, i32* @MSG_STOP_HELP, align 4
  %41 = call i32 @PrintNetMessage(i32 %40)
  store i32 1, i32* %3, align 4
  br label %95

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %22

46:                                               ; preds = %22
  %47 = load i32, i32* @SERVICES_ACTIVE_DATABASE, align 4
  %48 = load i32, i32* @SC_MANAGER_ENUMERATE_SERVICE, align 4
  %49 = call i32* @OpenSCManagerW(i32* null, i32 %47, i32 %48)
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i64 (...) @GetLastError()
  store i64 %53, i64* %9, align 8
  store i32 1, i32* %10, align 4
  br label %73

54:                                               ; preds = %46
  %55 = load i32*, i32** %6, align 8
  %56 = load i32**, i32*** %5, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @SERVICE_STOP, align 4
  %60 = call i32* @OpenServiceW(i32* %55, i32* %58, i32 %59)
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = call i64 (...) @GetLastError()
  store i64 %64, i64* %9, align 8
  store i32 1, i32* %10, align 4
  br label %73

65:                                               ; preds = %54
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* @SERVICE_CONTROL_STOP, align 4
  %68 = call i32 @ControlService(i32* %66, i32 %67, i32* %8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = call i64 (...) @GetLastError()
  store i64 %71, i64* %9, align 8
  store i32 1, i32* %10, align 4
  br label %73

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %70, %63, %52
  %74 = load i32*, i32** %7, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @CloseServiceHandle(i32* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32*, i32** %6, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @CloseServiceHandle(i32* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @ERROR_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* @StdErr, align 4
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @ConPrintf(i32 %90, i8* bitcast ([12 x i32]* @.str.2 to i8*), i64 %91)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %34, %15
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @PrintMessageString(i32) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

declare dso_local i32 @PrintNetMessage(i32) #1

declare dso_local i64 @_wcsicmp(i32*, i8*) #1

declare dso_local i32* @OpenSCManagerW(i32*, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @OpenServiceW(i32*, i32*, i32) #1

declare dso_local i32 @ControlService(i32*, i32, i32*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

declare dso_local i32 @ConPrintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
