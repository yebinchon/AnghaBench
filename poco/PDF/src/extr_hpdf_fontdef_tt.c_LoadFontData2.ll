; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_LoadFontData2.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_LoadFontData2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c" HPDF_TTFontDef_LoadFontData2\0A\00", align 1
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"ttcf\00", align 1
@HPDF_INVALID_TTC_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c" HPDF_TTFontDef_LoadFontData2 num_fonts=%u\0A\00", align 1
@HPDF_INVALID_TTC_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32, i64, i32)* @LoadFontData2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LoadFontData2(%struct.TYPE_6__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %10, align 8
  %21 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @HPDF_SEEK_SET, align 4
  %30 = call i64 @HPDF_Stream_Seek(i32 %28, i32 0, i32 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @HPDF_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i64, i64* %11, align 8
  store i64 %35, i64* %5, align 8
  br label %107

36:                                               ; preds = %4
  store i64 4, i64* %15, align 8
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %39 = call i64 @HPDF_Stream_Read(i32 %37, i32* %38, i64* %15)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* @HPDF_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* %11, align 8
  store i64 %43, i64* %5, align 8
  br label %107

44:                                               ; preds = %36
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %46 = call i64 @HPDF_MemCmp(i32* %45, i32* bitcast ([5 x i8]* @.str.1 to i32*), i32 4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HPDF_INVALID_TTC_FILE, align 4
  %53 = call i64 @HPDF_SetError(i32 %51, i32 %52, i32 0)
  store i64 %53, i64* %5, align 8
  br label %107

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @HPDF_SEEK_SET, align 4
  %57 = call i64 @HPDF_Stream_Seek(i32 %55, i32 8, i32 %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* @HPDF_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i64, i64* %11, align 8
  store i64 %61, i64* %5, align 8
  br label %107

62:                                               ; preds = %54
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @GetUINT32(i32 %63, i64* %13)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* @HPDF_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, i64* %11, align 8
  store i64 %68, i64* %5, align 8
  br label %107

69:                                               ; preds = %62
  %70 = load i64, i64* %13, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @HPDF_PTRACE(i8* %71)
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %13, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @HPDF_INVALID_TTC_INDEX, align 4
  %81 = call i64 @HPDF_SetError(i32 %79, i32 %80, i32 0)
  store i64 %81, i64* %5, align 8
  br label %107

82:                                               ; preds = %69
  %83 = load i32, i32* %7, align 4
  %84 = load i64, i64* %8, align 8
  %85 = mul nsw i64 %84, 4
  %86 = add nsw i64 12, %85
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* @HPDF_SEEK_SET, align 4
  %89 = call i64 @HPDF_Stream_Seek(i32 %83, i32 %87, i32 %88)
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* @HPDF_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i64, i64* %11, align 8
  store i64 %93, i64* %5, align 8
  br label %107

94:                                               ; preds = %82
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @GetUINT32(i32 %95, i64* %14)
  store i64 %96, i64* %11, align 8
  %97 = load i64, i64* @HPDF_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i64, i64* %11, align 8
  store i64 %100, i64* %5, align 8
  br label %107

101:                                              ; preds = %94
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i64, i64* %14, align 8
  %106 = call i64 @LoadFontData(%struct.TYPE_6__* %102, i32 %103, i32 %104, i64 %105)
  store i64 %106, i64* %5, align 8
  br label %107

107:                                              ; preds = %101, %99, %92, %76, %67, %60, %48, %42, %34
  %108 = load i64, i64* %5, align 8
  ret i64 %108
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Stream_Seek(i32, i32, i32) #1

declare dso_local i64 @HPDF_Stream_Read(i32, i32*, i64*) #1

declare dso_local i64 @HPDF_MemCmp(i32*, i32*, i32) #1

declare dso_local i64 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i64 @GetUINT32(i32, i64*) #1

declare dso_local i64 @LoadFontData(%struct.TYPE_6__*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
