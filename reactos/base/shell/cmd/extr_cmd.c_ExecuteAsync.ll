; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmd.c_ExecuteAsync.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmd.c_ExecuteAsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@CMDLINE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/S/D/C\22\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @ExecuteAsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ExecuteAsync(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32, i32* @CMDLINE_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %18 = call i32 @ARRAYSIZE(i32* %14)
  %19 = call i32 @GetModuleFileName(i32* null, i32* %14, i32 %18)
  %20 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %21 = call i32* @_stpcpy(i32* %17, i32 %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @CMDLINE_LENGTH, align 4
  %25 = sub nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %17, i64 %26
  %28 = call i32* @Unparse(i32* %22, i32* %23, i32* %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %1
  %32 = call i32 (...) @error_out_of_memory()
  store i32* null, i32** %2, align 8
  store i32 1, i32* %10, align 4
  br label %51

33:                                               ; preds = %1
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @_tcscpy(i32* %34, i32 %35)
  %37 = call i32 @memset(%struct.TYPE_6__* %8, i32 0, i32 4)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 4, i32* %38, align 4
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @CreateProcess(i32* %14, i32* %17, i32* null, i32* null, i32 %39, i32 0, i32* null, i32* null, %struct.TYPE_6__* %8, %struct.TYPE_7__* %9)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = call i32 (...) @GetLastError()
  %44 = call i32 @ErrorMessage(i32 %43, i32* null)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %10, align 4
  br label %51

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @CloseHandle(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %2, align 8
  store i32 1, i32* %10, align 4
  br label %51

51:                                               ; preds = %45, %42, %31
  %52 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32*, i32** %2, align 8
  ret i32* %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetModuleFileName(i32*, i32*, i32) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32* @_stpcpy(i32*, i32) #2

declare dso_local i32 @_T(i8*) #2

declare dso_local i32* @Unparse(i32*, i32*, i32*) #2

declare dso_local i32 @error_out_of_memory(...) #2

declare dso_local i32 @_tcscpy(i32*, i32) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @CreateProcess(i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_7__*) #2

declare dso_local i32 @ErrorMessage(i32, i32*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @CloseHandle(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
