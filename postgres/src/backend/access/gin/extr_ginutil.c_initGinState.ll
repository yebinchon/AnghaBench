; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginutil.c_initGinState.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginutil.c_initGinState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32*, i32*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_25__**, %struct.TYPE_25__*, %struct.TYPE_26__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }

@INT2OID = common dso_local global i32 0, align 4
@GIN_COMPARE_PROC = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@TYPECACHE_CMP_PROC_FINFO = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"could not identify a comparison function for type %s\00", align 1
@GIN_EXTRACTVALUE_PROC = common dso_local global i32 0, align 4
@GIN_EXTRACTQUERY_PROC = common dso_local global i32 0, align 4
@GIN_TRICONSISTENT_PROC = common dso_local global i32 0, align 4
@GIN_CONSISTENT_PROC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"missing GIN support function (%d or %d) for attribute %d of index \22%s\22\00", align 1
@GIN_COMPARE_PARTIAL_PROC = common dso_local global i32 0, align 4
@DEFAULT_COLLATION_OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initGinState(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %9 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %10 = call %struct.TYPE_25__* @RelationGetDescr(%struct.TYPE_26__* %9)
  store %struct.TYPE_25__* %10, %struct.TYPE_25__** %5, align 8
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %12 = call i32 @MemSet(%struct.TYPE_27__* %11, i32 0, i32 96)
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 11
  store %struct.TYPE_26__* %13, %struct.TYPE_26__** %15, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 10
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %26, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %320, %2
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %323

33:                                               ; preds = %27
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.TYPE_28__* @TupleDescAttr(%struct.TYPE_25__* %34, i32 %35)
  store %struct.TYPE_28__* %36, %struct.TYPE_28__** %7, align 8
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 10
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %43, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 9
  %47 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %47, i64 %49
  store %struct.TYPE_25__* %44, %struct.TYPE_25__** %50, align 8
  br label %96

51:                                               ; preds = %33
  %52 = call %struct.TYPE_25__* @CreateTemplateTupleDesc(i32 2)
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 9
  %55 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %55, i64 %57
  store %struct.TYPE_25__* %52, %struct.TYPE_25__** %58, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 9
  %61 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %61, i64 %63
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %64, align 8
  %66 = load i32, i32* @INT2OID, align 4
  %67 = call i32 @TupleDescInitEntry(%struct.TYPE_25__* %65, i32 1, i32* null, i32 %66, i32 -1, i32 0)
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 9
  %70 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %70, i64 %72
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %73, align 8
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @TupleDescInitEntry(%struct.TYPE_25__* %74, i32 2, i32* null, i32 %77, i32 %80, i32 %83)
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 9
  %87 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %87, i64 %89
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @TupleDescInitEntryCollation(%struct.TYPE_25__* %91, i32 2, i32 %94)
  br label %96

96:                                               ; preds = %51, %41
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* @GIN_COMPARE_PROC, align 4
  %101 = call i64 @index_getprocid(%struct.TYPE_26__* %97, i32 %99, i32 %100)
  %102 = load i64, i64* @InvalidOid, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %96
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i64 %109
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* @GIN_COMPARE_PROC, align 4
  %115 = call %struct.TYPE_29__* @index_getprocinfo(%struct.TYPE_26__* %111, i32 %113, i32 %114)
  %116 = load i32, i32* @CurrentMemoryContext, align 4
  %117 = call i32 @fmgr_info_copy(%struct.TYPE_23__* %110, %struct.TYPE_29__* %115, i32 %116)
  br label %151

118:                                              ; preds = %96
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @TYPECACHE_CMP_PROC_FINFO, align 4
  %123 = call %struct.TYPE_24__* @lookup_type_cache(i32 %121, i32 %122)
  store %struct.TYPE_24__* %123, %struct.TYPE_24__** %8, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @OidIsValid(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %118
  %131 = load i32, i32* @ERROR, align 4
  %132 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %133 = call i32 @errcode(i32 %132)
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @format_type_be(i32 %136)
  %138 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %137)
  %139 = call i32 @ereport(i32 %131, i32 %138)
  br label %140

140:                                              ; preds = %130, %118
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i64 %145
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  %149 = load i32, i32* @CurrentMemoryContext, align 4
  %150 = call i32 @fmgr_info_copy(%struct.TYPE_23__* %146, %struct.TYPE_29__* %148, i32 %149)
  br label %151

151:                                              ; preds = %140, %104
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 7
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i64 %156
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  %161 = load i32, i32* @GIN_EXTRACTVALUE_PROC, align 4
  %162 = call %struct.TYPE_29__* @index_getprocinfo(%struct.TYPE_26__* %158, i32 %160, i32 %161)
  %163 = load i32, i32* @CurrentMemoryContext, align 4
  %164 = call i32 @fmgr_info_copy(%struct.TYPE_23__* %157, %struct.TYPE_29__* %162, i32 %163)
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 6
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i64 %169
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  %174 = load i32, i32* @GIN_EXTRACTQUERY_PROC, align 4
  %175 = call %struct.TYPE_29__* @index_getprocinfo(%struct.TYPE_26__* %171, i32 %173, i32 %174)
  %176 = load i32, i32* @CurrentMemoryContext, align 4
  %177 = call i32 @fmgr_info_copy(%struct.TYPE_23__* %170, %struct.TYPE_29__* %175, i32 %176)
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  %181 = load i32, i32* @GIN_TRICONSISTENT_PROC, align 4
  %182 = call i64 @index_getprocid(%struct.TYPE_26__* %178, i32 %180, i32 %181)
  %183 = load i64, i64* @InvalidOid, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %151
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 4
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i64 %190
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  %195 = load i32, i32* @GIN_TRICONSISTENT_PROC, align 4
  %196 = call %struct.TYPE_29__* @index_getprocinfo(%struct.TYPE_26__* %192, i32 %194, i32 %195)
  %197 = load i32, i32* @CurrentMemoryContext, align 4
  %198 = call i32 @fmgr_info_copy(%struct.TYPE_23__* %191, %struct.TYPE_29__* %196, i32 %197)
  br label %199

199:                                              ; preds = %185, %151
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  %203 = load i32, i32* @GIN_CONSISTENT_PROC, align 4
  %204 = call i64 @index_getprocid(%struct.TYPE_26__* %200, i32 %202, i32 %203)
  %205 = load i64, i64* @InvalidOid, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %221

207:                                              ; preds = %199
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 5
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i64 %212
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  %217 = load i32, i32* @GIN_CONSISTENT_PROC, align 4
  %218 = call %struct.TYPE_29__* @index_getprocinfo(%struct.TYPE_26__* %214, i32 %216, i32 %217)
  %219 = load i32, i32* @CurrentMemoryContext, align 4
  %220 = call i32 @fmgr_info_copy(%struct.TYPE_23__* %213, %struct.TYPE_29__* %218, i32 %219)
  br label %221

221:                                              ; preds = %207, %199
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 5
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @InvalidOid, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %252

232:                                              ; preds = %221
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 4
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %234, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @InvalidOid, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %232
  %244 = load i32, i32* @ERROR, align 4
  %245 = load i32, i32* @GIN_CONSISTENT_PROC, align 4
  %246 = load i32, i32* @GIN_TRICONSISTENT_PROC, align 4
  %247 = load i32, i32* %6, align 4
  %248 = add nsw i32 %247, 1
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %250 = call i32 @RelationGetRelationName(%struct.TYPE_26__* %249)
  %251 = call i32 @elog(i32 %244, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %245, i32 %246, i32 %248, i32 %250)
  br label %252

252:                                              ; preds = %243, %232, %221
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %254 = load i32, i32* %6, align 4
  %255 = add nsw i32 %254, 1
  %256 = load i32, i32* @GIN_COMPARE_PARTIAL_PROC, align 4
  %257 = call i64 @index_getprocid(%struct.TYPE_26__* %253, i32 %255, i32 %256)
  %258 = load i64, i64* @InvalidOid, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %280

260:                                              ; preds = %252
  %261 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %262, align 8
  %264 = load i32, i32* %6, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i64 %265
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %268 = load i32, i32* %6, align 4
  %269 = add nsw i32 %268, 1
  %270 = load i32, i32* @GIN_COMPARE_PARTIAL_PROC, align 4
  %271 = call %struct.TYPE_29__* @index_getprocinfo(%struct.TYPE_26__* %267, i32 %269, i32 %270)
  %272 = load i32, i32* @CurrentMemoryContext, align 4
  %273 = call i32 @fmgr_info_copy(%struct.TYPE_23__* %266, %struct.TYPE_29__* %271, i32 %272)
  %274 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %6, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  store i32 1, i32* %279, align 4
  br label %287

280:                                              ; preds = %252
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  store i32 0, i32* %286, align 4
  br label %287

287:                                              ; preds = %280, %260
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = call i64 @OidIsValid(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %311

297:                                              ; preds = %287
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %6, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %305, i32 0, i32 2
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %6, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  store i32 %304, i32* %310, align 4
  br label %319

311:                                              ; preds = %287
  %312 = load i32, i32* @DEFAULT_COLLATION_OID, align 4
  %313 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %313, i32 0, i32 2
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %6, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  store i32 %312, i32* %318, align 4
  br label %319

319:                                              ; preds = %311, %297
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %6, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %6, align 4
  br label %27

323:                                              ; preds = %27
  ret void
}

declare dso_local %struct.TYPE_25__* @RelationGetDescr(%struct.TYPE_26__*) #1

declare dso_local i32 @MemSet(%struct.TYPE_27__*, i32, i32) #1

declare dso_local %struct.TYPE_28__* @TupleDescAttr(%struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_25__* @CreateTemplateTupleDesc(i32) #1

declare dso_local i32 @TupleDescInitEntry(%struct.TYPE_25__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @TupleDescInitEntryCollation(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i64 @index_getprocid(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @fmgr_info_copy(%struct.TYPE_23__*, %struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_29__* @index_getprocinfo(%struct.TYPE_26__*, i32, i32) #1

declare dso_local %struct.TYPE_24__* @lookup_type_cache(i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
