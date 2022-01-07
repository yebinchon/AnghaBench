; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cacls/extr_cacls.c_ChangeACLsOfFilesInCurDir.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cacls/extr_cacls.c_ChangeACLsOfFilesInCurDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@OptionC = common dso_local global i32 0, align 4
@ERROR_NO_MORE_FILES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ChangeACLsOfFilesInCurDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ChangeACLsOfFilesInCurDir(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = call i32 @GetCurrentDirectory(i32 %14, i32* %13)
  %16 = call i32 @AddBackslash(i32* %13)
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @FindFirstFile(i32 %17, %struct.TYPE_4__* %5)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %145

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %55, %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %55

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ChangeFileACL(i32* %13, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %32
  %38 = call i64 (...) @GetLastError()
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @PrintError(i64 %43)
  %45 = load i32, i32* @OptionC, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @FindClose(i64 %48)
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %145

51:                                               ; preds = %42
  br label %53

52:                                               ; preds = %37
  br label %59

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %32
  br label %55

55:                                               ; preds = %54, %31
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @FindNextFile(i64 %56, %struct.TYPE_4__* %5)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %25, label %59

59:                                               ; preds = %55, %52
  %60 = call i64 (...) @GetLastError()
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @FindClose(i64 %61)
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @ERROR_NO_MORE_FILES, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @PrintError(i64 %67)
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %145

70:                                               ; preds = %59
  %71 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %72 = call i64 @FindFirstFile(i32 %71, %struct.TYPE_4__* %5)
  store i64 %72, i64* %4, align 8
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %145

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %128, %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %83 = call i64 @_tcscmp(i32* %81, i32 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %89 = call i64 @_tcscmp(i32* %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85, %79
  br label %128

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %127

98:                                               ; preds = %92
  %99 = load i32, i32* @MAX_PATH, align 4
  %100 = call i32 @GetCurrentDirectory(i32 %99, i32* %13)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @SetCurrentDirectory(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @ChangeACLsOfFilesInCurDir(i32 %106)
  %108 = call i64 @SetCurrentDirectory(i32* %13)
  br label %126

109:                                              ; preds = %98
  %110 = call i64 (...) @GetLastError()
  store i64 %110, i64* %8, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @PrintError(i64 %115)
  %117 = load i32, i32* @OptionC, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = load i64, i64* %4, align 8
  %121 = call i32 @FindClose(i64 %120)
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %145

123:                                              ; preds = %114
  br label %125

124:                                              ; preds = %109
  br label %132

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125, %105
  br label %127

127:                                              ; preds = %126, %92
  br label %128

128:                                              ; preds = %127, %91
  %129 = load i64, i64* %4, align 8
  %130 = call i64 @FindNextFile(i64 %129, %struct.TYPE_4__* %5)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %79, label %132

132:                                              ; preds = %128, %124
  %133 = call i64 (...) @GetLastError()
  store i64 %133, i64* %8, align 8
  %134 = load i64, i64* %4, align 8
  %135 = call i32 @FindClose(i64 %134)
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* @ERROR_NO_MORE_FILES, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @PrintError(i64 %140)
  %142 = load i32, i32* @FALSE, align 4
  store i32 %142, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %145

143:                                              ; preds = %132
  %144 = load i32, i32* @TRUE, align 4
  store i32 %144, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %145

145:                                              ; preds = %143, %139, %119, %76, %66, %47, %22
  %146 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCurrentDirectory(i32, i32*) #2

declare dso_local i32 @AddBackslash(i32*) #2

declare dso_local i64 @FindFirstFile(i32, %struct.TYPE_4__*) #2

declare dso_local i32 @ChangeFileACL(i32*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @PrintError(i64) #2

declare dso_local i32 @FindClose(i64) #2

declare dso_local i64 @FindNextFile(i64, %struct.TYPE_4__*) #2

declare dso_local i32 @_T(i8*) #2

declare dso_local i64 @_tcscmp(i32*, i32) #2

declare dso_local i64 @SetCurrentDirectory(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
