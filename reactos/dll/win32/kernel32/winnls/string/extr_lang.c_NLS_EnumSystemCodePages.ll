; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lang.c_NLS_EnumSystemCodePages.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lang.c_NLS_EnumSystemCodePages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 (i8*)*, i64 (i32*)* }

@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ERROR_INVALID_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 92, i32 78, i32 76, i32 83, i32 92, i32 67, i32 111, i32 100, i32 101, i32 80, i32 97, i32 103, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"NLS_RegOpenKey() failed\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @NLS_EnumSystemCodePages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @NLS_EnumSystemCodePages(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i64, i64* @TRUE, align 8
  store i64 %16, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %21 = call i32 @SetLastError(i32 %20)
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %104

23:                                               ; preds = %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %28 [
    i32 129, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %23, %23
  br label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @ERROR_INVALID_FLAGS, align 4
  %30 = call i32 @SetLastError(i32 %29)
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %104

32:                                               ; preds = %27
  %33 = call i64 @NLS_RegOpenKey(i32 0, i8* bitcast ([64 x i32]* @.str to i8*))
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %104

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %95, %39
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %96

43:                                               ; preds = %40
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %47 = mul nuw i64 4, %13
  %48 = trunc i64 %47 to i32
  %49 = call i64 @NLS_RegEnumValue(i64 %44, i64 %45, i32* %46, i32 24, i32* %15, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %43
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 128
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 129
  br i1 %60, label %61, label %86

61:                                               ; preds = %56
  %62 = call i32 @wcslen(i32* %15)
  %63 = icmp sgt i32 %62, 2
  br i1 %63, label %64, label %86

64:                                               ; preds = %61, %51
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i64 (i32*)*, i64 (i32*)** %66, align 8
  %68 = icmp ne i64 (i32*)* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i64 (i32*)*, i64 (i32*)** %71, align 8
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %74 = call i64 %72(i32* %73)
  store i64 %74, i64* %8, align 8
  br label %85

75:                                               ; preds = %64
  %76 = load i32, i32* @CP_ACP, align 4
  %77 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %78 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %79 = call i32 @WideCharToMultiByte(i32 %76, i32 0, i32* %77, i32 -1, i8* %78, i32 6, i32 0, i32 0)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64 (i8*)*, i64 (i8*)** %81, align 8
  %83 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %84 = call i64 %82(i8* %83)
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %75, %69
  br label %86

86:                                               ; preds = %85, %61, %56
  %87 = load i64, i64* %9, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %9, align 8
  br label %91

89:                                               ; preds = %43
  %90 = load i64, i64* @FALSE, align 8
  store i64 %90, i64* %8, align 8
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  br label %96

95:                                               ; preds = %91
  br label %40

96:                                               ; preds = %94, %40
  %97 = load i64, i64* %7, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @NtClose(i64 %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i64, i64* @TRUE, align 8
  store i64 %103, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %104

104:                                              ; preds = %102, %36, %28, %19
  %105 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i64, i64* %2, align 8
  ret i64 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @NLS_RegOpenKey(i32, i8*) #2

declare dso_local i32 @WARN(i8*) #2

declare dso_local i64 @NLS_RegEnumValue(i64, i64, i32*, i32, i32*, i32) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @NtClose(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
