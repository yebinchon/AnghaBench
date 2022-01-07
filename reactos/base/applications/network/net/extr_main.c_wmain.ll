; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_main.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_main.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i32**)*, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i32] [i32 92, i32 110, i32 101, i32 116, i32 109, i32 115, i32 103, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@hModuleNetMsg = common dso_local global i32* null, align 8
@StdErr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i32] [i32 70, i32 97, i32 105, i32 108, i32 101, i32 100, i32 32, i32 116, i32 111, i32 32, i32 108, i32 111, i32 97, i32 100, i32 32, i32 110, i32 101, i32 116, i32 109, i32 115, i32 103, i32 46, i32 100, i32 108, i32 108, i32 10, i32 0], align 4
@cmds = common dso_local global %struct.TYPE_3__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@StdOut = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@MSG_NET_SYNTAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %10, align 8
  %17 = call i32 (...) @ConInitStdStreams()
  %18 = call i32 @ARRAYSIZE(i32* %15)
  %19 = call i32 @GetSystemDirectoryW(i32* %15, i32 %18)
  %20 = call i32 @wcscat(i32* %15, i8* bitcast ([12 x i32]* @.str to i8*))
  %21 = call i32* @LoadLibrary(i32* %15)
  store i32* %21, i32** @hModuleNetMsg, align 8
  %22 = load i32*, i32** @hModuleNetMsg, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @StdErr, align 4
  %26 = call i32 @ConPrintf(i32 %25, i8* bitcast ([27 x i32]* @.str.1 to i8*))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %78

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %60

31:                                               ; preds = %27
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmds, align 8
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %8, align 8
  br label %33

33:                                               ; preds = %56, %31
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load i32**, i32*** %5, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @_wcsicmp(i32* %41, i64 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (i32, i32**)*, i32 (i32, i32**)** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32**, i32*** %5, align 8
  %53 = call i32 %50(i32 %51, i32** %52)
  store i32 %53, i32* %9, align 4
  %54 = load i64, i64* @TRUE, align 8
  store i64 %54, i64* %10, align 8
  br label %59

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 1
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %8, align 8
  br label %33

59:                                               ; preds = %47, %33
  br label %60

60:                                               ; preds = %59, %30
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @FALSE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = call i32 @PrintMessageString(i32 4381)
  %66 = load i32, i32* @StdOut, align 4
  %67 = call i32 @ConPuts(i32 %66, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %68 = load i32, i32* @MSG_NET_SYNTAX, align 4
  %69 = call i32 @PrintNetMessage(i32 %68)
  br label %70

70:                                               ; preds = %64, %60
  %71 = load i32*, i32** @hModuleNetMsg, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32*, i32** @hModuleNetMsg, align 8
  %75 = call i32 @FreeLibrary(i32* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %76, %24
  %79 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ConInitStdStreams(...) #2

declare dso_local i32 @GetSystemDirectoryW(i32*, i32) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32 @wcscat(i32*, i8*) #2

declare dso_local i32* @LoadLibrary(i32*) #2

declare dso_local i32 @ConPrintf(i32, i8*) #2

declare dso_local i64 @_wcsicmp(i32*, i64) #2

declare dso_local i32 @PrintMessageString(i32) #2

declare dso_local i32 @ConPuts(i32, i8*) #2

declare dso_local i32 @PrintNetMessage(i32) #2

declare dso_local i32 @FreeLibrary(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
