; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_tt.c_OnWrite.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_tt.c_OnWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32)*, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c" HPDF_Font_OnWrite\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Widths\00", align 1
@HPDF_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c" [\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @OnWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnWrite(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  store i8* %25, i8** %11, align 8
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %27 = getelementptr inbounds i8, i8* %26, i64 127
  store i8* %27, i8** %12, align 8
  %28 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @HPDF_Stream_WriteEscapeName(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @HPDF_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %107

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @HPDF_Stream_WriteStr(i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @HPDF_OK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %107

42:                                               ; preds = %35
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %82, %42
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ule i64 %47, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %46
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = call i8* @HPDF_IToA(i8* %53, i32 %59, i8* %60)
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %11, align 8
  store i8 32, i8* %62, align 1
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 1
  %66 = urem i64 %65, 16
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %52
  %69 = load i8*, i8** %11, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @HPDF_StrCpy(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* %5, align 4
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %74 = call i32 @HPDF_Stream_WriteStr(i32 %72, i8* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @HPDF_OK, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %107

79:                                               ; preds = %68
  %80 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  store i8* %80, i8** %11, align 8
  br label %81

81:                                               ; preds = %79, %52
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %8, align 8
  br label %46

85:                                               ; preds = %46
  %86 = load i8*, i8** %11, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @HPDF_StrCpy(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  %89 = load i32, i32* %5, align 4
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %91 = call i32 @HPDF_Stream_WriteStr(i32 %89, i8* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* @HPDF_OK, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %107

96:                                               ; preds = %85
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %100, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 %101(%struct.TYPE_9__* %104, i32 %105)
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %96, %94, %77, %40, %33
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_Stream_WriteEscapeName(i32, i8*) #1

declare dso_local i32 @HPDF_Stream_WriteStr(i32, i8*) #1

declare dso_local i8* @HPDF_IToA(i8*, i32, i8*) #1

declare dso_local i32 @HPDF_StrCpy(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
