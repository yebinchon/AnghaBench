; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lang.c_NLS_EnumSystemLanguageGroups.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lang.c_NLS_EnumSystemLanguageGroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32, i8*, i8*, i32, i32)*, i32 (i32, i8*, i8*, i32, i32)*, i32 }

@TRUE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_INVALID_FLAGS = common dso_local global i32 0, align 4
@szLangGroupsKeyName = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"NLS registry key not found. Please apply the default registry file 'wine.inf'\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"grpid %s (%sinstalled)\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @NLS_EnumSystemLanguageGroups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NLS_EnumSystemLanguageGroups(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [10 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [48 x i8], align 16
  %12 = alloca [10 x i8], align 1
  %13 = alloca [48 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %19 = call i32 @SetLastError(i32 %18)
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %2, align 4
  br label %140

21:                                               ; preds = %1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %29 [
    i32 0, label %25
    i32 129, label %28
    i32 128, label %28
  ]

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 129, i32* %27, align 8
  br label %28

28:                                               ; preds = %21, %21, %25
  br label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @ERROR_INVALID_FLAGS, align 4
  %31 = call i32 @SetLastError(i32 %30)
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %2, align 4
  br label %140

33:                                               ; preds = %28
  %34 = load i32, i32* @szLangGroupsKeyName, align 4
  %35 = call i64 @NLS_RegOpenKey(i32 0, i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = call i32 @FIXME(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  br label %41

41:                                               ; preds = %131, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %132

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %49 = call i64 @NLS_RegEnumValue(i64 %45, i64 %46, i8* %47, i32 10, i8* %48, i32 4)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %125

51:                                               ; preds = %44
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 49
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %58 = call i32 @strtoulW(i8* %57, i32* null, i32 16)
  store i32 %58, i32* %10, align 4
  %59 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %60 = call i32 @debugstr_w(i8* %59)
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %65 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %60, i8* %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 128
  br i1 %69, label %73, label %70

70:                                               ; preds = %51
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %122

73:                                               ; preds = %70, %51
  %74 = load i32, i32* %10, align 4
  %75 = getelementptr inbounds [48 x i8], [48 x i8]* %11, i64 0, i64 0
  %76 = call i32 @NLS_GetLanguageGroupName(i32 %74, i8* %75, i32 48)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds [48 x i8], [48 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %79, align 16
  br label %80

80:                                               ; preds = %78, %73
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32 (i32, i8*, i8*, i32, i32)*, i32 (i32, i8*, i8*, i32, i32)** %82, align 8
  %84 = icmp ne i32 (i32, i8*, i8*, i32, i32)* %83, null
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32 (i32, i8*, i8*, i32, i32)*, i32 (i32, i8*, i8*, i32, i32)** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %91 = getelementptr inbounds [48 x i8], [48 x i8]* %11, i64 0, i64 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %88(i32 %89, i8* %90, i8* %91, i32 %94, i32 %97)
  store i32 %98, i32* %7, align 4
  br label %121

99:                                               ; preds = %80
  %100 = load i32, i32* @CP_ACP, align 4
  %101 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %102 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %103 = call i32 @WideCharToMultiByte(i32 %100, i32 0, i8* %101, i32 -1, i8* %102, i32 10, i32 0, i32 0)
  %104 = load i32, i32* @CP_ACP, align 4
  %105 = getelementptr inbounds [48 x i8], [48 x i8]* %11, i64 0, i64 0
  %106 = getelementptr inbounds [48 x i8], [48 x i8]* %13, i64 0, i64 0
  %107 = call i32 @WideCharToMultiByte(i32 %104, i32 0, i8* %105, i32 -1, i8* %106, i32 48, i32 0, i32 0)
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32 (i32, i8*, i8*, i32, i32)*, i32 (i32, i8*, i8*, i32, i32)** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %113 = getelementptr inbounds [48 x i8], [48 x i8]* %13, i64 0, i64 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 %110(i32 %111, i8* %112, i8* %113, i32 %116, i32 %119)
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %99, %85
  br label %122

122:                                              ; preds = %121, %70
  %123 = load i64, i64* %8, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %8, align 8
  br label %127

125:                                              ; preds = %44
  %126 = load i32, i32* @FALSE, align 4
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %125, %122
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  br label %132

131:                                              ; preds = %127
  br label %41

132:                                              ; preds = %130, %41
  %133 = load i64, i64* %6, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @NtClose(i64 %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32, i32* @TRUE, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %138, %29, %17
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @NLS_RegOpenKey(i32, i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @NLS_RegEnumValue(i64, i64, i8*, i32, i8*, i32) #1

declare dso_local i32 @strtoulW(i8*, i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i8*) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @NLS_GetLanguageGroupName(i32, i8*, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @NtClose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
