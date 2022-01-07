; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_extension_config_remove.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_extension_config_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@Natts_pg_extension = common dso_local global i32 0, align 4
@ExtensionRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_extension_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ExtensionOidIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not find tuple for extension %u\00", align 1
@Anum_pg_extension_extconfig = common dso_local global i32 0, align 4
@OIDOID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"extconfig is not a 1-D Oid array\00", align 1
@Anum_pg_extension_extcondition = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"extconfig and extcondition arrays do not match\00", align 1
@TEXTOID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"extcondition is not a 1-D text array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @extension_config_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extension_config_remove(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %27 = load i32, i32* @Natts_pg_extension, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %13, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %31 = load i32, i32* @Natts_pg_extension, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %34 = load i32, i32* @Natts_pg_extension, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %16, align 8
  %37 = load i32, i32* @ExtensionRelationId, align 4
  %38 = load i32, i32* @RowExclusiveLock, align 4
  %39 = call i32 @table_open(i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %41 = load i32, i32* @Anum_pg_extension_oid, align 4
  %42 = load i32, i32* @BTEqualStrategyNumber, align 4
  %43 = load i32, i32* @F_OIDEQ, align 4
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @ObjectIdGetDatum(i64 %44)
  %46 = call i32 @ScanKeyInit(i32* %40, i32 %41, i32 %42, i32 %43, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @ExtensionOidIndexId, align 4
  %49 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %50 = call i32 @systable_beginscan(i32 %47, i32 %48, i32 1, i32* null, i32 1, i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.TYPE_8__* @systable_getnext(i32 %51)
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %8, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = call i32 @HeapTupleIsValid(%struct.TYPE_8__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %2
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i64, i64* %3, align 8
  %59 = call i32 (i32, i8*, ...) @elog(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %56, %2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = load i32, i32* @Anum_pg_extension_extconfig, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @RelationGetDescr(i32 %63)
  %65 = call i32 @heap_getattr(%struct.TYPE_8__* %61, i32 %62, i32 %64, i32* %12)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32* null, i32** %17, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  br label %123

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = call i32* @DatumGetArrayTypeP(i32 %70)
  store i32* %71, i32** %17, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = call i32* @ARR_DIMS(i32* %72)
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %10, align 4
  %76 = load i32*, i32** %17, align 8
  %77 = call i32 @ARR_NDIM(i32* %76)
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %97, label %79

79:                                               ; preds = %69
  %80 = load i32*, i32** %17, align 8
  %81 = call i32* @ARR_LBOUND(i32* %80)
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %97, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** %17, align 8
  %90 = call i64 @ARR_HASNULL(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load i32*, i32** %17, align 8
  %94 = call i64 @ARR_ELEMTYPE(i32* %93)
  %95 = load i64, i64* @OIDOID, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92, %88, %85, %79, %69
  %98 = load i32, i32* @ERROR, align 4
  %99 = call i32 (i32, i8*, ...) @elog(i32 %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i32*, i32** %17, align 8
  %102 = call i64 @ARR_DATA_PTR(i32* %101)
  %103 = inttoptr i64 %102 to i64*
  store i64* %103, i64** %18, align 8
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %19, align 4
  br label %104

104:                                              ; preds = %119, %100
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load i64*, i64** %18, align 8
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %4, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %19, align 4
  store i32 %117, i32* %11, align 4
  br label %122

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %19, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %19, align 4
  br label %104

122:                                              ; preds = %116, %104
  br label %123

123:                                              ; preds = %122, %68
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @systable_endscan(i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @RowExclusiveLock, align 4
  %131 = call i32 @table_close(i32 %129, i32 %130)
  store i32 1, i32* %20, align 4
  br label %298

132:                                              ; preds = %123
  %133 = mul nuw i64 4, %28
  %134 = trunc i64 %133 to i32
  %135 = call i32 @memset(i32* %30, i32 0, i32 %134)
  %136 = mul nuw i64 4, %32
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memset(i32* %33, i32 0, i32 %137)
  %139 = mul nuw i64 4, %35
  %140 = trunc i64 %139 to i32
  %141 = call i32 @memset(i32* %36, i32 0, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = icmp sle i32 %142, 1
  br i1 %143, label %144, label %149

144:                                              ; preds = %132
  %145 = load i32, i32* @Anum_pg_extension_extconfig, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %33, i64 %147
  store i32 1, i32* %148, align 4
  br label %185

149:                                              ; preds = %132
  %150 = load i32*, i32** %17, align 8
  %151 = load i64, i64* @OIDOID, align 8
  %152 = call i32 @deconstruct_array(i32* %150, i64 %151, i32 8, i32 1, i8 signext 105, i32** %21, i32* null, i32* %22)
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %23, align 4
  br label %154

154:                                              ; preds = %170, %149
  %155 = load i32, i32* %23, align 4
  %156 = load i32, i32* %10, align 4
  %157 = sub nsw i32 %156, 1
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %154
  %160 = load i32*, i32** %21, align 8
  %161 = load i32, i32* %23, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %21, align 8
  %167 = load i32, i32* %23, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %165, i32* %169, align 4
  br label %170

170:                                              ; preds = %159
  %171 = load i32, i32* %23, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %23, align 4
  br label %154

173:                                              ; preds = %154
  %174 = load i32*, i32** %21, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sub nsw i32 %175, 1
  %177 = load i64, i64* @OIDOID, align 8
  %178 = call i32* @construct_array(i32* %174, i32 %176, i64 %177, i32 8, i32 1, i8 signext 105)
  store i32* %178, i32** %17, align 8
  %179 = load i32*, i32** %17, align 8
  %180 = call i32 @PointerGetDatum(i32* %179)
  %181 = load i32, i32* @Anum_pg_extension_extconfig, align 4
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %30, i64 %183
  store i32 %180, i32* %184, align 4
  br label %185

185:                                              ; preds = %173, %144
  %186 = load i32, i32* @Anum_pg_extension_extconfig, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %36, i64 %188
  store i32 1, i32* %189, align 4
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %191 = load i32, i32* @Anum_pg_extension_extcondition, align 4
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @RelationGetDescr(i32 %192)
  %194 = call i32 @heap_getattr(%struct.TYPE_8__* %190, i32 %191, i32 %193, i32* %12)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %185
  %198 = load i32, i32* @ERROR, align 4
  %199 = call i32 (i32, i8*, ...) @elog(i32 %198, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %235

200:                                              ; preds = %185
  %201 = load i32, i32* %9, align 4
  %202 = call i32* @DatumGetArrayTypeP(i32 %201)
  store i32* %202, i32** %17, align 8
  %203 = load i32*, i32** %17, align 8
  %204 = call i32 @ARR_NDIM(i32* %203)
  %205 = icmp ne i32 %204, 1
  br i1 %205, label %221, label %206

206:                                              ; preds = %200
  %207 = load i32*, i32** %17, align 8
  %208 = call i32* @ARR_LBOUND(i32* %207)
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 1
  br i1 %211, label %221, label %212

212:                                              ; preds = %206
  %213 = load i32*, i32** %17, align 8
  %214 = call i64 @ARR_HASNULL(i32* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %212
  %217 = load i32*, i32** %17, align 8
  %218 = call i64 @ARR_ELEMTYPE(i32* %217)
  %219 = load i64, i64* @TEXTOID, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %216, %212, %206, %200
  %222 = load i32, i32* @ERROR, align 4
  %223 = call i32 (i32, i8*, ...) @elog(i32 %222, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %224

224:                                              ; preds = %221, %216
  %225 = load i32*, i32** %17, align 8
  %226 = call i32* @ARR_DIMS(i32* %225)
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %224
  %232 = load i32, i32* @ERROR, align 4
  %233 = call i32 (i32, i8*, ...) @elog(i32 %232, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %234

234:                                              ; preds = %231, %224
  br label %235

235:                                              ; preds = %234, %197
  %236 = load i32, i32* %10, align 4
  %237 = icmp sle i32 %236, 1
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load i32, i32* @Anum_pg_extension_extcondition, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %33, i64 %241
  store i32 1, i32* %242, align 4
  br label %279

243:                                              ; preds = %235
  %244 = load i32*, i32** %17, align 8
  %245 = load i64, i64* @TEXTOID, align 8
  %246 = call i32 @deconstruct_array(i32* %244, i64 %245, i32 -1, i32 0, i8 signext 105, i32** %24, i32* null, i32* %25)
  %247 = load i32, i32* %11, align 4
  store i32 %247, i32* %26, align 4
  br label %248

248:                                              ; preds = %264, %243
  %249 = load i32, i32* %26, align 4
  %250 = load i32, i32* %10, align 4
  %251 = sub nsw i32 %250, 1
  %252 = icmp slt i32 %249, %251
  br i1 %252, label %253, label %267

253:                                              ; preds = %248
  %254 = load i32*, i32** %24, align 8
  %255 = load i32, i32* %26, align 4
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32*, i32** %24, align 8
  %261 = load i32, i32* %26, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32 %259, i32* %263, align 4
  br label %264

264:                                              ; preds = %253
  %265 = load i32, i32* %26, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %26, align 4
  br label %248

267:                                              ; preds = %248
  %268 = load i32*, i32** %24, align 8
  %269 = load i32, i32* %10, align 4
  %270 = sub nsw i32 %269, 1
  %271 = load i64, i64* @TEXTOID, align 8
  %272 = call i32* @construct_array(i32* %268, i32 %270, i64 %271, i32 -1, i32 0, i8 signext 105)
  store i32* %272, i32** %17, align 8
  %273 = load i32*, i32** %17, align 8
  %274 = call i32 @PointerGetDatum(i32* %273)
  %275 = load i32, i32* @Anum_pg_extension_extcondition, align 4
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %30, i64 %277
  store i32 %274, i32* %278, align 4
  br label %279

279:                                              ; preds = %267, %238
  %280 = load i32, i32* @Anum_pg_extension_extcondition, align 4
  %281 = sub nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %36, i64 %282
  store i32 1, i32* %283, align 4
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %285 = load i32, i32* %5, align 4
  %286 = call i32 @RelationGetDescr(i32 %285)
  %287 = call %struct.TYPE_8__* @heap_modify_tuple(%struct.TYPE_8__* %284, i32 %286, i32* %30, i32* %33, i32* %36)
  store %struct.TYPE_8__* %287, %struct.TYPE_8__** %8, align 8
  %288 = load i32, i32* %5, align 4
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %292 = call i32 @CatalogTupleUpdate(i32 %288, i32* %290, %struct.TYPE_8__* %291)
  %293 = load i32, i32* %7, align 4
  %294 = call i32 @systable_endscan(i32 %293)
  %295 = load i32, i32* %5, align 4
  %296 = load i32, i32* @RowExclusiveLock, align 4
  %297 = call i32 @table_close(i32 %295, i32 %296)
  store i32 0, i32* %20, align 4
  br label %298

298:                                              ; preds = %279, %126
  %299 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %299)
  %300 = load i32, i32* %20, align 4
  switch i32 %300, label %302 [
    i32 0, label %301
    i32 1, label %301
  ]

301:                                              ; preds = %298, %298
  ret void

302:                                              ; preds = %298
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i64) #2

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #2

declare dso_local %struct.TYPE_8__* @systable_getnext(i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_8__*) #2

declare dso_local i32 @elog(i32, i8*, ...) #2

declare dso_local i32 @heap_getattr(%struct.TYPE_8__*, i32, i32, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32* @DatumGetArrayTypeP(i32) #2

declare dso_local i32* @ARR_DIMS(i32*) #2

declare dso_local i32 @ARR_NDIM(i32*) #2

declare dso_local i32* @ARR_LBOUND(i32*) #2

declare dso_local i64 @ARR_HASNULL(i32*) #2

declare dso_local i64 @ARR_ELEMTYPE(i32*) #2

declare dso_local i64 @ARR_DATA_PTR(i32*) #2

declare dso_local i32 @systable_endscan(i32) #2

declare dso_local i32 @table_close(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @deconstruct_array(i32*, i64, i32, i32, i8 signext, i32**, i32*, i32*) #2

declare dso_local i32* @construct_array(i32*, i32, i64, i32, i32, i8 signext) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local %struct.TYPE_8__* @heap_modify_tuple(%struct.TYPE_8__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
