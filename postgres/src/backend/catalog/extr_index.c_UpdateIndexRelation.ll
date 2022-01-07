; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_UpdateIndexRelation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_UpdateIndexRelation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i64, i32, i32* }
%struct.TYPE_8__ = type { i32* }

@Natts_pg_index = common dso_local global i32 0, align 4
@NIL = common dso_local global i64 0, align 8
@IndexRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_index_indexrelid = common dso_local global i32 0, align 4
@Anum_pg_index_indrelid = common dso_local global i32 0, align 4
@Anum_pg_index_indnatts = common dso_local global i32 0, align 4
@Anum_pg_index_indnkeyatts = common dso_local global i32 0, align 4
@Anum_pg_index_indisunique = common dso_local global i32 0, align 4
@Anum_pg_index_indisprimary = common dso_local global i32 0, align 4
@Anum_pg_index_indisexclusion = common dso_local global i32 0, align 4
@Anum_pg_index_indimmediate = common dso_local global i32 0, align 4
@Anum_pg_index_indisclustered = common dso_local global i32 0, align 4
@Anum_pg_index_indisvalid = common dso_local global i32 0, align 4
@Anum_pg_index_indcheckxmin = common dso_local global i32 0, align 4
@Anum_pg_index_indisready = common dso_local global i32 0, align 4
@Anum_pg_index_indislive = common dso_local global i32 0, align 4
@Anum_pg_index_indisreplident = common dso_local global i32 0, align 4
@Anum_pg_index_indkey = common dso_local global i32 0, align 4
@Anum_pg_index_indcollation = common dso_local global i32 0, align 4
@Anum_pg_index_indclass = common dso_local global i32 0, align 4
@Anum_pg_index_indoption = common dso_local global i32 0, align 4
@Anum_pg_index_indexprs = common dso_local global i32 0, align 4
@Anum_pg_index_indpred = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.TYPE_9__*, i32*, i32*, i32*, i32, i32, i32, i32, i32)* @UpdateIndexRelation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateIndexRelation(i32 %0, i32 %1, i32 %2, %struct.TYPE_9__* %3, i32* %4, i32* %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_8__*, align 8
  %26 = alloca %struct.TYPE_8__*, align 8
  %27 = alloca %struct.TYPE_8__*, align 8
  %28 = alloca %struct.TYPE_8__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %39 = load i32, i32* @Natts_pg_index, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %31, align 8
  %42 = alloca i64, i64 %40, align 16
  store i64 %40, i64* %32, align 8
  %43 = load i32, i32* @Natts_pg_index, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %33, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_8__* @buildint2vector(i32* null, i32 %48)
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %25, align 8
  store i32 0, i32* %36, align 4
  br label %50

50:                                               ; preds = %70, %12
  %51 = load i32, i32* %36, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %36, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %36, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %36, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %36, align 4
  br label %50

73:                                               ; preds = %50
  %74 = load i32*, i32** %17, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.TYPE_8__* @buildoidvector(i32* %74, i32 %77)
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %26, align 8
  %79 = load i32*, i32** %18, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.TYPE_8__* @buildoidvector(i32* %79, i32 %82)
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %27, align 8
  %84 = load i32*, i32** %19, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.TYPE_8__* @buildint2vector(i32* %84, i32 %87)
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %28, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NIL, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %73
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i8* @nodeToString(i64 %97)
  store i8* %98, i8** %37, align 8
  %99 = load i8*, i8** %37, align 8
  %100 = call i64 @CStringGetTextDatum(i8* %99)
  store i64 %100, i64* %29, align 8
  %101 = load i8*, i8** %37, align 8
  %102 = call i32 @pfree(i8* %101)
  br label %104

103:                                              ; preds = %73
  store i64 0, i64* %29, align 8
  br label %104

104:                                              ; preds = %103, %94
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NIL, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %104
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @make_ands_explicit(i64 %113)
  %115 = call i8* @nodeToString(i64 %114)
  store i8* %115, i8** %38, align 8
  %116 = load i8*, i8** %38, align 8
  %117 = call i64 @CStringGetTextDatum(i8* %116)
  store i64 %117, i64* %30, align 8
  %118 = load i8*, i8** %38, align 8
  %119 = call i32 @pfree(i8* %118)
  br label %121

120:                                              ; preds = %104
  store i64 0, i64* %30, align 8
  br label %121

121:                                              ; preds = %120, %110
  %122 = load i32, i32* @IndexRelationId, align 4
  %123 = load i32, i32* @RowExclusiveLock, align 4
  %124 = call i32 @table_open(i32 %122, i32 %123)
  store i32 %124, i32* %34, align 4
  %125 = mul nuw i64 4, %44
  %126 = trunc i64 %125 to i32
  %127 = call i32 @MemSet(i32* %45, i32 0, i32 %126)
  %128 = load i32, i32* %13, align 4
  %129 = call i64 @ObjectIdGetDatum(i32 %128)
  %130 = load i32, i32* @Anum_pg_index_indexrelid, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %42, i64 %132
  store i64 %129, i64* %133, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call i64 @ObjectIdGetDatum(i32 %134)
  %136 = load i32, i32* @Anum_pg_index_indrelid, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %42, i64 %138
  store i64 %135, i64* %139, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @Int16GetDatum(i32 %142)
  %144 = load i32, i32* @Anum_pg_index_indnatts, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %42, i64 %146
  store i64 %143, i64* %147, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @Int16GetDatum(i32 %150)
  %152 = load i32, i32* @Anum_pg_index_indnkeyatts, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %42, i64 %154
  store i64 %151, i64* %155, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @BoolGetDatum(i32 %158)
  %160 = load i32, i32* @Anum_pg_index_indisunique, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %42, i64 %162
  store i64 %159, i64* %163, align 8
  %164 = load i32, i32* %20, align 4
  %165 = call i64 @BoolGetDatum(i32 %164)
  %166 = load i32, i32* @Anum_pg_index_indisprimary, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %42, i64 %168
  store i64 %165, i64* %169, align 8
  %170 = load i32, i32* %21, align 4
  %171 = call i64 @BoolGetDatum(i32 %170)
  %172 = load i32, i32* @Anum_pg_index_indisexclusion, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %42, i64 %174
  store i64 %171, i64* %175, align 8
  %176 = load i32, i32* %22, align 4
  %177 = call i64 @BoolGetDatum(i32 %176)
  %178 = load i32, i32* @Anum_pg_index_indimmediate, align 4
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %42, i64 %180
  store i64 %177, i64* %181, align 8
  %182 = call i64 @BoolGetDatum(i32 0)
  %183 = load i32, i32* @Anum_pg_index_indisclustered, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %42, i64 %185
  store i64 %182, i64* %186, align 8
  %187 = load i32, i32* %23, align 4
  %188 = call i64 @BoolGetDatum(i32 %187)
  %189 = load i32, i32* @Anum_pg_index_indisvalid, align 4
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %42, i64 %191
  store i64 %188, i64* %192, align 8
  %193 = call i64 @BoolGetDatum(i32 0)
  %194 = load i32, i32* @Anum_pg_index_indcheckxmin, align 4
  %195 = sub nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %42, i64 %196
  store i64 %193, i64* %197, align 8
  %198 = load i32, i32* %24, align 4
  %199 = call i64 @BoolGetDatum(i32 %198)
  %200 = load i32, i32* @Anum_pg_index_indisready, align 4
  %201 = sub nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %42, i64 %202
  store i64 %199, i64* %203, align 8
  %204 = call i64 @BoolGetDatum(i32 1)
  %205 = load i32, i32* @Anum_pg_index_indislive, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %42, i64 %207
  store i64 %204, i64* %208, align 8
  %209 = call i64 @BoolGetDatum(i32 0)
  %210 = load i32, i32* @Anum_pg_index_indisreplident, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %42, i64 %212
  store i64 %209, i64* %213, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %215 = call i64 @PointerGetDatum(%struct.TYPE_8__* %214)
  %216 = load i32, i32* @Anum_pg_index_indkey, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %42, i64 %218
  store i64 %215, i64* %219, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %221 = call i64 @PointerGetDatum(%struct.TYPE_8__* %220)
  %222 = load i32, i32* @Anum_pg_index_indcollation, align 4
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %42, i64 %224
  store i64 %221, i64* %225, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %227 = call i64 @PointerGetDatum(%struct.TYPE_8__* %226)
  %228 = load i32, i32* @Anum_pg_index_indclass, align 4
  %229 = sub nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %42, i64 %230
  store i64 %227, i64* %231, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %233 = call i64 @PointerGetDatum(%struct.TYPE_8__* %232)
  %234 = load i32, i32* @Anum_pg_index_indoption, align 4
  %235 = sub nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %42, i64 %236
  store i64 %233, i64* %237, align 8
  %238 = load i64, i64* %29, align 8
  %239 = load i32, i32* @Anum_pg_index_indexprs, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %42, i64 %241
  store i64 %238, i64* %242, align 8
  %243 = load i64, i64* %29, align 8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %121
  %246 = load i32, i32* @Anum_pg_index_indexprs, align 4
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %45, i64 %248
  store i32 1, i32* %249, align 4
  br label %250

250:                                              ; preds = %245, %121
  %251 = load i64, i64* %30, align 8
  %252 = load i32, i32* @Anum_pg_index_indpred, align 4
  %253 = sub nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %42, i64 %254
  store i64 %251, i64* %255, align 8
  %256 = load i64, i64* %30, align 8
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %250
  %259 = load i32, i32* @Anum_pg_index_indpred, align 4
  %260 = sub nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %45, i64 %261
  store i32 1, i32* %262, align 4
  br label %263

263:                                              ; preds = %258, %250
  %264 = load i32, i32* %34, align 4
  %265 = call i32 @RelationGetDescr(i32 %264)
  %266 = call i32 @heap_form_tuple(i32 %265, i64* %42, i32* %45)
  store i32 %266, i32* %35, align 4
  %267 = load i32, i32* %34, align 4
  %268 = load i32, i32* %35, align 4
  %269 = call i32 @CatalogTupleInsert(i32 %267, i32 %268)
  %270 = load i32, i32* %34, align 4
  %271 = load i32, i32* @RowExclusiveLock, align 4
  %272 = call i32 @table_close(i32 %270, i32 %271)
  %273 = load i32, i32* %35, align 4
  %274 = call i32 @heap_freetuple(i32 %273)
  %275 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %275)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_8__* @buildint2vector(i32*, i32) #2

declare dso_local %struct.TYPE_8__* @buildoidvector(i32*, i32) #2

declare dso_local i8* @nodeToString(i64) #2

declare dso_local i64 @CStringGetTextDatum(i8*) #2

declare dso_local i32 @pfree(i8*) #2

declare dso_local i64 @make_ands_explicit(i64) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @MemSet(i32*, i32, i32) #2

declare dso_local i64 @ObjectIdGetDatum(i32) #2

declare dso_local i64 @Int16GetDatum(i32) #2

declare dso_local i64 @BoolGetDatum(i32) #2

declare dso_local i64 @PointerGetDatum(%struct.TYPE_8__*) #2

declare dso_local i32 @heap_form_tuple(i32, i64*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleInsert(i32, i32) #2

declare dso_local i32 @table_close(i32, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
