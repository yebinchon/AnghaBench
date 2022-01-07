; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_cid.c_CIDFontType2_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_cid.c_CIDFontType2_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_30__*, %struct.TYPE_31__*, %struct.TYPE_28__* }
%struct.TYPE_31__ = type { i64, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_32__ = type { i64**, i64**, i32, i32, i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c" HPDF_CIDFontType2_New\0A\00", align 1
@CIDFontType2_BeforeWrite_Func = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"CIDFontType2\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"DW\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"DW2\00", align 1
@HPDF_CMapEncoder_ToUnicode = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"CIDToGIDMap\00", align 1
@HPDF_INVALID_FONTDEF_DATA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"CIDSystemInfo\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Registry\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Ordering\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Supplement\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_30__* (%struct.TYPE_30__*, i32)* @CIDFontType2_New to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_30__* @CIDFontType2_New(%struct.TYPE_30__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [65536 x i64], align 16
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64*, align 8
  %26 = alloca %struct.TYPE_30__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca [2 x i64], align 16
  %29 = alloca i64, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store i32 %1, i32* %5, align 4
  %30 = load i64, i64* @HPDF_OK, align 8
  store i64 %30, i64* %6, align 8
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %35, %struct.TYPE_29__** %7, align 8
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %37, align 8
  store %struct.TYPE_28__* %38, %struct.TYPE_28__** %8, align 8
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %43, %struct.TYPE_27__** %9, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %45, align 8
  store %struct.TYPE_31__* %46, %struct.TYPE_31__** %10, align 8
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %51, %struct.TYPE_32__** %11, align 8
  store i64 0, i64* %17, align 8
  %52 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_30__* @HPDF_Dict_New(i32 %55)
  store %struct.TYPE_30__* %56, %struct.TYPE_30__** %12, align 8
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %58 = icmp ne %struct.TYPE_30__* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %2
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

60:                                               ; preds = %2
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %63 = call i64 @HPDF_Xref_Add(i32 %61, %struct.TYPE_30__* %62)
  %64 = load i64, i64* @HPDF_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

67:                                               ; preds = %60
  %68 = load i32, i32* @CIDFontType2_BeforeWrite_Func, align 4
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %72 = call i64 @HPDF_Dict_AddName(%struct.TYPE_30__* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i64, i64* %6, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %6, align 8
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %76 = call i64 @HPDF_Dict_AddName(%struct.TYPE_30__* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i64, i64* %6, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %6, align 8
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_30__* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = load i64, i64* %6, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @HPDF_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %67
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

90:                                               ; preds = %67
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.TYPE_30__* @HPDF_Array_New(i32 %93)
  store %struct.TYPE_30__* %94, %struct.TYPE_30__** %13, align 8
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %96 = icmp ne %struct.TYPE_30__* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

98:                                               ; preds = %90
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %101 = call i64 @HPDF_Dict_Add(%struct.TYPE_30__* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_30__* %100)
  %102 = load i64, i64* @HPDF_OK, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

105:                                              ; preds = %98
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i64 @HPDF_Array_AddNumber(%struct.TYPE_30__* %106, i32 %111)
  %113 = load i64, i64* %6, align 8
  %114 = add nsw i64 %113, %112
  store i64 %114, i64* %6, align 8
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %119, %123
  %125 = trunc i64 %124 to i32
  %126 = call i64 @HPDF_Array_AddNumber(%struct.TYPE_30__* %115, i32 %125)
  %127 = load i64, i64* %6, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %6, align 8
  %129 = getelementptr inbounds [65536 x i64], [65536 x i64]* %15, i64 0, i64 0
  %130 = call i32 @HPDF_MemSet(i64* %129, i32 0, i32 524288)
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* @HPDF_OK, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %105
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

135:                                              ; preds = %105
  store i32 0, i32* %14, align 4
  br label %136

136:                                              ; preds = %211, %135
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %137, 256
  br i1 %138, label %139, label %214

139:                                              ; preds = %136
  store i32 0, i32* %18, align 4
  br label %140

140:                                              ; preds = %207, %139
  %141 = load i32, i32* %18, align 4
  %142 = icmp slt i32 %141, 256
  br i1 %142, label %143, label %210

143:                                              ; preds = %140
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @HPDF_CMapEncoder_ToUnicode, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %188

149:                                              ; preds = %143
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 0
  %152 = load i64**, i64*** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64*, i64** %152, i64 %154
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %19, align 8
  %161 = load i64, i64* %19, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %187

163:                                              ; preds = %149
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 1
  %166 = load i64**, i64*** %165, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64*, i64** %166, i64 %168
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %18, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %20, align 8
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %176 = load i64, i64* %20, align 8
  %177 = call i64 @HPDF_TTFontDef_GetGlyphid(%struct.TYPE_28__* %175, i64 %176)
  store i64 %177, i64* %21, align 8
  %178 = load i64, i64* %21, align 8
  %179 = load i64, i64* %19, align 8
  %180 = getelementptr inbounds [65536 x i64], [65536 x i64]* %15, i64 0, i64 %179
  store i64 %178, i64* %180, align 8
  %181 = load i64, i64* %17, align 8
  %182 = load i64, i64* %19, align 8
  %183 = icmp slt i64 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %163
  %185 = load i64, i64* %19, align 8
  store i64 %185, i64* %17, align 8
  br label %186

186:                                              ; preds = %184, %163
  br label %187

187:                                              ; preds = %186, %149
  br label %206

188:                                              ; preds = %143
  %189 = load i32, i32* %14, align 4
  %190 = shl i32 %189, 8
  %191 = load i32, i32* %18, align 4
  %192 = or i32 %190, %191
  %193 = sext i32 %192 to i64
  store i64 %193, i64* %22, align 8
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %195 = load i64, i64* %22, align 8
  %196 = call i64 @HPDF_TTFontDef_GetGlyphid(%struct.TYPE_28__* %194, i64 %195)
  store i64 %196, i64* %23, align 8
  %197 = load i64, i64* %23, align 8
  %198 = load i64, i64* %22, align 8
  %199 = getelementptr inbounds [65536 x i64], [65536 x i64]* %15, i64 0, i64 %198
  store i64 %197, i64* %199, align 8
  %200 = load i64, i64* %17, align 8
  %201 = load i64, i64* %22, align 8
  %202 = icmp ult i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %188
  %204 = load i64, i64* %22, align 8
  store i64 %204, i64* %17, align 8
  br label %205

205:                                              ; preds = %203, %188
  br label %206

206:                                              ; preds = %205, %187
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %18, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %18, align 4
  br label %140

210:                                              ; preds = %140
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %14, align 4
  br label %136

214:                                              ; preds = %136
  %215 = load i64, i64* %17, align 8
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %358

217:                                              ; preds = %214
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  store i32 %220, i32* %24, align 4
  %221 = getelementptr inbounds [65536 x i64], [65536 x i64]* %15, i64 0, i64 0
  store i64* %221, i64** %25, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %26, align 8
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call %struct.TYPE_30__* @HPDF_Array_New(i32 %224)
  store %struct.TYPE_30__* %225, %struct.TYPE_30__** %13, align 8
  %226 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %227 = icmp ne %struct.TYPE_30__* %226, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %217
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

229:                                              ; preds = %217
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %231 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %232 = call i64 @HPDF_Dict_Add(%struct.TYPE_30__* %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_30__* %231)
  %233 = load i64, i64* @HPDF_OK, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %229
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

236:                                              ; preds = %229
  store i32 0, i32* %14, align 4
  br label %237

237:                                              ; preds = %286, %236
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = load i64, i64* %17, align 8
  %241 = icmp slt i64 %239, %240
  br i1 %241, label %242, label %291

242:                                              ; preds = %237
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %244 = load i64*, i64** %25, align 8
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @HPDF_TTFontDef_GetGidWidth(%struct.TYPE_28__* %243, i64 %245)
  store i32 %246, i32* %27, align 4
  %247 = load i32, i32* %27, align 4
  %248 = load i32, i32* %24, align 4
  %249 = icmp ne i32 %247, %248
  br i1 %249, label %250, label %284

250:                                              ; preds = %242
  %251 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %252 = icmp ne %struct.TYPE_30__* %251, null
  br i1 %252, label %276, label %253

253:                                              ; preds = %250
  %254 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %255 = load i32, i32* %14, align 4
  %256 = call i64 @HPDF_Array_AddNumber(%struct.TYPE_30__* %254, i32 %255)
  %257 = load i64, i64* @HPDF_OK, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

260:                                              ; preds = %253
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call %struct.TYPE_30__* @HPDF_Array_New(i32 %263)
  store %struct.TYPE_30__* %264, %struct.TYPE_30__** %26, align 8
  %265 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %266 = icmp ne %struct.TYPE_30__* %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %260
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

268:                                              ; preds = %260
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %271 = call i64 @HPDF_Array_Add(%struct.TYPE_30__* %269, %struct.TYPE_30__* %270)
  %272 = load i64, i64* @HPDF_OK, align 8
  %273 = icmp ne i64 %271, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %268
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

275:                                              ; preds = %268
  br label %276

276:                                              ; preds = %275, %250
  %277 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %278 = load i32, i32* %27, align 4
  %279 = call i64 @HPDF_Array_AddNumber(%struct.TYPE_30__* %277, i32 %278)
  store i64 %279, i64* %6, align 8
  %280 = load i64, i64* @HPDF_OK, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %276
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

283:                                              ; preds = %276
  br label %285

284:                                              ; preds = %242
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %26, align 8
  br label %285

285:                                              ; preds = %284, %283
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %14, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %14, align 4
  %289 = load i64*, i64** %25, align 8
  %290 = getelementptr inbounds i64, i64* %289, i32 1
  store i64* %290, i64** %25, align 8
  br label %237

291:                                              ; preds = %237
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %357

296:                                              ; preds = %291
  %297 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %5, align 4
  %301 = call %struct.TYPE_30__* @HPDF_DictStream_New(i32 %299, i32 %300)
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %302, i32 0, i32 0
  store %struct.TYPE_30__* %301, %struct.TYPE_30__** %303, align 8
  %304 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_30__*, %struct.TYPE_30__** %305, align 8
  %307 = icmp ne %struct.TYPE_30__* %306, null
  br i1 %307, label %309, label %308

308:                                              ; preds = %296
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

309:                                              ; preds = %296
  %310 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %311 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_30__*, %struct.TYPE_30__** %312, align 8
  %314 = call i64 @HPDF_Dict_Add(%struct.TYPE_30__* %310, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_30__* %313)
  %315 = load i64, i64* @HPDF_OK, align 8
  %316 = icmp ne i64 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %309
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

318:                                              ; preds = %309
  store i32 0, i32* %14, align 4
  br label %319

319:                                              ; preds = %340, %318
  %320 = load i32, i32* %14, align 4
  %321 = sext i32 %320 to i64
  %322 = load i64, i64* %17, align 8
  %323 = icmp slt i64 %321, %322
  br i1 %323, label %324, label %343

324:                                              ; preds = %319
  %325 = load i32, i32* %14, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [65536 x i64], [65536 x i64]* %15, i64 0, i64 %326
  %328 = load i64, i64* %327, align 8
  store i64 %328, i64* %29, align 8
  %329 = load i64, i64* %29, align 8
  %330 = ashr i64 %329, 8
  %331 = getelementptr inbounds [2 x i64], [2 x i64]* %28, i64 0, i64 0
  store i64 %330, i64* %331, align 16
  %332 = load i64, i64* %29, align 8
  %333 = getelementptr inbounds [2 x i64], [2 x i64]* %28, i64 0, i64 1
  store i64 %332, i64* %333, align 8
  %334 = getelementptr inbounds [65536 x i64], [65536 x i64]* %15, i64 0, i64 0
  %335 = load i32, i32* %14, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i64, i64* %334, i64 %336
  %338 = getelementptr inbounds [2 x i64], [2 x i64]* %28, i64 0, i64 0
  %339 = call i32 @HPDF_MemCpy(i64* %337, i64* %338, i32 2)
  br label %340

340:                                              ; preds = %324
  %341 = load i32, i32* %14, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %14, align 4
  br label %319

343:                                              ; preds = %319
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_30__*, %struct.TYPE_30__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = getelementptr inbounds [65536 x i64], [65536 x i64]* %15, i64 0, i64 0
  %350 = load i64, i64* %17, align 8
  %351 = mul nsw i64 %350, 2
  %352 = call i64 @HPDF_Stream_Write(i32 %348, i64* %349, i64 %351)
  store i64 %352, i64* %6, align 8
  %353 = load i64, i64* @HPDF_OK, align 8
  %354 = icmp ne i64 %352, %353
  br i1 %354, label %355, label %356

355:                                              ; preds = %343
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

356:                                              ; preds = %343
  br label %357

357:                                              ; preds = %356, %291
  br label %364

358:                                              ; preds = %214
  %359 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @HPDF_INVALID_FONTDEF_DATA, align 4
  %363 = call i32 @HPDF_SetError(i32 %361, i32 %362, i32 0)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

364:                                              ; preds = %357
  %365 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = call %struct.TYPE_30__* @HPDF_Dict_New(i32 %367)
  store %struct.TYPE_30__* %368, %struct.TYPE_30__** %16, align 8
  %369 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %370 = icmp ne %struct.TYPE_30__* %369, null
  br i1 %370, label %372, label %371

371:                                              ; preds = %364
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

372:                                              ; preds = %364
  %373 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %374 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %375 = call i64 @HPDF_Dict_Add(%struct.TYPE_30__* %373, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_30__* %374)
  %376 = load i64, i64* @HPDF_OK, align 8
  %377 = icmp ne i64 %375, %376
  br i1 %377, label %378, label %379

378:                                              ; preds = %372
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

379:                                              ; preds = %372
  %380 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %381 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %385 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 8
  %387 = call %struct.TYPE_30__* @HPDF_String_New(i32 %383, i32 %386, i32* null)
  %388 = call i64 @HPDF_Dict_Add(%struct.TYPE_30__* %380, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_30__* %387)
  %389 = load i64, i64* %6, align 8
  %390 = add nsw i64 %389, %388
  store i64 %390, i64* %6, align 8
  %391 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %392 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %396 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = call %struct.TYPE_30__* @HPDF_String_New(i32 %394, i32 %397, i32* null)
  %399 = call i64 @HPDF_Dict_Add(%struct.TYPE_30__* %391, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_30__* %398)
  %400 = load i64, i64* %6, align 8
  %401 = add nsw i64 %400, %399
  store i64 %401, i64* %6, align 8
  %402 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %403 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %404 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 8
  %406 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_30__* %402, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %405)
  %407 = load i64, i64* %6, align 8
  %408 = add nsw i64 %407, %406
  store i64 %408, i64* %6, align 8
  %409 = load i64, i64* %6, align 8
  %410 = load i64, i64* @HPDF_OK, align 8
  %411 = icmp ne i64 %409, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %379
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %415

413:                                              ; preds = %379
  %414 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  store %struct.TYPE_30__* %414, %struct.TYPE_30__** %3, align 8
  br label %415

415:                                              ; preds = %413, %412, %378, %371, %358, %355, %317, %308, %282, %274, %267, %259, %235, %228, %134, %104, %97, %89, %66, %59
  %416 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  ret %struct.TYPE_30__* %416
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_30__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_30__*) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_30__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_AddNumber(%struct.TYPE_30__*, i8*, i32) #1

declare dso_local %struct.TYPE_30__* @HPDF_Array_New(i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_30__*, i8*, %struct.TYPE_30__*) #1

declare dso_local i64 @HPDF_Array_AddNumber(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @HPDF_MemSet(i64*, i32, i32) #1

declare dso_local i64 @HPDF_TTFontDef_GetGlyphid(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @HPDF_TTFontDef_GetGidWidth(%struct.TYPE_28__*, i64) #1

declare dso_local i64 @HPDF_Array_Add(%struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_30__* @HPDF_DictStream_New(i32, i32) #1

declare dso_local i32 @HPDF_MemCpy(i64*, i64*, i32) #1

declare dso_local i64 @HPDF_Stream_Write(i32, i64*, i64) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local %struct.TYPE_30__* @HPDF_String_New(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
