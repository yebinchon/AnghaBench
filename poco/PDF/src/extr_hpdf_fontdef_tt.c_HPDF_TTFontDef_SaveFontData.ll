; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_HPDF_TTFontDef_SaveFontData.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_HPDF_TTFontDef_SaveFontData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_31__*, %struct.TYPE_28__, %struct.TYPE_27__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i64 }

@HPDF_REQUIRED_TAGS_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c" SaveFontData\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_STREAM_BUF_SIZ = common dso_local global i32 0, align 4
@REQUIRED_TAGS = common dso_local global i64* null, align 8
@HPDF_TTF_MISSING_TABLE = common dso_local global i32 0, align 4
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"glyf\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"loca\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c" SaveFontData() tag[%s] length=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c" SaveFontData tag[%s] check-sum=%u offset=%u\0A\00", align 1
@HPDF_STREAM_EOF = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c" SaveFontData new checkSumAdjustment=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_TTFontDef_SaveFontData(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_30__, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_30__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_30__, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %35, %struct.TYPE_29__** %6, align 8
  %36 = load i32, i32* @HPDF_REQUIRED_TAGS_COUNT, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %7, align 8
  %39 = alloca %struct.TYPE_30__, i64 %37, align 16
  store i64 %37, i64* %8, align 8
  store i32 0, i32* %12, align 4
  store i32 -1313820742, i32* %15, align 4
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @WriteUINT32(%struct.TYPE_31__* %43, i32 %47)
  store i64 %48, i64* %13, align 8
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %50 = load i32, i32* @HPDF_REQUIRED_TAGS_COUNT, align 4
  %51 = call i64 @WriteUINT16(%struct.TYPE_31__* %49, i32 %50)
  %52 = load i64, i64* %13, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %13, align 8
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @WriteUINT16(%struct.TYPE_31__* %54, i32 %58)
  %60 = load i64, i64* %13, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %13, align 8
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @WriteUINT16(%struct.TYPE_31__* %62, i32 %66)
  %68 = load i64, i64* %13, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %13, align 8
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @WriteUINT16(%struct.TYPE_31__* %70, i32 %74)
  %76 = load i64, i64* %13, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %13, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* @HPDF_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %2
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @HPDF_Error_GetCode(i32 %84)
  store i64 %85, i64* %3, align 8
  store i32 1, i32* %17, align 4
  br label %520

86:                                               ; preds = %2
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %91 = call %struct.TYPE_31__* @HPDF_MemStream_New(i32 %89, i32 %90)
  store %struct.TYPE_31__* %91, %struct.TYPE_31__** %9, align 8
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %93 = icmp ne %struct.TYPE_31__* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %86
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @HPDF_Error_GetCode(i32 %97)
  store i64 %98, i64* %3, align 8
  store i32 1, i32* %17, align 4
  br label %520

99:                                               ; preds = %86
  %100 = load i32, i32* @HPDF_REQUIRED_TAGS_COUNT, align 4
  %101 = mul nsw i32 16, %100
  %102 = add nsw i32 12, %101
  store i32 %102, i32* %14, align 4
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = mul i64 4, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32* @HPDF_GetMem(i32 %105, i32 %112)
  store i32* %113, i32** %10, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %123, label %116

116:                                              ; preds = %99
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %118 = call i32 @HPDF_Stream_Free(%struct.TYPE_31__* %117)
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @HPDF_Error_GetCode(i32 %121)
  store i64 %122, i64* %3, align 8
  store i32 1, i32* %17, align 4
  br label %520

123:                                              ; preds = %99
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %321, %123
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @HPDF_REQUIRED_TAGS_COUNT, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %324

128:                                              ; preds = %124
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %130 = load i64*, i64** @REQUIRED_TAGS, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = call %struct.TYPE_30__* @FindTable(%struct.TYPE_32__* %129, i64 %134)
  store %struct.TYPE_30__* %135, %struct.TYPE_30__** %18, align 8
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %137 = icmp ne %struct.TYPE_30__* %136, null
  br i1 %137, label %150, label %138

138:                                              ; preds = %128
  store %struct.TYPE_30__* %16, %struct.TYPE_30__** %18, align 8
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to i32*
  %143 = load i64*, i64** @REQUIRED_TAGS, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i32*
  %149 = call i32 @HPDF_MemCpy(i32* %142, i32* %148, i32 4)
  br label %150

150:                                              ; preds = %138, %128
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %152 = icmp ne %struct.TYPE_30__* %151, null
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @HPDF_TTF_MISSING_TABLE, align 4
  %158 = load i32, i32* %11, align 4
  %159 = call i64 @HPDF_SetError(i32 %156, i32 %157, i32 %158)
  store i64 %159, i64* %13, align 8
  br label %511

160:                                              ; preds = %150
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %162, align 8
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @HPDF_SEEK_SET, align 4
  %168 = call i64 @HPDF_Stream_Seek(%struct.TYPE_31__* %163, i32 %166, i32 %167)
  store i64 %168, i64* %13, align 8
  %169 = load i64, i64* %13, align 8
  %170 = load i64, i64* @HPDF_OK, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %160
  br label %511

173:                                              ; preds = %160
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %19, align 4
  %177 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %20, align 4
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = inttoptr i64 %182 to i32*
  %184 = call i64 @HPDF_MemCmp(i32* %183, i32* bitcast ([5 x i8]* @.str.1 to i32*), i32 4)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %173
  %187 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %189 = call i64 @WriteHeader(%struct.TYPE_32__* %187, %struct.TYPE_31__* %188, i32* %12)
  store i64 %189, i64* %13, align 8
  br label %301

190:                                              ; preds = %173
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i32*
  %195 = call i64 @HPDF_MemCmp(i32* %194, i32* bitcast ([5 x i8]* @.str.2 to i32*), i32 4)
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %190
  %198 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %199 = load i32*, i32** %10, align 8
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %201 = call i64 @RecreateGLYF(%struct.TYPE_32__* %198, i32* %199, %struct.TYPE_31__* %200)
  store i64 %201, i64* %13, align 8
  br label %300

202:                                              ; preds = %190
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to i32*
  %207 = call i64 @HPDF_MemCmp(i32* %206, i32* bitcast ([5 x i8]* @.str.3 to i32*), i32 4)
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %258

209:                                              ; preds = %202
  %210 = call i32 @HPDF_MemSet(i32* %22, i32 0, i32 4)
  %211 = load i32*, i32** %10, align 8
  store i32* %211, i32** %21, align 8
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %237

217:                                              ; preds = %209
  store i32 0, i32* %23, align 4
  br label %218

218:                                              ; preds = %233, %217
  %219 = load i32, i32* %23, align 4
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp sle i32 %219, %222
  br i1 %223, label %224, label %236

224:                                              ; preds = %218
  %225 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %226 = load i32*, i32** %21, align 8
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @WriteUINT16(%struct.TYPE_31__* %225, i32 %227)
  %229 = load i64, i64* %13, align 8
  %230 = add nsw i64 %229, %228
  store i64 %230, i64* %13, align 8
  %231 = load i32*, i32** %21, align 8
  %232 = getelementptr inbounds i32, i32* %231, i32 1
  store i32* %232, i32** %21, align 8
  br label %233

233:                                              ; preds = %224
  %234 = load i32, i32* %23, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %23, align 4
  br label %218

236:                                              ; preds = %218
  br label %257

237:                                              ; preds = %209
  store i32 0, i32* %23, align 4
  br label %238

238:                                              ; preds = %253, %237
  %239 = load i32, i32* %23, align 4
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp sle i32 %239, %242
  br i1 %243, label %244, label %256

244:                                              ; preds = %238
  %245 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %246 = load i32*, i32** %21, align 8
  %247 = load i32, i32* %246, align 4
  %248 = call i64 @WriteUINT32(%struct.TYPE_31__* %245, i32 %247)
  %249 = load i64, i64* %13, align 8
  %250 = add nsw i64 %249, %248
  store i64 %250, i64* %13, align 8
  %251 = load i32*, i32** %21, align 8
  %252 = getelementptr inbounds i32, i32* %251, i32 1
  store i32* %252, i32** %21, align 8
  br label %253

253:                                              ; preds = %244
  %254 = load i32, i32* %23, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %23, align 4
  br label %238

256:                                              ; preds = %238
  br label %257

257:                                              ; preds = %256, %236
  br label %299

258:                                              ; preds = %202
  %259 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %260 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = inttoptr i64 %261 to i32*
  %263 = call i64 @HPDF_MemCmp(i32* %262, i32* bitcast ([5 x i8]* @.str.4 to i32*), i32 4)
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %258
  %266 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %267 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %268 = call i64 @RecreateName(%struct.TYPE_32__* %266, %struct.TYPE_31__* %267)
  store i64 %268, i64* %13, align 8
  br label %298

269:                                              ; preds = %258
  store i32 4, i32* %24, align 4
  br label %270

270:                                              ; preds = %273, %269
  %271 = load i32, i32* %19, align 4
  %272 = icmp sgt i32 %271, 4
  br i1 %272, label %273, label %285

273:                                              ; preds = %270
  store i32 0, i32* %22, align 4
  store i32 4, i32* %24, align 4
  %274 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_31__*, %struct.TYPE_31__** %275, align 8
  %277 = call i64 @HPDF_Stream_Read(%struct.TYPE_31__* %276, i32* %22, i32* %24)
  store i64 %277, i64* %13, align 8
  %278 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %279 = load i32, i32* %24, align 4
  %280 = call i64 @HPDF_Stream_Write(%struct.TYPE_31__* %278, i32* %22, i32 %279)
  %281 = load i64, i64* %13, align 8
  %282 = add nsw i64 %281, %280
  store i64 %282, i64* %13, align 8
  %283 = load i32, i32* %19, align 4
  %284 = sub nsw i32 %283, 4
  store i32 %284, i32* %19, align 4
  br label %270

285:                                              ; preds = %270
  store i32 0, i32* %22, align 4
  %286 = load i32, i32* %19, align 4
  store i32 %286, i32* %24, align 4
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %287, i32 0, i32 2
  %289 = load %struct.TYPE_31__*, %struct.TYPE_31__** %288, align 8
  %290 = call i64 @HPDF_Stream_Read(%struct.TYPE_31__* %289, i32* %22, i32* %24)
  %291 = load i64, i64* %13, align 8
  %292 = add nsw i64 %291, %290
  store i64 %292, i64* %13, align 8
  %293 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %294 = load i32, i32* %24, align 4
  %295 = call i64 @HPDF_Stream_Write(%struct.TYPE_31__* %293, i32* %22, i32 %294)
  %296 = load i64, i64* %13, align 8
  %297 = add nsw i64 %296, %295
  store i64 %297, i64* %13, align 8
  br label %298

298:                                              ; preds = %285, %265
  br label %299

299:                                              ; preds = %298, %257
  br label %300

300:                                              ; preds = %299, %197
  br label %301

301:                                              ; preds = %300, %186
  %302 = load i32, i32* %20, align 4
  %303 = load i32, i32* %11, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %305, i32 0, i32 1
  store i32 %302, i32* %306, align 4
  %307 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %20, align 4
  %311 = sub nsw i32 %309, %310
  %312 = load i32, i32* %11, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %314, i32 0, i32 0
  store i32 %311, i32* %315, align 8
  %316 = load i64, i64* %13, align 8
  %317 = load i64, i64* @HPDF_OK, align 8
  %318 = icmp ne i64 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %301
  br label %511

320:                                              ; preds = %301
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %11, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %11, align 4
  br label %124

324:                                              ; preds = %124
  store i32 0, i32* %11, align 4
  br label %325

325:                                              ; preds = %436, %324
  %326 = load i32, i32* %11, align 4
  %327 = load i32, i32* @HPDF_REQUIRED_TAGS_COUNT, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %439

329:                                              ; preds = %325
  %330 = load i32, i32* %11, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i64 %331
  %333 = bitcast %struct.TYPE_30__* %25 to i8*
  %334 = bitcast %struct.TYPE_30__* %332 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %333, i8* align 8 %334, i64 24, i1 false)
  %335 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  store i32 %336, i32* %27, align 4
  %337 = load i64*, i64** @REQUIRED_TAGS, align 8
  %338 = load i32, i32* %11, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %337, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = load i32, i32* %27, align 4
  %343 = sext i32 %342 to i64
  %344 = inttoptr i64 %343 to i8*
  %345 = call i32 @HPDF_PTRACE(i8* %344)
  %346 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %347 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @HPDF_SEEK_SET, align 4
  %350 = call i64 @HPDF_Stream_Seek(%struct.TYPE_31__* %346, i32 %348, i32 %349)
  store i64 %350, i64* %13, align 8
  %351 = load i64, i64* @HPDF_OK, align 8
  %352 = icmp ne i64 %350, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %329
  br label %439

354:                                              ; preds = %329
  %355 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 2
  store i32 0, i32* %355, align 8
  br label %356

356:                                              ; preds = %372, %354
  %357 = load i32, i32* %27, align 4
  %358 = icmp sgt i32 %357, 0
  br i1 %358, label %359, label %381

359:                                              ; preds = %356
  %360 = load i32, i32* %27, align 4
  %361 = icmp sgt i32 %360, 4
  br i1 %361, label %362, label %363

362:                                              ; preds = %359
  br label %365

363:                                              ; preds = %359
  %364 = load i32, i32* %27, align 4
  br label %365

365:                                              ; preds = %363, %362
  %366 = phi i32 [ 4, %362 ], [ %364, %363 ]
  store i32 %366, i32* %28, align 4
  store i32 0, i32* %26, align 4
  %367 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %368 = call i64 @HPDF_Stream_Read(%struct.TYPE_31__* %367, i32* %26, i32* %28)
  store i64 %368, i64* %13, align 8
  %369 = load i64, i64* @HPDF_OK, align 8
  %370 = icmp ne i64 %368, %369
  br i1 %370, label %371, label %372

371:                                              ; preds = %365
  br label %381

372:                                              ; preds = %365
  %373 = call i32 @UINT32Swap(i32* %26)
  %374 = load i32, i32* %26, align 4
  %375 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = add nsw i32 %376, %374
  store i32 %377, i32* %375, align 8
  %378 = load i32, i32* %28, align 4
  %379 = load i32, i32* %27, align 4
  %380 = sub nsw i32 %379, %378
  store i32 %380, i32* %27, align 4
  br label %356

381:                                              ; preds = %371, %356
  %382 = load i64, i64* %13, align 8
  %383 = load i64, i64* @HPDF_OK, align 8
  %384 = icmp ne i64 %382, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %381
  br label %439

386:                                              ; preds = %381
  %387 = load i64*, i64** @REQUIRED_TAGS, align 8
  %388 = load i32, i32* %11, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i64, i64* %387, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = sext i32 %395 to i64
  %397 = inttoptr i64 %396 to i8*
  %398 = call i32 @HPDF_PTRACE(i8* %397)
  %399 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %400 = load i64*, i64** @REQUIRED_TAGS, align 8
  %401 = load i32, i32* %11, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i64, i64* %400, i64 %402
  %404 = load i64, i64* %403, align 8
  %405 = inttoptr i64 %404 to i32*
  %406 = call i64 @HPDF_Stream_Write(%struct.TYPE_31__* %399, i32* %405, i32 4)
  %407 = load i64, i64* %13, align 8
  %408 = add nsw i64 %407, %406
  store i64 %408, i64* %13, align 8
  %409 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = call i64 @WriteUINT32(%struct.TYPE_31__* %409, i32 %411)
  %413 = load i64, i64* %13, align 8
  %414 = add nsw i64 %413, %412
  store i64 %414, i64* %13, align 8
  %415 = load i32, i32* %14, align 4
  %416 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = add nsw i32 %417, %415
  store i32 %418, i32* %416, align 4
  %419 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = call i64 @WriteUINT32(%struct.TYPE_31__* %419, i32 %421)
  %423 = load i64, i64* %13, align 8
  %424 = add nsw i64 %423, %422
  store i64 %424, i64* %13, align 8
  %425 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = call i64 @WriteUINT32(%struct.TYPE_31__* %425, i32 %427)
  %429 = load i64, i64* %13, align 8
  %430 = add nsw i64 %429, %428
  store i64 %430, i64* %13, align 8
  %431 = load i64, i64* %13, align 8
  %432 = load i64, i64* @HPDF_OK, align 8
  %433 = icmp ne i64 %431, %432
  br i1 %433, label %434, label %435

434:                                              ; preds = %386
  br label %439

435:                                              ; preds = %386
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %11, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %11, align 4
  br label %325

439:                                              ; preds = %434, %385, %353, %325
  %440 = load i64, i64* %13, align 8
  %441 = load i64, i64* @HPDF_OK, align 8
  %442 = icmp ne i64 %440, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %439
  br label %511

444:                                              ; preds = %439
  %445 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %446 = load i32, i32* @HPDF_SEEK_SET, align 4
  %447 = call i64 @HPDF_Stream_Seek(%struct.TYPE_31__* %445, i32 0, i32 %446)
  store i64 %447, i64* %13, align 8
  %448 = load i64, i64* %13, align 8
  %449 = load i64, i64* @HPDF_OK, align 8
  %450 = icmp ne i64 %448, %449
  br i1 %450, label %451, label %452

451:                                              ; preds = %444
  br label %511

452:                                              ; preds = %444
  br label %453

453:                                              ; preds = %469, %452
  store i32 4, i32* %30, align 4
  %454 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %455 = call i64 @HPDF_Stream_Read(%struct.TYPE_31__* %454, i32* %29, i32* %30)
  store i64 %455, i64* %13, align 8
  %456 = load i64, i64* %13, align 8
  %457 = load i64, i64* @HPDF_OK, align 8
  %458 = icmp ne i64 %456, %457
  br i1 %458, label %462, label %459

459:                                              ; preds = %453
  %460 = load i32, i32* %30, align 4
  %461 = icmp sle i32 %460, 0
  br i1 %461, label %462, label %469

462:                                              ; preds = %459, %453
  %463 = load i64, i64* %13, align 8
  %464 = load i64, i64* @HPDF_STREAM_EOF, align 8
  %465 = icmp eq i64 %463, %464
  br i1 %465, label %466, label %468

466:                                              ; preds = %462
  %467 = load i64, i64* @HPDF_OK, align 8
  store i64 %467, i64* %13, align 8
  br label %468

468:                                              ; preds = %466, %462
  br label %474

469:                                              ; preds = %459
  %470 = call i32 @UINT32Swap(i32* %29)
  %471 = load i32, i32* %29, align 4
  %472 = load i32, i32* %15, align 4
  %473 = sub nsw i32 %472, %471
  store i32 %473, i32* %15, align 4
  br label %453

474:                                              ; preds = %468
  %475 = load i64, i64* %13, align 8
  %476 = load i64, i64* @HPDF_OK, align 8
  %477 = icmp ne i64 %475, %476
  br i1 %477, label %478, label %479

478:                                              ; preds = %474
  br label %511

479:                                              ; preds = %474
  %480 = load i32, i32* %15, align 4
  %481 = sext i32 %480 to i64
  %482 = inttoptr i64 %481 to i8*
  %483 = call i32 @HPDF_PTRACE(i8* %482)
  %484 = call i32 @UINT32Swap(i32* %15)
  %485 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %486 = load i32, i32* %12, align 4
  %487 = load i32, i32* @HPDF_SEEK_SET, align 4
  %488 = call i64 @HPDF_Stream_Seek(%struct.TYPE_31__* %485, i32 %486, i32 %487)
  store i64 %488, i64* %13, align 8
  %489 = load i64, i64* %13, align 8
  %490 = load i64, i64* @HPDF_OK, align 8
  %491 = icmp eq i64 %489, %490
  br i1 %491, label %492, label %495

492:                                              ; preds = %479
  %493 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %494 = call i64 @HPDF_MemStream_Rewrite(%struct.TYPE_31__* %493, i32* %15, i32 4)
  store i64 %494, i64* %13, align 8
  br label %495

495:                                              ; preds = %492, %479
  %496 = load i64, i64* %13, align 8
  %497 = load i64, i64* @HPDF_OK, align 8
  %498 = icmp ne i64 %496, %497
  br i1 %498, label %499, label %500

499:                                              ; preds = %495
  br label %511

500:                                              ; preds = %495
  %501 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %502 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* %14, align 4
  %505 = add nsw i32 %503, %504
  %506 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %507 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %506, i32 0, i32 1
  store i32 %505, i32* %507, align 4
  %508 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %509 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %510 = call i64 @HPDF_Stream_WriteToStream(%struct.TYPE_31__* %508, %struct.TYPE_31__* %509, i32 0, i32* null)
  store i64 %510, i64* %13, align 8
  br label %511

511:                                              ; preds = %500, %499, %478, %451, %443, %319, %172, %153
  %512 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %513 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 4
  %515 = load i32*, i32** %10, align 8
  %516 = call i32 @HPDF_FreeMem(i32 %514, i32* %515)
  %517 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %518 = call i32 @HPDF_Stream_Free(%struct.TYPE_31__* %517)
  %519 = load i64, i64* %13, align 8
  store i64 %519, i64* %3, align 8
  store i32 1, i32* %17, align 4
  br label %520

520:                                              ; preds = %511, %116, %94, %81
  %521 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %521)
  %522 = load i64, i64* %3, align 8
  ret i64 %522
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i64 @WriteUINT32(%struct.TYPE_31__*, i32) #2

declare dso_local i64 @WriteUINT16(%struct.TYPE_31__*, i32) #2

declare dso_local i64 @HPDF_Error_GetCode(i32) #2

declare dso_local %struct.TYPE_31__* @HPDF_MemStream_New(i32, i32) #2

declare dso_local i32* @HPDF_GetMem(i32, i32) #2

declare dso_local i32 @HPDF_Stream_Free(%struct.TYPE_31__*) #2

declare dso_local %struct.TYPE_30__* @FindTable(%struct.TYPE_32__*, i64) #2

declare dso_local i32 @HPDF_MemCpy(i32*, i32*, i32) #2

declare dso_local i64 @HPDF_SetError(i32, i32, i32) #2

declare dso_local i64 @HPDF_Stream_Seek(%struct.TYPE_31__*, i32, i32) #2

declare dso_local i64 @HPDF_MemCmp(i32*, i32*, i32) #2

declare dso_local i64 @WriteHeader(%struct.TYPE_32__*, %struct.TYPE_31__*, i32*) #2

declare dso_local i64 @RecreateGLYF(%struct.TYPE_32__*, i32*, %struct.TYPE_31__*) #2

declare dso_local i32 @HPDF_MemSet(i32*, i32, i32) #2

declare dso_local i64 @RecreateName(%struct.TYPE_32__*, %struct.TYPE_31__*) #2

declare dso_local i64 @HPDF_Stream_Read(%struct.TYPE_31__*, i32*, i32*) #2

declare dso_local i64 @HPDF_Stream_Write(%struct.TYPE_31__*, i32*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @UINT32Swap(i32*) #2

declare dso_local i64 @HPDF_MemStream_Rewrite(%struct.TYPE_31__*, i32*, i32) #2

declare dso_local i64 @HPDF_Stream_WriteToStream(%struct.TYPE_31__*, %struct.TYPE_31__*, i32, i32*) #2

declare dso_local i32 @HPDF_FreeMem(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
