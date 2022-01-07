; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_intshcut.c_run_winemenubuilder.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_intshcut.c_run_winemenubuilder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@run_winemenubuilder.menubuilder = internal constant [21 x i8] c"\\winemenubuilder.exe\00", align 16
@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"starting %s\0A\00", align 1
@DETACHED_PROCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @run_winemenubuilder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @run_winemenubuilder(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @run_winemenubuilder.menubuilder, i64 0, i64 0))
  %19 = sub nsw i32 %17, %18
  %20 = call i32 @GetSystemDirectoryW(i8* %16, i32 %19)
  %21 = call i32 @lstrcatW(i8* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @run_winemenubuilder.menubuilder, i64 0, i64 0))
  %22 = call i32 @lstrlenW(i8* %16)
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @lstrlenW(i8* %23)
  %25 = add nsw i32 %22, %24
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 1
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i8* @heap_alloc(i32 %30)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %1
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %67

36:                                               ; preds = %1
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @lstrcpyW(i8* %37, i8* %16)
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @lstrcatW(i8* %39, i8* %40)
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @debugstr_w(i8* %42)
  %44 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = call i32 @memset(%struct.TYPE_6__* %6, i32 0, i32 4)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 4, i32* %46, align 4
  %47 = call i32 @Wow64DisableWow64FsRedirection(i8** %11)
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* @FALSE, align 8
  %50 = load i32, i32* @DETACHED_PROCESS, align 4
  %51 = call i64 @CreateProcessW(i8* %16, i8* %48, i32* null, i32* null, i64 %49, i32 %50, i32* null, i32* null, %struct.TYPE_6__* %6, %struct.TYPE_7__* %7)
  store i64 %51, i64* %8, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @Wow64RevertWow64FsRedirection(i8* %52)
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @heap_free(i8* %54)
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %36
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @CloseHandle(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @CloseHandle(i32 %63)
  br label %65

65:                                               ; preds = %58, %36
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %65, %34
  %68 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i64, i64* %2, align 8
  ret i64 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetSystemDirectoryW(i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i8* @heap_alloc(i32) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @Wow64DisableWow64FsRedirection(i8**) #2

declare dso_local i64 @CreateProcessW(i8*, i8*, i32*, i32*, i64, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_7__*) #2

declare dso_local i32 @Wow64RevertWow64FsRedirection(i8*) #2

declare dso_local i32 @heap_free(i8*) #2

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
