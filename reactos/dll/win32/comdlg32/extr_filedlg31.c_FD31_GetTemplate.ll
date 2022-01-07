; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_GetTemplate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_GetTemplate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@OFN_ENABLETEMPLATEHANDLE = common dso_local global i32 0, align 4
@CDERR_LOADRESFAILURE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@OFN_ENABLETEMPLATE = common dso_local global i32 0, align 4
@RT_DIALOG = common dso_local global i64 0, align 8
@CDERR_FINDRESFAILURE = common dso_local global i32 0, align 4
@COMDLG32_hInstance = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"OPEN_FILE\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SAVE_FILE\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @FD31_GetTemplate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FD31_GetTemplate(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OFN_ENABLETEMPLATEHANDLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @LockResource(i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = icmp ne i8* %25, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @CDERR_LOADRESFAILURE, align 4
  %31 = call i32 @COMDLG32_SetCommDlgExtendedError(i32 %30)
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %2, align 4
  br label %124

33:                                               ; preds = %21
  br label %122

34:                                               ; preds = %1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OFN_ENABLETEMPLATE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %89

41:                                               ; preds = %34
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* @RT_DIALOG, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @FindResourceA(i32 %47, i8* %50, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %64

54:                                               ; preds = %41
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* @RT_DIALOG, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @FindResourceW(i32 %57, i32 %60, i32 %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %54, %44
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @CDERR_FINDRESFAILURE, align 4
  %69 = call i32 @COMDLG32_SetCommDlgExtendedError(i32 %68)
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %2, align 4
  br label %124

71:                                               ; preds = %64
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @LoadResource(i32 %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* %6, align 4
  %80 = call i8* @LockResource(i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = icmp ne i8* %80, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %78, %71
  %85 = load i32, i32* @CDERR_LOADRESFAILURE, align 4
  %86 = call i32 @COMDLG32_SetCommDlgExtendedError(i32 %85)
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %2, align 4
  br label %124

88:                                               ; preds = %78
  br label %121

89:                                               ; preds = %34
  %90 = load i32, i32* @COMDLG32_hInstance, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)
  %97 = load i64, i64* @RT_DIALOG, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @FindResourceA(i32 %90, i8* %96, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %89
  %102 = load i32, i32* @CDERR_FINDRESFAILURE, align 4
  %103 = call i32 @COMDLG32_SetCommDlgExtendedError(i32 %102)
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %2, align 4
  br label %124

105:                                              ; preds = %89
  %106 = load i32, i32* @COMDLG32_hInstance, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @LoadResource(i32 %106, i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32, i32* %6, align 4
  %112 = call i8* @LockResource(i32 %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  %115 = icmp ne i8* %112, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %110, %105
  %117 = load i32, i32* @CDERR_LOADRESFAILURE, align 4
  %118 = call i32 @COMDLG32_SetCommDlgExtendedError(i32 %117)
  %119 = load i32, i32* @FALSE, align 4
  store i32 %119, i32* %2, align 4
  br label %124

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %88
  br label %122

122:                                              ; preds = %121, %33
  %123 = load i32, i32* @TRUE, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %116, %101, %84, %67, %29
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i8* @LockResource(i32) #1

declare dso_local i32 @COMDLG32_SetCommDlgExtendedError(i32) #1

declare dso_local i32 @FindResourceA(i32, i8*, i32) #1

declare dso_local i32 @FindResourceW(i32, i32, i32) #1

declare dso_local i32 @LoadResource(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
