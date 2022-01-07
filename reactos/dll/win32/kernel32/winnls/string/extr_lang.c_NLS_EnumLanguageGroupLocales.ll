; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lang.c_NLS_EnumLanguageGroupLocales.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lang.c_NLS_EnumLanguageGroupLocales.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 (i64, i8*, i8*, i32)*, i64 (i64, i8*, i8*, i32)*, i64 }

@NLS_EnumLanguageGroupLocales.szAlternateSortsKeyName = internal constant [16 x i8] c"Alternate Sorts\00", align 16
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@LGRPID_ARMENIAN = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ERROR_INVALID_FLAGS = common dso_local global i32 0, align 4
@szLocaleKeyName = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [79 x i8] c"NLS registry key not found. Please apply the default registry file 'wine.inf'\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"lcid %s, grpid %d (%smatched)\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @NLS_EnumLanguageGroupLocales to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @NLS_EnumLanguageGroupLocales(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [10 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [10 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %13 = load i64, i64* @TRUE, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %8, align 8
  store i32 1, i32* %10, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LGRPID_ARMENIAN, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %17, %1
  %29 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %30 = call i32 @SetLastError(i32 %29)
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %2, align 8
  br label %139

32:                                               ; preds = %22
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @ERROR_INVALID_FLAGS, align 4
  %39 = call i32 @SetLastError(i32 %38)
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %2, align 8
  br label %139

41:                                               ; preds = %32
  %42 = load i8*, i8** @szLocaleKeyName, align 8
  %43 = call i64 @NLS_RegOpenKey(i64 0, i8* %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = call i32 @WARN(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  br label %49

49:                                               ; preds = %130, %48
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %131

52:                                               ; preds = %49
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %57 = call i64 @NLS_RegEnumValue(i64 %53, i32 %54, i8* %55, i32 10, i8* %56, i32 4)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %116

59:                                               ; preds = %52
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %61 = call i8* @strtoulW(i8* %60, i32* null, i32 16)
  %62 = ptrtoint i8* %61 to i64
  store i64 %62, i64* %9, align 8
  %63 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %64 = call i32 @debugstr_w(i8* %63)
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %73 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %64, i64 %65, i8* %72)
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %59
  %80 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %81 = call i8* @strtoulW(i8* %80, i32* null, i32 16)
  store i8* %81, i8** %11, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i64 (i64, i8*, i8*, i32)*, i64 (i64, i8*, i8*, i32)** %83, align 8
  %85 = icmp ne i64 (i64, i8*, i8*, i32)* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i64 (i64, i8*, i8*, i32)*, i64 (i64, i8*, i8*, i32)** %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 %89(i64 %90, i8* %91, i8* %92, i32 %95)
  store i64 %96, i64* %7, align 8
  br label %112

97:                                               ; preds = %79
  %98 = load i32, i32* @CP_ACP, align 4
  %99 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %100 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %101 = call i32 @WideCharToMultiByte(i32 %98, i32 0, i8* %99, i32 -1, i8* %100, i32 10, i32 0, i32 0)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i64 (i64, i8*, i8*, i32)*, i64 (i64, i8*, i8*, i32)** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i64 %104(i64 %105, i8* %106, i8* %107, i32 %110)
  store i64 %111, i64* %7, align 8
  br label %112

112:                                              ; preds = %97, %86
  br label %113

113:                                              ; preds = %112, %59
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %126

116:                                              ; preds = %52
  %117 = load i64, i64* %8, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = load i64, i64* %6, align 8
  %121 = call i64 @NLS_RegOpenKey(i64 %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @NLS_EnumLanguageGroupLocales.szAlternateSortsKeyName, i64 0, i64 0))
  store i64 %121, i64* %6, align 8
  %122 = load i64, i64* @TRUE, align 8
  store i64 %122, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %125

123:                                              ; preds = %116
  %124 = load i64, i64* @FALSE, align 8
  store i64 %124, i64* %7, align 8
  br label %125

125:                                              ; preds = %123, %119
  br label %126

126:                                              ; preds = %125, %113
  %127 = load i64, i64* %7, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  br label %131

130:                                              ; preds = %126
  br label %49

131:                                              ; preds = %129, %49
  %132 = load i64, i64* %6, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @NtClose(i64 %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i64, i64* @TRUE, align 8
  store i64 %138, i64* %2, align 8
  br label %139

139:                                              ; preds = %137, %37, %28
  %140 = load i64, i64* %2, align 8
  ret i64 %140
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @NLS_RegOpenKey(i64, i8*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @NLS_RegEnumValue(i64, i32, i8*, i32, i8*, i32) #1

declare dso_local i8* @strtoulW(i8*, i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i64, i8*) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @NtClose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
