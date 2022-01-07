; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_index_concurrently_create_copy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_index_concurrently_create_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32*, i32, i32, i32, i32*, i32*, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"concurrent index creation for exclusion constraints is not supported\00", align 1
@INDEXRELID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cache lookup failed for index %u\00", align 1
@Anum_pg_index_indclass = common dso_local global i32 0, align 4
@Anum_pg_index_indoption = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@Anum_pg_class_reloptions = common dso_local global i32 0, align 4
@Anum_pg_index_indexprs = common dso_local global i32 0, align 4
@Anum_pg_index_indpred = common dso_local global i32 0, align 4
@INDEX_CREATE_SKIP_BUILD = common dso_local global i32 0, align 4
@INDEX_CREATE_CONCURRENT = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @index_concurrently_create_copy(%struct.TYPE_20__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %29 = load i32, i32* @InvalidOid, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** @NIL, align 8
  store i32* %30, i32** %19, align 8
  %31 = load i32*, i32** @NIL, align 8
  store i32* %31, i32** %20, align 8
  %32 = load i32*, i32** @NIL, align 8
  store i32* %32, i32** %21, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @RowExclusiveLock, align 4
  %35 = call %struct.TYPE_20__* @index_open(i32 %33, i32 %34)
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %7, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = call %struct.TYPE_21__* @BuildIndexInfo(%struct.TYPE_20__* %36)
  store %struct.TYPE_21__* %37, %struct.TYPE_21__** %8, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %3
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 @ereport(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %3
  %49 = load i32, i32* @INDEXRELID, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ObjectIdGetDatum(i32 %50)
  %52 = call i32 @SearchSysCache1(i32 %49, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @HeapTupleIsValid(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @elog(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %48
  %61 = load i32, i32* @INDEXRELID, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @Anum_pg_index_indclass, align 4
  %64 = call i32 @SysCacheGetAttr(i32 %61, i32 %62, i32 %63, i32* %18)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @Assert(i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = call i64 @DatumGetPointer(i32 %70)
  %72 = inttoptr i64 %71 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %72, %struct.TYPE_18__** %16, align 8
  %73 = load i32, i32* @INDEXRELID, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @Anum_pg_index_indoption, align 4
  %76 = call i32 @SysCacheGetAttr(i32 %73, i32 %74, i32 %75, i32* %18)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @Assert(i32 %80)
  %82 = load i32, i32* %14, align 4
  %83 = call i64 @DatumGetPointer(i32 %82)
  %84 = inttoptr i64 %83 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %84, %struct.TYPE_19__** %17, align 8
  %85 = load i32, i32* @RELOID, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @SearchSysCache1(i32 %85, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @HeapTupleIsValid(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %60
  %92 = load i32, i32* @ERROR, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @elog(i32 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %60
  %96 = load i32, i32* @RELOID, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @Anum_pg_class_reloptions, align 4
  %99 = call i32 @SysCacheGetAttr(i32 %96, i32 %97, i32 %98, i32* %18)
  store i32 %99, i32* %15, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** @NIL, align 8
  %104 = icmp ne i32* %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %95
  %106 = load i32, i32* @INDEXRELID, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @Anum_pg_index_indexprs, align 4
  %109 = call i32 @SysCacheGetAttr(i32 %106, i32 %107, i32 %108, i32* %18)
  store i32 %109, i32* %22, align 4
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @Assert(i32 %113)
  %115 = load i32, i32* %22, align 4
  %116 = call i8* @TextDatumGetCString(i32 %115)
  store i8* %116, i8** %23, align 8
  %117 = load i8*, i8** %23, align 8
  %118 = call i64 @stringToNode(i8* %117)
  %119 = inttoptr i64 %118 to i32*
  store i32* %119, i32** %20, align 8
  %120 = load i8*, i8** %23, align 8
  %121 = call i32 @pfree(i8* %120)
  br label %122

122:                                              ; preds = %105, %95
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = load i32*, i32** @NIL, align 8
  %127 = icmp ne i32* %125, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %122
  %129 = load i32, i32* @INDEXRELID, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @Anum_pg_index_indpred, align 4
  %132 = call i32 @SysCacheGetAttr(i32 %129, i32 %130, i32 %131, i32* %18)
  store i32 %132, i32* %24, align 4
  %133 = load i32, i32* %18, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i32 @Assert(i32 %136)
  %138 = load i32, i32* %24, align 4
  %139 = call i8* @TextDatumGetCString(i32 %138)
  store i8* %139, i8** %25, align 8
  %140 = load i8*, i8** %25, align 8
  %141 = call i64 @stringToNode(i8* %140)
  %142 = inttoptr i64 %141 to i32*
  store i32* %142, i32** %21, align 8
  %143 = load i32*, i32** %21, align 8
  %144 = call i32* @make_ands_implicit(i32* %143)
  store i32* %144, i32** %21, align 8
  %145 = load i8*, i8** %25, align 8
  %146 = call i32 @pfree(i8* %145)
  br label %147

147:                                              ; preds = %128, %122
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %20, align 8
  %158 = load i32*, i32** %21, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call %struct.TYPE_21__* @makeIndexInfo(i32 %150, i32 %153, i32 %156, i32* %157, i32* %158, i32 %161, i32 0, i32 1)
  store %struct.TYPE_21__* %162, %struct.TYPE_21__** %9, align 8
  store i32 0, i32* %26, align 4
  br label %163

163:                                              ; preds = %194, %147
  %164 = load i32, i32* %26, align 4
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %197

169:                                              ; preds = %163
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %171 = call i32 @RelationGetDescr(%struct.TYPE_20__* %170)
  store i32 %171, i32* %27, align 4
  %172 = load i32, i32* %27, align 4
  %173 = load i32, i32* %26, align 4
  %174 = call %struct.TYPE_22__* @TupleDescAttr(i32 %172, i32 %173)
  store %struct.TYPE_22__* %174, %struct.TYPE_22__** %28, align 8
  %175 = load i32*, i32** %19, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @NameStr(i32 %178)
  %180 = call i32* @lappend(i32* %175, i32 %179)
  store i32* %180, i32** %19, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %26, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %26, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %187, i32* %193, align 4
  br label %194

194:                                              ; preds = %169
  %195 = load i32, i32* %26, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %26, align 4
  br label %163

197:                                              ; preds = %163
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %199 = load i8*, i8** %6, align 8
  %200 = load i32, i32* @InvalidOid, align 4
  %201 = load i32, i32* @InvalidOid, align 4
  %202 = load i32, i32* @InvalidOid, align 4
  %203 = load i32, i32* @InvalidOid, align 4
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %205 = load i32*, i32** %19, align 8
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* @INDEX_CREATE_SKIP_BUILD, align 4
  %227 = load i32, i32* @INDEX_CREATE_CONCURRENT, align 4
  %228 = or i32 %226, %227
  %229 = call i32 @index_create(%struct.TYPE_20__* %198, i8* %199, i32 %200, i32 %201, i32 %202, i32 %203, %struct.TYPE_21__* %204, i32* %205, i32 %210, i32 %215, i32 %218, i32 %221, i32 %224, i32 %225, i32 %228, i32 0, i32 1, i32 0, i32* null)
  store i32 %229, i32* %10, align 4
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %231 = load i32, i32* @NoLock, align 4
  %232 = call i32 @index_close(%struct.TYPE_20__* %230, i32 %231)
  %233 = load i32, i32* %11, align 4
  %234 = call i32 @ReleaseSysCache(i32 %233)
  %235 = load i32, i32* %12, align 4
  %236 = call i32 @ReleaseSysCache(i32 %235)
  %237 = load i32, i32* %10, align 4
  ret i32 %237
}

declare dso_local %struct.TYPE_20__* @index_open(i32, i32) #1

declare dso_local %struct.TYPE_21__* @BuildIndexInfo(%struct.TYPE_20__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i64 @stringToNode(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32* @make_ands_implicit(i32*) #1

declare dso_local %struct.TYPE_21__* @makeIndexInfo(i32, i32, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @RelationGetDescr(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_22__* @TupleDescAttr(i32, i32) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @index_create(%struct.TYPE_20__*, i8*, i32, i32, i32, i32, %struct.TYPE_21__*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @index_close(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
