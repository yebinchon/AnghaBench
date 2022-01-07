; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_dict_thesaurus.c_compileTheSubstitute.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_dict_thesaurus.c_compileTheSubstitute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, i32 }

@DT_USEASIS = common dso_local global i32 0, align 4
@TSL_ADDPOS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"thesaurus substitute word \22%s\22 is a stop word (rule %d)\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"thesaurus substitute word \22%s\22 isn't recognized by subdictionary (rule %d)\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"thesaurus substitute phrase is empty (rule %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @compileTheSubstitute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compileTheSubstitute(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca [2 x %struct.TYPE_14__], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %325, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %328

18:                                               ; preds = %12
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %4, align 8
  store i32 2, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 16, %28
  %30 = trunc i64 %29 to i32
  %31 = call i64 @palloc(i32 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_14__*
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %39, align 8
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %5, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %6, align 8
  br label %43

43:                                               ; preds = %279, %18
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = icmp ne %struct.TYPE_14__* %49, null
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi i1 [ false, %43 ], [ %50, %46 ]
  br i1 %52, label %53, label %282

53:                                               ; preds = %51
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DT_USEASIS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %9, i64 0, i64 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = bitcast %struct.TYPE_14__* %61 to i8*
  %64 = bitcast %struct.TYPE_14__* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %63, i8* align 8 %64, i64 16, i1 false)
  %65 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %9, i64 0, i64 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 16
  %67 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %9, i64 0, i64 1
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %68, align 8
  %69 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %9, i64 0, i64 0
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %8, align 8
  br label %94

70:                                               ; preds = %53
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = call i32 @PointerGetDatum(%struct.TYPE_14__* %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = call i32 @PointerGetDatum(%struct.TYPE_14__* %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = call i32 @strlen(%struct.TYPE_14__* %87)
  %89 = call i32 @Int32GetDatum(i32 %88)
  %90 = call i32 @PointerGetDatum(%struct.TYPE_14__* null)
  %91 = call i32 @FunctionCall4(i32* %74, i32 %80, i32 %84, i32 %89, i32 %90)
  %92 = call i64 @DatumGetPointer(i32 %91)
  %93 = inttoptr i64 %92 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %8, align 8
  br label %94

94:                                               ; preds = %70, %60
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %96 = icmp ne %struct.TYPE_14__* %95, null
  br i1 %96, label %97, label %243

97:                                               ; preds = %94
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = icmp ne %struct.TYPE_14__* %100, null
  br i1 %101, label %102, label %243

102:                                              ; preds = %97
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = icmp ne %struct.TYPE_14__* %105, null
  br i1 %106, label %107, label %132

107:                                              ; preds = %102
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = icmp ne %struct.TYPE_14__* %108, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %107
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = ptrtoint %struct.TYPE_14__* %119 to i64
  %129 = ptrtoint %struct.TYPE_14__* %127 to i64
  %130 = sub i64 %128, %129
  %131 = sdiv exact i64 %130, 16
  br label %133

132:                                              ; preds = %107, %102
  br label %133

133:                                              ; preds = %132, %118
  %134 = phi i64 [ %131, %118 ], [ -1, %132 ]
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %208, %133
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = icmp ne %struct.TYPE_14__* %139, null
  br i1 %140, label %141, label %223

141:                                              ; preds = %136
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = ptrtoint %struct.TYPE_14__* %142 to i64
  %152 = ptrtoint %struct.TYPE_14__* %150 to i64
  %153 = sub i64 %151, %152
  %154 = sdiv exact i64 %153, 16
  %155 = add nsw i64 %154, 1
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = icmp sge i64 %155, %157
  br i1 %158, label %159, label %208

159:                                              ; preds = %141
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = ptrtoint %struct.TYPE_14__* %160 to i64
  %170 = ptrtoint %struct.TYPE_14__* %168 to i64
  %171 = sub i64 %169, %170
  %172 = sdiv exact i64 %171, 16
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %7, align 4
  %175 = mul nsw i32 %174, 2
  store i32 %175, i32* %7, align 4
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 16, %185
  %187 = trunc i64 %186 to i32
  %188 = call i64 @repalloc(%struct.TYPE_14__* %183, i32 %187)
  %189 = inttoptr i64 %188 to %struct.TYPE_14__*
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = load i32, i32* %3, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  store %struct.TYPE_14__* %189, %struct.TYPE_14__** %196, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %198, align 8
  %200 = load i32, i32* %3, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i64 %206
  store %struct.TYPE_14__* %207, %struct.TYPE_14__** %5, align 8
  br label %208

208:                                              ; preds = %159, %141
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %211 = bitcast %struct.TYPE_14__* %209 to i8*
  %212 = bitcast %struct.TYPE_14__* %210 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %211, i8* align 8 %212, i64 16, i1 false)
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = call %struct.TYPE_14__* @pstrdup(%struct.TYPE_14__* %215)
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  store %struct.TYPE_14__* %216, %struct.TYPE_14__** %218, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 1
  store %struct.TYPE_14__* %220, %struct.TYPE_14__** %5, align 8
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 1
  store %struct.TYPE_14__* %222, %struct.TYPE_14__** %8, align 8
  br label %136

223:                                              ; preds = %136
  %224 = load i32, i32* %10, align 4
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %242

226:                                              ; preds = %223
  %227 = load i32, i32* @TSL_ADDPOS, align 4
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %229, align 8
  %231 = load i32, i32* %3, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %234, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %227
  store i32 %241, i32* %239, align 8
  br label %242

242:                                              ; preds = %226, %223
  br label %269

243:                                              ; preds = %97, %94
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %245 = icmp ne %struct.TYPE_14__* %244, null
  br i1 %245, label %246, label %257

246:                                              ; preds = %243
  %247 = load i32, i32* @ERROR, align 4
  %248 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %249 = call i32 @errcode(i32 %248)
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %251, align 8
  %253 = load i32, i32* %3, align 4
  %254 = add nsw i32 %253, 1
  %255 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %252, i32 %254)
  %256 = call i32 @ereport(i32 %247, i32 %255)
  br label %268

257:                                              ; preds = %243
  %258 = load i32, i32* @ERROR, align 4
  %259 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %260 = call i32 @errcode(i32 %259)
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %262, align 8
  %264 = load i32, i32* %3, align 4
  %265 = add nsw i32 %264, 1
  %266 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__* %263, i32 %265)
  %267 = call i32 @ereport(i32 %258, i32 %266)
  br label %268

268:                                              ; preds = %257, %246
  br label %269

269:                                              ; preds = %268, %242
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %271, align 8
  %273 = icmp ne %struct.TYPE_14__* %272, null
  br i1 %273, label %274, label %279

274:                                              ; preds = %269
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %276, align 8
  %278 = call i32 @pfree(%struct.TYPE_14__* %277)
  br label %279

279:                                              ; preds = %274, %269
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 1
  store %struct.TYPE_14__* %281, %struct.TYPE_14__** %6, align 8
  br label %43

282:                                              ; preds = %51
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %285, align 8
  %287 = load i32, i32* %3, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %290, align 8
  %292 = icmp eq %struct.TYPE_14__* %283, %291
  br i1 %292, label %293, label %301

293:                                              ; preds = %282
  %294 = load i32, i32* @ERROR, align 4
  %295 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %296 = call i32 @errcode(i32 %295)
  %297 = load i32, i32* %3, align 4
  %298 = add nsw i32 %297, 1
  %299 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %298)
  %300 = call i32 @ereport(i32 %294, i32 %299)
  br label %301

301:                                              ; preds = %293, %282
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %304, align 8
  %306 = load i32, i32* %3, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %309, align 8
  %311 = ptrtoint %struct.TYPE_14__* %302 to i64
  %312 = ptrtoint %struct.TYPE_14__* %310 to i64
  %313 = sub i64 %311, %312
  %314 = sdiv exact i64 %313, 16
  %315 = trunc i64 %314 to i32
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %317, align 8
  %319 = load i32, i32* %3, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 0
  store i32 %315, i32* %322, align 8
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %324 = call i32 @pfree(%struct.TYPE_14__* %323)
  br label %325

325:                                              ; preds = %301
  %326 = load i32, i32* %3, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %3, align 4
  br label %12

328:                                              ; preds = %12
  ret void
}

declare dso_local i64 @palloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @FunctionCall4(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_14__*) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @strlen(%struct.TYPE_14__*) #1

declare dso_local i64 @repalloc(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_14__* @pstrdup(%struct.TYPE_14__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @pfree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
