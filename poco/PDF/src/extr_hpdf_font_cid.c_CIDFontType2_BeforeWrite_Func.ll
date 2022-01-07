; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_cid.c_CIDFontType2_BeforeWrite_Func.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_cid.c_CIDFontType2_BeforeWrite_Func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_23__*, i32, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { %struct.TYPE_23__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i8*, i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c" CIDFontType2_BeforeWrite_Func\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"FontFile2\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Length1\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Length2\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Length3\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"FontDescriptor\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Ascent\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Descent\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"ItalicAngle\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"StemV\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"XHeight\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"BaseFont\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*)* @CIDFontType2_BeforeWrite_Func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CIDFontType2_BeforeWrite_Func(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %4, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %5, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %6, align 8
  store i64 0, i64* %7, align 8
  %24 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = icmp ne %struct.TYPE_18__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %29, %1
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %41 = icmp ne %struct.TYPE_19__* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %42, %37
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %54, align 8
  %56 = icmp ne %struct.TYPE_23__* %55, null
  br i1 %56, label %226, label %57

57:                                               ; preds = %50
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.TYPE_23__* @HPDF_Dict_New(i32 %60)
  store %struct.TYPE_23__* %61, %struct.TYPE_23__** %8, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %63 = icmp ne %struct.TYPE_23__* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @HPDF_Error_GetCode(i32 %67)
  store i64 %68, i64* %2, align 8
  br label %258

69:                                               ; preds = %57
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %139

74:                                               ; preds = %69
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.TYPE_23__* @HPDF_DictStream_New(i32 %77, i32 %80)
  store %struct.TYPE_23__* %81, %struct.TYPE_23__** %10, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %83 = icmp ne %struct.TYPE_23__* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %74
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @HPDF_Error_GetCode(i32 %87)
  store i64 %88, i64* %2, align 8
  br label %258

89:                                               ; preds = %74
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %91, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @HPDF_TTFontDef_SaveFontData(%struct.TYPE_21__* %92, i32 %95)
  %97 = load i64, i64* @HPDF_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %89
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @HPDF_Error_GetCode(i32 %102)
  store i64 %103, i64* %2, align 8
  br label %258

104:                                              ; preds = %89
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %107 = call i64 @HPDF_Dict_Add(%struct.TYPE_23__* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_23__* %106)
  %108 = load i64, i64* %7, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %7, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_23__* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load i64, i64* %7, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %7, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %118 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_23__* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %119 = load i64, i64* %7, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %7, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %122 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_23__* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %123 = load i64, i64* %7, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %7, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* @HPDF_OK, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %104
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @HPDF_Error_GetCode(i32 %136)
  store i64 %137, i64* %2, align 8
  br label %258

138:                                              ; preds = %104
  br label %139

139:                                              ; preds = %138, %69
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %144 = call i64 @HPDF_Xref_Add(i32 %142, %struct.TYPE_23__* %143)
  %145 = load i64, i64* %7, align 8
  %146 = add nsw i64 %145, %144
  store i64 %146, i64* %7, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %148 = call i64 @HPDF_Dict_AddName(%struct.TYPE_23__* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %149 = load i64, i64* %7, align 8
  %150 = add nsw i64 %149, %148
  store i64 %150, i64* %7, align 8
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_23__* %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %154)
  %156 = load i64, i64* %7, align 8
  %157 = add nsw i64 %156, %155
  store i64 %157, i64* %7, align 8
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_23__* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %161)
  %163 = load i64, i64* %7, align 8
  %164 = add nsw i64 %163, %162
  store i64 %164, i64* %7, align 8
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_23__* %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %168)
  %170 = load i64, i64* %7, align 8
  %171 = add nsw i64 %170, %169
  store i64 %171, i64* %7, align 8
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = call %struct.TYPE_23__* @HPDF_Box_Array_New(i32 %174, i32 %177)
  store %struct.TYPE_23__* %178, %struct.TYPE_23__** %9, align 8
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %181 = call i64 @HPDF_Dict_Add(%struct.TYPE_23__* %179, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_23__* %180)
  %182 = load i64, i64* %7, align 8
  %183 = add nsw i64 %182, %181
  store i64 %183, i64* %7, align 8
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i64 @HPDF_Dict_AddName(%struct.TYPE_23__* %184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %187)
  %189 = load i64, i64* %7, align 8
  %190 = add nsw i64 %189, %188
  store i64 %190, i64* %7, align 8
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_23__* %191, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %194)
  %196 = load i64, i64* %7, align 8
  %197 = add nsw i64 %196, %195
  store i64 %197, i64* %7, align 8
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_23__* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %201)
  %203 = load i64, i64* %7, align 8
  %204 = add nsw i64 %203, %202
  store i64 %204, i64* %7, align 8
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_23__* %205, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %208)
  %210 = load i64, i64* %7, align 8
  %211 = add nsw i64 %210, %209
  store i64 %211, i64* %7, align 8
  %212 = load i64, i64* %7, align 8
  %213 = load i64, i64* @HPDF_OK, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %139
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i64 @HPDF_Error_GetCode(i32 %218)
  store i64 %219, i64* %2, align 8
  br label %258

220:                                              ; preds = %139
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 0
  store %struct.TYPE_23__* %221, %struct.TYPE_23__** %225, align 8
  br label %226

226:                                              ; preds = %220, %50
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = call i64 @HPDF_Dict_AddName(%struct.TYPE_23__* %227, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* %230)
  store i64 %231, i64* %7, align 8
  %232 = load i64, i64* @HPDF_OK, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %226
  %235 = load i64, i64* %7, align 8
  store i64 %235, i64* %2, align 8
  br label %258

236:                                              ; preds = %226
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %238, align 8
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = call i64 @HPDF_Dict_AddName(%struct.TYPE_23__* %239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* %242)
  store i64 %243, i64* %7, align 8
  %244 = load i64, i64* @HPDF_OK, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %236
  %247 = load i64, i64* %7, align 8
  store i64 %247, i64* %2, align 8
  br label %258

248:                                              ; preds = %236
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %250, align 8
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %255, align 8
  %257 = call i64 @HPDF_Dict_Add(%struct.TYPE_23__* %251, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_23__* %256)
  store i64 %257, i64* %2, align 8
  br label %258

258:                                              ; preds = %248, %246, %234, %215, %133, %99, %84, %64
  %259 = load i64, i64* %2, align 8
  ret i64 %259
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_23__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local %struct.TYPE_23__* @HPDF_DictStream_New(i32, i32) #1

declare dso_local i64 @HPDF_TTFontDef_SaveFontData(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_23__*, i8*, %struct.TYPE_23__*) #1

declare dso_local i64 @HPDF_Dict_AddNumber(%struct.TYPE_23__*, i8*, i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_23__*) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_23__*, i8*, i8*) #1

declare dso_local %struct.TYPE_23__* @HPDF_Box_Array_New(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
