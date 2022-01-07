; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/utilman/extr_process.c_LaunchProcess.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/utilman/extr_process.c_LaunchProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@STARTF_USESHOWWINDOW = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@TOKEN_QUERY = common dso_local global i32 0, align 4
@TOKEN_DUPLICATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"OpenProcessToken() failed with error -> %lu\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TOKEN_ALL_ACCESS = common dso_local global i32 0, align 4
@SecurityIdentification = common dso_local global i32 0, align 4
@TokenPrimary = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"DuplicateTokenEx() failed with error -> %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"CreateProcessAsUserW() failed with error -> %lu\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LaunchProcess(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ARRAYSIZE(i32* %15)
  %18 = call i32 @ExpandEnvironmentStringsW(i32 %16, i32* %15, i32 %17)
  %19 = call i32 @ZeroMemory(%struct.TYPE_6__* %5, i32 20)
  %20 = call i32 @ZeroMemory(%struct.TYPE_6__* %4, i32 20)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 20, i32* %21, align 4
  %22 = load i32, i32* @STARTF_USESHOWWINDOW, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @SW_SHOWNORMAL, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = call i32 (...) @GetCurrentProcess()
  %27 = load i32, i32* @TOKEN_QUERY, align 4
  %28 = load i32, i32* @TOKEN_DUPLICATE, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @OpenProcessToken(i32 %26, i32 %29, i32* %6)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %1
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 @DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %77

37:                                               ; preds = %1
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @TOKEN_ALL_ACCESS, align 4
  %40 = load i32, i32* @SecurityIdentification, align 4
  %41 = load i32, i32* @TokenPrimary, align 4
  %42 = call i64 @DuplicateTokenEx(i32 %38, i32 %39, i32* null, i32 %40, i32 %41, i32* %7)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = call i32 (...) @GetLastError()
  %47 = call i32 @DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @CloseHandle(i32 %48)
  %50 = load i64, i64* @FALSE, align 8
  store i64 %50, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %77

51:                                               ; preds = %37
  %52 = load i32, i32* %7, align 4
  %53 = load i64, i64* @FALSE, align 8
  %54 = call i64 @CreateProcessAsUserW(i32 %52, i32* null, i32* %15, i32* null, i32* null, i64 %53, i32 0, i32* null, i32* null, %struct.TYPE_6__* %4, %struct.TYPE_6__* %5)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = call i32 (...) @GetLastError()
  %59 = call i32 @DPRINT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @CloseHandle(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @CloseHandle(i32 %62)
  %64 = load i64, i64* @FALSE, align 8
  store i64 %64, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %77

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @CloseHandle(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @CloseHandle(i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @CloseHandle(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @CloseHandle(i32 %74)
  %76 = load i64, i64* @TRUE, align 8
  store i64 %76, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %77

77:                                               ; preds = %65, %57, %45, %33
  %78 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i64, i64* %2, align 8
  ret i64 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ExpandEnvironmentStringsW(i32, i32*, i32) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #2

declare dso_local i64 @OpenProcessToken(i32, i32, i32*) #2

declare dso_local i32 @GetCurrentProcess(...) #2

declare dso_local i32 @DPRINT(i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i64 @DuplicateTokenEx(i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @CloseHandle(i32) #2

declare dso_local i64 @CreateProcessAsUserW(i32, i32*, i32*, i32*, i32*, i64, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
