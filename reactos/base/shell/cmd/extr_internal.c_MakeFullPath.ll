; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_internal.c_MakeFullPath.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_internal.c_MakeFullPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ERROR_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ERROR_ALREADY_EXISTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MakeFullPath(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i64, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i64*, i64** %3, align 8
  store i64* %13, i64** %6, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = call i64 @CreateDirectory(i64* %14, i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %90

19:                                               ; preds = %1
  %20 = call i64 (...) @GetLastError()
  %21 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %90

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  %27 = load i64*, i64** %6, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i64*, i64** %6, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @_T(i8 signext 58)
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i64*, i64** %6, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  store i64* %39, i64** %6, align 8
  br label %40

40:                                               ; preds = %37, %31, %26
  br label %41

41:                                               ; preds = %46, %40
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @_T(i8 signext 92)
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i64*, i64** %6, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %6, align 8
  br label %41

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %85, %49
  %51 = load i64*, i64** %6, align 8
  %52 = call i64 @_T(i8 signext 92)
  %53 = call i64* @_tcschr(i64* %51, i64 %52)
  store i64* %53, i64** %6, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i64*, i64** %6, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %6, align 8
  %59 = load i64*, i64** %3, align 8
  %60 = ptrtoint i64* %57 to i64
  %61 = ptrtoint i64* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 8
  br label %68

64:                                               ; preds = %50
  %65 = load i64*, i64** %3, align 8
  %66 = call i32 @_tcslen(i64* %65)
  %67 = sext i32 %66 to i64
  br label %68

68:                                               ; preds = %64, %56
  %69 = phi i64 [ %63, %56 ], [ %67, %64 ]
  store i64 %69, i64* %7, align 8
  %70 = load i64*, i64** %3, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @_tcsncpy(i64* %12, i64* %70, i64 %71)
  %73 = call i64 @_T(i8 signext 0)
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i64, i64* %12, i64 %74
  store i64 %73, i64* %75, align 8
  %76 = call i64 @CreateDirectory(i64* %12, i32* null)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %68
  %79 = call i64 (...) @GetLastError()
  %80 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %90

84:                                               ; preds = %78, %68
  br label %85

85:                                               ; preds = %84
  %86 = load i64*, i64** %6, align 8
  %87 = icmp ne i64* %86, null
  br i1 %87, label %50, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %90

90:                                               ; preds = %88, %82, %23, %17
  %91 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CreateDirectory(i64*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @_T(i8 signext) #2

declare dso_local i64* @_tcschr(i64*, i64) #2

declare dso_local i32 @_tcslen(i64*) #2

declare dso_local i32 @_tcsncpy(i64*, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
