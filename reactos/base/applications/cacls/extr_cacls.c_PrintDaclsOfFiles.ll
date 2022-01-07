; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cacls/extr_cacls.c_PrintDaclsOfFiles.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cacls/extr_cacls.c_PrintDaclsOfFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@OptionC = common dso_local global i32 0, align 4
@StdOut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@ERROR_NO_MORE_FILES = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @PrintDaclsOfFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PrintDaclsOfFiles(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @GetPathOfFile(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %78

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @FindFirstFile(i32 %20, %struct.TYPE_4__* %6)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %78

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %61, %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %61

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PrintFileDacl(i32* %13, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %35
  %41 = call i64 (...) @GetLastError()
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @PrintError(i64 %46)
  %48 = load i32, i32* @OptionC, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @FindClose(i64 %51)
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %78

54:                                               ; preds = %45
  br label %56

55:                                               ; preds = %40
  br label %65

56:                                               ; preds = %54
  br label %60

57:                                               ; preds = %35
  %58 = load i32, i32* @StdOut, align 4
  %59 = call i32 @ConPuts(i32 %58, i8* bitcast ([2 x i32]* @.str to i8*))
  br label %60

60:                                               ; preds = %57, %56
  br label %61

61:                                               ; preds = %60, %34
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @FindNextFile(i64 %62, %struct.TYPE_4__* %6)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %28, label %65

65:                                               ; preds = %61, %55
  %66 = call i64 (...) @GetLastError()
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @FindClose(i64 %67)
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @ERROR_NO_MORE_FILES, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @PrintError(i64 %73)
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %78

76:                                               ; preds = %65
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %78

78:                                               ; preds = %76, %72, %50, %25, %17
  %79 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetPathOfFile(i32*, i32) #2

declare dso_local i64 @FindFirstFile(i32, %struct.TYPE_4__*) #2

declare dso_local i32 @PrintFileDacl(i32*, i32) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @PrintError(i64) #2

declare dso_local i32 @FindClose(i64) #2

declare dso_local i32 @ConPuts(i32, i8*) #2

declare dso_local i64 @FindNextFile(i64, %struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
