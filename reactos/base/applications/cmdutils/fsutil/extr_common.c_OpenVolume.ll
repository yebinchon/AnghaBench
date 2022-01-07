; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_common.c_OpenVolume.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_common.c_OpenVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@DRIVE_REMOTE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"FSUTIL needs a local device\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"\\\\.\\%s\\\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NTFS\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"FSUTIL needs a NTFS device\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\\\\.\\%s\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @OpenVolume(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 58
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @GetDriveType(i32* %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @DRIVE_REMOTE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @_T(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @_ftprintf(i32 %33, i32 %34)
  %36 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %36, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %92

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %21, %3
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %38
  %42 = load i32, i32* @MAX_PATH, align 4
  %43 = add nsw i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %13, align 8
  %46 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %14, align 8
  %47 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @_stprintf(i32* %18, i32 %47, i32* %48)
  %50 = load i32, i32* @MAX_PATH, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @GetVolumeInformation(i32* %18, i32* null, i32 0, i32* null, i32* null, i32* null, i32* %46, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %41
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 @PrintErrorMessage(i32 %55)
  %57 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %57, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %68

58:                                               ; preds = %41
  %59 = call i32 @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i64 @_tcscmp(i32* %46, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 @_T(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 @_ftprintf(i32 %63, i32 %64)
  %66 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %66, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %68

67:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %67, %62, %54
  %69 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %12, align 4
  switch i32 %70, label %92 [
    i32 0, label %71
  ]

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %71, %38
  %73 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @_stprintf(i32* %18, i32 %73, i32* %74)
  %76 = load i32, i32* @GENERIC_READ, align 4
  %77 = load i32, i32* @FILE_SHARE_READ, align 4
  %78 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @OPEN_EXISTING, align 4
  %81 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %82 = call i64 @CreateFile(i32* %18, i32 %76, i32 %79, i32* null, i32 %80, i32 %81, i32* null)
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %72
  %87 = call i32 (...) @GetLastError()
  %88 = call i32 @PrintErrorMessage(i32 %87)
  %89 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %89, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %92

90:                                               ; preds = %72
  %91 = load i64, i64* %9, align 8
  store i64 %91, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %92

92:                                               ; preds = %90, %86, %68, %32
  %93 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i64, i64* %4, align 8
  ret i64 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetDriveType(i32*) #2

declare dso_local i32 @_ftprintf(i32, i32) #2

declare dso_local i32 @_T(i8*) #2

declare dso_local i32 @_stprintf(i32*, i32, i32*) #2

declare dso_local i32 @GetVolumeInformation(i32*, i32*, i32, i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @PrintErrorMessage(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i64 @_tcscmp(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @CreateFile(i32*, i32, i32, i32*, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
