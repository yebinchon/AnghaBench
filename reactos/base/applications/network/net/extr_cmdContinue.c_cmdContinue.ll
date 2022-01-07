; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdContinue.c_cmdContinue.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdContinue.c_cmdContinue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StdOut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@MSG_CONTINUE_SYNTAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 47, i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@MSG_CONTINUE_HELP = common dso_local global i32 0, align 4
@SERVICES_ACTIVE_DATABASE = common dso_local global i32 0, align 4
@SC_MANAGER_ENUMERATE_SERVICE = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i32] [i32 91, i32 79, i32 112, i32 101, i32 110, i32 83, i32 67, i32 77, i32 97, i32 110, i32 97, i32 103, i32 101, i32 114, i32 93, i32 32, i32 69, i32 114, i32 114, i32 111, i32 114, i32 58, i32 32, i32 37, i32 108, i32 100, i32 10, i32 0], align 4
@SERVICE_PAUSE_CONTINUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i32] [i32 91, i32 79, i32 112, i32 101, i32 110, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 93, i32 32, i32 69, i32 114, i32 114, i32 111, i32 114, i32 58, i32 32, i32 37, i32 108, i32 100, i32 10, i32 0], align 4
@SERVICE_CONTROL_CONTINUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i32] [i32 91, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 93, i32 32, i32 69, i32 114, i32 114, i32 111, i32 114, i32 58, i32 32, i32 37, i32 108, i32 100, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdContinue(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = call i32 @PrintMessageString(i32 4381)
  %15 = load i32, i32* @StdOut, align 4
  %16 = call i32 @ConPuts(i32 %15, i8* bitcast ([2 x i32]* @.str to i8*))
  %17 = load i32, i32* @MSG_CONTINUE_SYNTAX, align 4
  %18 = call i32 @PrintNetMessage(i32 %17)
  store i32 1, i32* %3, align 4
  br label %91

19:                                               ; preds = %2
  store i32 2, i32* %10, align 4
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load i32**, i32*** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @_wcsicmp(i32* %29, i8* bitcast ([6 x i32]* @.str.1 to i8*))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = call i32 @PrintMessageString(i32 4381)
  %34 = load i32, i32* @StdOut, align 4
  %35 = call i32 @ConPuts(i32 %34, i8* bitcast ([2 x i32]* @.str to i8*))
  %36 = load i32, i32* @MSG_CONTINUE_SYNTAX, align 4
  %37 = call i32 @PrintNetMessage(i32 %36)
  %38 = load i32, i32* @MSG_CONTINUE_HELP, align 4
  %39 = call i32 @PrintNetMessage(i32 %38)
  store i32 1, i32* %3, align 4
  br label %91

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %20

44:                                               ; preds = %20
  %45 = load i32, i32* @SERVICES_ACTIVE_DATABASE, align 4
  %46 = load i32, i32* @SC_MANAGER_ENUMERATE_SERVICE, align 4
  %47 = call i32* @OpenSCManager(i32* null, i32 %45, i32 %46)
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @StdErr, align 4
  %52 = call i32 (...) @GetLastError()
  %53 = call i32 @ConPrintf(i32 %51, i8* bitcast ([28 x i32]* @.str.2 to i8*), i32 %52)
  store i32 1, i32* %9, align 4
  br label %77

54:                                               ; preds = %44
  %55 = load i32*, i32** %6, align 8
  %56 = load i32**, i32*** %5, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @SERVICE_PAUSE_CONTINUE, align 4
  %60 = call i32* @OpenService(i32* %55, i32* %58, i32 %59)
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32, i32* @StdErr, align 4
  %65 = call i32 (...) @GetLastError()
  %66 = call i32 @ConPrintf(i32 %64, i8* bitcast ([26 x i32]* @.str.3 to i8*), i32 %65)
  store i32 1, i32* %9, align 4
  br label %77

67:                                               ; preds = %54
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @SERVICE_CONTROL_CONTINUE, align 4
  %70 = call i32 @ControlService(i32* %68, i32 %69, i32* %8)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @StdErr, align 4
  %74 = call i32 (...) @GetLastError()
  %75 = call i32 @ConPrintf(i32 %73, i8* bitcast ([29 x i32]* @.str.4 to i8*), i32 %74)
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %72, %67
  br label %77

77:                                               ; preds = %76, %63, %50
  %78 = load i32*, i32** %7, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @CloseServiceHandle(i32* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32*, i32** %6, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @CloseServiceHandle(i32* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %32, %13
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @PrintMessageString(i32) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

declare dso_local i32 @PrintNetMessage(i32) #1

declare dso_local i64 @_wcsicmp(i32*, i8*) #1

declare dso_local i32* @OpenSCManager(i32*, i32, i32) #1

declare dso_local i32 @ConPrintf(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @OpenService(i32*, i32*, i32) #1

declare dso_local i32 @ControlService(i32*, i32, i32*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
