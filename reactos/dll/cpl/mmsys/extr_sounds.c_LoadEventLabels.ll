; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_LoadEventLabels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_LoadEventLabels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"AppEvents\\EventLabels\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadEventLabels(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %17 = call i32 @_T(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @KEY_READ, align 4
  %19 = call i64 @RegOpenKeyEx(i32 %16, i32 %17, i32 0, i32 %18, i32* %4)
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %55

24:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %45, %24
  %26 = call i64 @_countof(i32* %15)
  store i64 %26, i64* %8, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @RegEnumKeyEx(i32 %27, i64 %28, i32* %15, i64* %8, i32* null, i32* null, i32* null, i32* null)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @LoadEventLabel(i32 %34, i32 %35, i32* %15)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i64, i64* %10, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i64, i64* %5, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @ERROR_SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %25, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @RegCloseKey(i32 %50)
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %55

55:                                               ; preds = %49, %22
  %56 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyEx(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @_T(i8*) #2

declare dso_local i64 @_countof(i32*) #2

declare dso_local i64 @RegEnumKeyEx(i32, i64, i32*, i64*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @LoadEventLabel(i32, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
