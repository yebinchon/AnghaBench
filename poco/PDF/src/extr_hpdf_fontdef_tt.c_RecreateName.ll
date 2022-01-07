; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_RecreateName.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_RecreateName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_18__ = type { i32, i64, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_STREAM_BUF_SIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c" RecreateName\0A\00", align 1
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [114 x i8] c" RecreateNAME name_rec[%u] platform_id=%u encoding_id=%u language_id=%u name_rec->name_id=%u length=%u offset=%u\0A\00", align 1
@HPDF_STREAM_FILTER_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @RecreateName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @RecreateName(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %6, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %26 = call %struct.TYPE_20__* @FindTable(%struct.TYPE_22__* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %7, align 8
  %27 = load i64, i64* @HPDF_OK, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %32 = call %struct.TYPE_21__* @HPDF_MemStream_New(i32 %30, i32 %31)
  store %struct.TYPE_21__* %32, %struct.TYPE_21__** %11, align 8
  %33 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %35 = icmp ne %struct.TYPE_21__* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %2
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @HPDF_Error_GetCode(i32 %39)
  store i64 %40, i64* %3, align 8
  br label %290

41:                                               ; preds = %2
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @WriteUINT16(%struct.TYPE_21__* %42, i32 %46)
  %48 = load i64, i64* %8, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %8, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @WriteUINT16(%struct.TYPE_21__* %50, i32 %54)
  %56 = load i64, i64* %8, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %8, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @WriteUINT16(%struct.TYPE_21__* %58, i32 %62)
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @HPDF_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %41
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %71 = call i32 @HPDF_Stream_Free(%struct.TYPE_21__* %70)
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @HPDF_Error_GetCode(i32 %74)
  store i64 %75, i64* %3, align 8
  br label %290

76:                                               ; preds = %41
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %10, align 8
  store i64 0, i64* %9, align 8
  br label %81

81:                                               ; preds = %279, %76
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %82, %87
  br i1 %88, label %89, label %282

89:                                               ; preds = %81
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %12, align 8
  %93 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %94 = zext i32 %93 to i64
  %95 = call i8* @llvm.stacksave()
  store i8* %95, i8** %13, align 8
  %96 = alloca i32, i64 %94, align 16
  store i64 %94, i64* %14, align 8
  %97 = load i64, i64* %12, align 8
  store i64 %97, i64* %15, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %100, %105
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  store i64 %110, i64* %16, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %17, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %123, label %118

118:                                              ; preds = %89
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 4
  br i1 %122, label %123, label %156

123:                                              ; preds = %118, %89
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 3
  br i1 %132, label %133, label %144

133:                                              ; preds = %128, %123
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i32*
  %139 = call i64 @HPDF_Stream_Write(%struct.TYPE_21__* %134, i32* %138, i64 8)
  %140 = load i64, i64* %8, align 8
  %141 = add nsw i64 %140, %139
  store i64 %141, i64* %8, align 8
  %142 = load i64, i64* %12, align 8
  %143 = add i64 %142, 8
  store i64 %143, i64* %12, align 8
  br label %155

144:                                              ; preds = %128
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to i32*
  %150 = call i64 @HPDF_Stream_Write(%struct.TYPE_21__* %145, i32* %149, i64 8)
  %151 = load i64, i64* %8, align 8
  %152 = add nsw i64 %151, %150
  store i64 %152, i64* %8, align 8
  %153 = load i64, i64* %12, align 8
  %154 = add i64 %153, 8
  store i64 %154, i64* %12, align 8
  br label %155

155:                                              ; preds = %144, %133
  br label %156

156:                                              ; preds = %155, %118
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @WriteUINT16(%struct.TYPE_21__* %157, i32 %160)
  %162 = load i64, i64* %8, align 8
  %163 = add nsw i64 %162, %161
  store i64 %163, i64* %8, align 8
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @WriteUINT16(%struct.TYPE_21__* %164, i32 %167)
  %169 = load i64, i64* %8, align 8
  %170 = add nsw i64 %169, %168
  store i64 %170, i64* %8, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @WriteUINT16(%struct.TYPE_21__* %171, i32 %174)
  %176 = load i64, i64* %8, align 8
  %177 = add nsw i64 %176, %175
  store i64 %177, i64* %8, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @WriteUINT16(%struct.TYPE_21__* %178, i32 %181)
  %183 = load i64, i64* %8, align 8
  %184 = add nsw i64 %183, %182
  store i64 %184, i64* %8, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %186 = load i64, i64* %12, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i64 @WriteUINT16(%struct.TYPE_21__* %185, i32 %187)
  %189 = load i64, i64* %8, align 8
  %190 = add nsw i64 %189, %188
  store i64 %190, i64* %8, align 8
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %192 = load i64, i64* %17, align 8
  %193 = trunc i64 %192 to i32
  %194 = call i64 @WriteUINT16(%struct.TYPE_21__* %191, i32 %193)
  %195 = load i64, i64* %8, align 8
  %196 = add nsw i64 %195, %194
  store i64 %196, i64* %8, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i64, i64* %16, align 8
  %201 = load i32, i32* @HPDF_SEEK_SET, align 4
  %202 = call i64 @HPDF_Stream_Seek(i32 %199, i64 %200, i32 %201)
  %203 = load i64, i64* %8, align 8
  %204 = add nsw i64 %203, %202
  store i64 %204, i64* %8, align 8
  %205 = load i64, i64* %8, align 8
  %206 = load i64, i64* @HPDF_OK, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %156
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %210 = call i32 @HPDF_Stream_Free(%struct.TYPE_21__* %209)
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i64 @HPDF_Error_GetCode(i32 %213)
  store i64 %214, i64* %3, align 8
  store i32 1, i32* %18, align 4
  br label %275

215:                                              ; preds = %156
  br label %216

216:                                              ; preds = %251, %215
  %217 = load i64, i64* %15, align 8
  %218 = icmp sgt i64 %217, 0
  br i1 %218, label %219, label %255

219:                                              ; preds = %216
  %220 = load i64, i64* %15, align 8
  %221 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %222 = sext i32 %221 to i64
  %223 = icmp sgt i64 %220, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %226 = sext i32 %225 to i64
  br label %229

227:                                              ; preds = %219
  %228 = load i64, i64* %15, align 8
  br label %229

229:                                              ; preds = %227, %224
  %230 = phi i64 [ %226, %224 ], [ %228, %227 ]
  store i64 %230, i64* %19, align 8
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i64 @HPDF_Stream_Read(i32 %233, i32* %96, i64* %19)
  store i64 %234, i64* %8, align 8
  %235 = load i64, i64* @HPDF_OK, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %229
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %239 = call i32 @HPDF_Stream_Free(%struct.TYPE_21__* %238)
  %240 = load i64, i64* %8, align 8
  store i64 %240, i64* %3, align 8
  store i32 1, i32* %18, align 4
  br label %275

241:                                              ; preds = %229
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %243 = load i64, i64* %19, align 8
  %244 = call i64 @HPDF_Stream_Write(%struct.TYPE_21__* %242, i32* %96, i64 %243)
  store i64 %244, i64* %8, align 8
  %245 = load i64, i64* @HPDF_OK, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %249 = call i32 @HPDF_Stream_Free(%struct.TYPE_21__* %248)
  %250 = load i64, i64* %8, align 8
  store i64 %250, i64* %3, align 8
  store i32 1, i32* %18, align 4
  br label %275

251:                                              ; preds = %241
  %252 = load i64, i64* %19, align 8
  %253 = load i64, i64* %15, align 8
  %254 = sub nsw i64 %253, %252
  store i64 %254, i64* %15, align 8
  br label %216

255:                                              ; preds = %216
  %256 = load i64, i64* %9, align 8
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = load i64, i64* %12, align 8
  %270 = load i64, i64* %17, align 8
  %271 = inttoptr i64 %270 to i8*
  %272 = call i32 @HPDF_PTRACE(i8* %271)
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 1
  store %struct.TYPE_19__* %274, %struct.TYPE_19__** %10, align 8
  store i32 0, i32* %18, align 4
  br label %275

275:                                              ; preds = %255, %247, %237, %208
  %276 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %276)
  %277 = load i32, i32* %18, align 4
  switch i32 %277, label %292 [
    i32 0, label %278
    i32 1, label %290
  ]

278:                                              ; preds = %275
  br label %279

279:                                              ; preds = %278
  %280 = load i64, i64* %9, align 8
  %281 = add nsw i64 %280, 1
  store i64 %281, i64* %9, align 8
  br label %81

282:                                              ; preds = %81
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %285 = load i32, i32* @HPDF_STREAM_FILTER_NONE, align 4
  %286 = call i64 @HPDF_Stream_WriteToStream(%struct.TYPE_21__* %283, %struct.TYPE_21__* %284, i32 %285, i32* null)
  store i64 %286, i64* %8, align 8
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %288 = call i32 @HPDF_Stream_Free(%struct.TYPE_21__* %287)
  %289 = load i64, i64* %8, align 8
  store i64 %289, i64* %3, align 8
  br label %290

290:                                              ; preds = %282, %275, %69, %36
  %291 = load i64, i64* %3, align 8
  ret i64 %291

292:                                              ; preds = %275
  unreachable
}

declare dso_local %struct.TYPE_20__* @FindTable(%struct.TYPE_22__*, i8*) #1

declare dso_local %struct.TYPE_21__* @HPDF_MemStream_New(i32, i32) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @WriteUINT16(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @HPDF_Stream_Free(%struct.TYPE_21__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @HPDF_Stream_Write(%struct.TYPE_21__*, i32*, i64) #1

declare dso_local i64 @HPDF_Stream_Seek(i32, i64, i32) #1

declare dso_local i64 @HPDF_Stream_Read(i32, i32*, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @HPDF_Stream_WriteToStream(%struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
