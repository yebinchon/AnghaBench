; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_LoadFontData.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_LoadFontData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i8*, i8*, i32, i32 }
%struct.TYPE_26__ = type { i32*, %struct.TYPE_25__, %struct.TYPE_24__*, %struct.TYPE_23__, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_22__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c" HPDF_TTFontDef_LoadFontData\0A\00", align 1
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"glyf\00", align 1
@HPDF_TTF_MISSING_TABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c" fontdef->cap_height=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c" fontdef->x_height=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c" fontdef->missing_width=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, i32*, i32, i32)* @LoadFontData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadFontData(%struct.TYPE_28__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_22__, align 8
  %14 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %10, align 8
  %20 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @HPDF_SEEK_SET, align 4
  %30 = call i32 @HPDF_Stream_Seek(i32* %27, i32 %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @HPDF_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %172

35:                                               ; preds = %4
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %37 = call i32 @LoadTTFTable(%struct.TYPE_28__* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @HPDF_OK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %172

42:                                               ; preds = %35
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %44 = call i32 @ParseHead(%struct.TYPE_28__* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @HPDF_OK, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %172

49:                                               ; preds = %42
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %51 = call i32 @ParseMaxp(%struct.TYPE_28__* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* @HPDF_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %172

56:                                               ; preds = %49
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %58 = call i32 @ParseHhea(%struct.TYPE_28__* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @HPDF_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %172

63:                                               ; preds = %56
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %65 = call i32 @ParseCMap(%struct.TYPE_28__* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* @HPDF_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %5, align 4
  br label %172

70:                                               ; preds = %63
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %72 = call i32 @ParseHmtx(%struct.TYPE_28__* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* @HPDF_OK, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %5, align 4
  br label %172

77:                                               ; preds = %70
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %79 = call i32 @ParseLoca(%struct.TYPE_28__* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* @HPDF_OK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %172

84:                                               ; preds = %77
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %86 = call i32 @ParseName(%struct.TYPE_28__* %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* @HPDF_OK, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %5, align 4
  br label %172

91:                                               ; preds = %84
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %93 = call i32 @ParseOS2(%struct.TYPE_28__* %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* @HPDF_OK, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %5, align 4
  br label %172

98:                                               ; preds = %91
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %100 = call %struct.TYPE_27__* @FindTable(%struct.TYPE_28__* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_27__* %100, %struct.TYPE_27__** %12, align 8
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %102 = icmp ne %struct.TYPE_27__* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @HPDF_TTF_MISSING_TABLE, align 4
  %108 = call i32 @HPDF_SetError(i32 %106, i32 %107, i32 4)
  store i32 %108, i32* %5, align 4
  br label %172

109:                                              ; preds = %98
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %117 = call i64 @HPDF_TTFontDef_GetCharBBox(%struct.TYPE_28__* %116, i8* inttoptr (i64 72 to i8*))
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store i64 %117, i64* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %125 = call i64 @HPDF_TTFontDef_GetCharBBox(%struct.TYPE_28__* %124, i8* inttoptr (i64 120 to i8*))
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  store i64 %125, i64* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = mul nsw i32 %138, 1000
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sdiv i32 %139, %143
  %145 = sext i32 %144 to i64
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @HPDF_PTRACE(i8* %150)
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @HPDF_PTRACE(i8* %154)
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = call i32 @HPDF_PTRACE(i8* %159)
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %109
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @HPDF_Stream_Free(i32* %166)
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  store i32* null, i32** %169, align 8
  br label %170

170:                                              ; preds = %163, %109
  %171 = load i32, i32* @HPDF_OK, align 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %170, %103, %96, %89, %82, %75, %68, %61, %54, %47, %40, %33
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_Stream_Seek(i32*, i32, i32) #1

declare dso_local i32 @LoadTTFTable(%struct.TYPE_28__*) #1

declare dso_local i32 @ParseHead(%struct.TYPE_28__*) #1

declare dso_local i32 @ParseMaxp(%struct.TYPE_28__*) #1

declare dso_local i32 @ParseHhea(%struct.TYPE_28__*) #1

declare dso_local i32 @ParseCMap(%struct.TYPE_28__*) #1

declare dso_local i32 @ParseHmtx(%struct.TYPE_28__*) #1

declare dso_local i32 @ParseLoca(%struct.TYPE_28__*) #1

declare dso_local i32 @ParseName(%struct.TYPE_28__*) #1

declare dso_local i32 @ParseOS2(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_27__* @FindTable(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i64 @HPDF_TTFontDef_GetCharBBox(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @HPDF_Stream_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
