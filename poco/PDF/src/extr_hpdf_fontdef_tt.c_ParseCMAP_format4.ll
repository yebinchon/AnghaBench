; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_ParseCMAP_format4.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_ParseCMAP_format4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [20 x i8] c" ParseCMAP_format4\0A\00", align 1
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_TTF_INVALID_FOMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64)* @ParseCMAP_format4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseCMAP_format4(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %6, align 8
  %20 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @HPDF_SEEK_SET, align 4
  %26 = call i64 @HPDF_Stream_Seek(i32 %23, i64 %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* @HPDF_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %3, align 8
  br label %449

31:                                               ; preds = %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i64 @GetUINT16(i32 %34, i32* %37)
  %39 = load i64, i64* %7, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %7, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = call i64 @GetUINT16(i32 %43, i32* %46)
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %7, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = call i64 @GetUINT16(i32 %52, i32* %55)
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @HPDF_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %31
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @HPDF_Error_GetCode(i32 %65)
  store i64 %66, i64* %3, align 8
  br label %449

67:                                               ; preds = %31
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 4
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HPDF_TTF_INVALID_FOMAT, align 4
  %78 = call i64 @HPDF_SetError(i32 %76, i32 %77, i32 0)
  store i64 %78, i64* %3, align 8
  br label %449

79:                                               ; preds = %67
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = call i64 @GetUINT16(i32 %82, i32* %85)
  %87 = load i64, i64* %7, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %7, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = call i64 @GetUINT16(i32 %91, i32* %94)
  %96 = load i64, i64* %7, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %7, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 5
  %104 = call i64 @GetUINT16(i32 %100, i32* %103)
  %105 = load i64, i64* %7, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %7, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 6
  %113 = call i64 @GetUINT16(i32 %109, i32* %112)
  %114 = load i64, i64* %7, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %7, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @HPDF_OK, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %79
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @HPDF_Error_GetCode(i32 %122)
  store i64 %123, i64* %3, align 8
  br label %449

124:                                              ; preds = %79
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 4, %132
  %134 = udiv i64 %133, 2
  %135 = trunc i64 %134 to i32
  %136 = call i8* @HPDF_GetMem(i32 %127, i32 %135)
  %137 = bitcast i8* %136 to i32*
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 11
  store i32* %137, i32** %140, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 11
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %124
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @HPDF_Error_GetCode(i32 %149)
  store i64 %150, i64* %3, align 8
  br label %449

151:                                              ; preds = %124
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 11
  %155 = load i32*, i32** %154, align 8
  store i32* %155, i32** %9, align 8
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %176, %151
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = sdiv i32 %161, 2
  %163 = icmp slt i32 %157, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %156
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %9, align 8
  %170 = call i64 @GetUINT16(i32 %167, i32* %168)
  store i64 %170, i64* %7, align 8
  %171 = load i64, i64* @HPDF_OK, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = load i64, i64* %7, align 8
  store i64 %174, i64* %3, align 8
  br label %449

175:                                              ; preds = %164
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %156

179:                                              ; preds = %156
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 7
  %186 = call i64 @GetUINT16(i32 %182, i32* %185)
  store i64 %186, i64* %7, align 8
  %187 = load i64, i64* @HPDF_OK, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %179
  %190 = load i64, i64* %7, align 8
  store i64 %190, i64* %3, align 8
  br label %449

191:                                              ; preds = %179
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = mul i64 4, %199
  %201 = udiv i64 %200, 2
  %202 = trunc i64 %201 to i32
  %203 = call i8* @HPDF_GetMem(i32 %194, i32 %202)
  %204 = bitcast i8* %203 to i32*
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 12
  store i32* %204, i32** %207, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 12
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %218, label %213

213:                                              ; preds = %191
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @HPDF_Error_GetCode(i32 %216)
  store i64 %217, i64* %3, align 8
  br label %449

218:                                              ; preds = %191
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 12
  %222 = load i32*, i32** %221, align 8
  store i32* %222, i32** %10, align 8
  store i32 0, i32* %8, align 4
  br label %223

223:                                              ; preds = %243, %218
  %224 = load i32, i32* %8, align 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = sdiv i32 %228, 2
  %230 = icmp slt i32 %224, %229
  br i1 %230, label %231, label %246

231:                                              ; preds = %223
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32*, i32** %10, align 8
  %236 = getelementptr inbounds i32, i32* %235, i32 1
  store i32* %236, i32** %10, align 8
  %237 = call i64 @GetUINT16(i32 %234, i32* %235)
  store i64 %237, i64* %7, align 8
  %238 = load i64, i64* @HPDF_OK, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %231
  %241 = load i64, i64* %7, align 8
  store i64 %241, i64* %3, align 8
  br label %449

242:                                              ; preds = %231
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %8, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %8, align 4
  br label %223

246:                                              ; preds = %223
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = mul i64 4, %254
  %256 = udiv i64 %255, 2
  %257 = trunc i64 %256 to i32
  %258 = call i8* @HPDF_GetMem(i32 %249, i32 %257)
  %259 = bitcast i8* %258 to i32*
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 10
  store i32* %259, i32** %262, align 8
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 10
  %266 = load i32*, i32** %265, align 8
  %267 = icmp ne i32* %266, null
  br i1 %267, label %273, label %268

268:                                              ; preds = %246
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i64 @HPDF_Error_GetCode(i32 %271)
  store i64 %272, i64* %3, align 8
  br label %449

273:                                              ; preds = %246
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 10
  %277 = load i32*, i32** %276, align 8
  store i32* %277, i32** %11, align 8
  store i32 0, i32* %8, align 4
  br label %278

278:                                              ; preds = %299, %273
  %279 = load i32, i32* %8, align 4
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = sdiv i32 %283, 2
  %285 = icmp slt i32 %279, %284
  br i1 %285, label %286, label %302

286:                                              ; preds = %278
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = load i32*, i32** %11, align 8
  %291 = getelementptr inbounds i32, i32* %290, i32 1
  store i32* %291, i32** %11, align 8
  %292 = ptrtoint i32* %290 to i32
  %293 = call i64 @GetINT16(i32 %289, i32 %292)
  store i64 %293, i64* %7, align 8
  %294 = load i64, i64* @HPDF_OK, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %286
  %297 = load i64, i64* %7, align 8
  store i64 %297, i64* %3, align 8
  br label %449

298:                                              ; preds = %286
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %8, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %8, align 4
  br label %278

302:                                              ; preds = %278
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = mul i64 4, %310
  %312 = udiv i64 %311, 2
  %313 = trunc i64 %312 to i32
  %314 = call i8* @HPDF_GetMem(i32 %305, i32 %313)
  %315 = bitcast i8* %314 to i32*
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 9
  store i32* %315, i32** %318, align 8
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 9
  %322 = load i32*, i32** %321, align 8
  %323 = icmp ne i32* %322, null
  br i1 %323, label %329, label %324

324:                                              ; preds = %302
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = call i64 @HPDF_Error_GetCode(i32 %327)
  store i64 %328, i64* %3, align 8
  br label %449

329:                                              ; preds = %302
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 9
  %333 = load i32*, i32** %332, align 8
  store i32* %333, i32** %12, align 8
  store i32 0, i32* %8, align 4
  br label %334

334:                                              ; preds = %354, %329
  %335 = load i32, i32* %8, align 4
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = sdiv i32 %339, 2
  %341 = icmp slt i32 %335, %340
  br i1 %341, label %342, label %357

342:                                              ; preds = %334
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = load i32*, i32** %12, align 8
  %347 = getelementptr inbounds i32, i32* %346, i32 1
  store i32* %347, i32** %12, align 8
  %348 = call i64 @GetUINT16(i32 %345, i32* %346)
  store i64 %348, i64* %7, align 8
  %349 = load i64, i64* @HPDF_OK, align 8
  %350 = icmp ne i64 %348, %349
  br i1 %350, label %351, label %353

351:                                              ; preds = %342
  %352 = load i64, i64* %7, align 8
  store i64 %352, i64* %3, align 8
  br label %449

353:                                              ; preds = %342
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %8, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %8, align 4
  br label %334

357:                                              ; preds = %334
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = call i64 @HPDF_Stream_Tell(i32 %360)
  %362 = load i64, i64* %5, align 8
  %363 = sub nsw i64 %361, %362
  store i64 %363, i64* %14, align 8
  %364 = load i64, i64* %14, align 8
  %365 = icmp slt i64 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %357
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = call i64 @HPDF_Error_GetCode(i32 %369)
  store i64 %370, i64* %3, align 8
  br label %449

371:                                              ; preds = %357
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = sext i32 %375 to i64
  %377 = load i64, i64* %14, align 8
  %378 = sub nsw i64 %376, %377
  %379 = sdiv i64 %378, 2
  %380 = trunc i64 %379 to i32
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 8
  store i32 %380, i32* %383, align 8
  %384 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i32 0, i32 8
  %387 = load i32, i32* %386, align 8
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %389, label %443

389:                                              ; preds = %371
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i32 0, i32 8
  %396 = load i32, i32* %395, align 8
  %397 = sext i32 %396 to i64
  %398 = mul i64 4, %397
  %399 = trunc i64 %398 to i32
  %400 = call i8* @HPDF_GetMem(i32 %392, i32 %399)
  %401 = bitcast i8* %400 to i32*
  %402 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 13
  store i32* %401, i32** %404, align 8
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 13
  %408 = load i32*, i32** %407, align 8
  %409 = icmp ne i32* %408, null
  br i1 %409, label %415, label %410

410:                                              ; preds = %389
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = call i64 @HPDF_Error_GetCode(i32 %413)
  store i64 %414, i64* %3, align 8
  br label %449

415:                                              ; preds = %389
  %416 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 13
  %419 = load i32*, i32** %418, align 8
  store i32* %419, i32** %13, align 8
  store i32 0, i32* %8, align 4
  br label %420

420:                                              ; preds = %439, %415
  %421 = load i32, i32* %8, align 4
  %422 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i32 0, i32 8
  %425 = load i32, i32* %424, align 8
  %426 = icmp slt i32 %421, %425
  br i1 %426, label %427, label %442

427:                                              ; preds = %420
  %428 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = load i32*, i32** %13, align 8
  %432 = getelementptr inbounds i32, i32* %431, i32 1
  store i32* %432, i32** %13, align 8
  %433 = call i64 @GetUINT16(i32 %430, i32* %431)
  store i64 %433, i64* %7, align 8
  %434 = load i64, i64* @HPDF_OK, align 8
  %435 = icmp ne i64 %433, %434
  br i1 %435, label %436, label %438

436:                                              ; preds = %427
  %437 = load i64, i64* %7, align 8
  store i64 %437, i64* %3, align 8
  br label %449

438:                                              ; preds = %427
  br label %439

439:                                              ; preds = %438
  %440 = load i32, i32* %8, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %8, align 4
  br label %420

442:                                              ; preds = %420
  br label %447

443:                                              ; preds = %371
  %444 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 13
  store i32* null, i32** %446, align 8
  br label %447

447:                                              ; preds = %443, %442
  %448 = load i64, i64* @HPDF_OK, align 8
  store i64 %448, i64* %3, align 8
  br label %449

449:                                              ; preds = %447, %436, %410, %366, %351, %324, %296, %268, %240, %213, %189, %173, %146, %119, %73, %62, %29
  %450 = load i64, i64* %3, align 8
  ret i64 %450
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Stream_Seek(i32, i64, i32) #1

declare dso_local i64 @GetUINT16(i32, i32*) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i8* @HPDF_GetMem(i32, i32) #1

declare dso_local i64 @GetINT16(i32, i32) #1

declare dso_local i64 @HPDF_Stream_Tell(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
