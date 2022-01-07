; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_StorePartitionKey.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_StorePartitionKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64, i8*, i8* }

@Natts_pg_partitioned_table = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@PartitionedRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_partitioned_table_partexprs = common dso_local global i32 0, align 4
@Anum_pg_partitioned_table_partrelid = common dso_local global i32 0, align 4
@Anum_pg_partitioned_table_partstrat = common dso_local global i32 0, align 4
@Anum_pg_partitioned_table_partnatts = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i8* null, align 8
@Anum_pg_partitioned_table_partdefid = common dso_local global i32 0, align 4
@Anum_pg_partitioned_table_partattrs = common dso_local global i32 0, align 4
@Anum_pg_partitioned_table_partclass = common dso_local global i32 0, align 4
@Anum_pg_partitioned_table_partcollation = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i8* null, align 8
@OperatorClassRelationId = common dso_local global i8* null, align 8
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@CollationRelationId = common dso_local global i8* null, align 8
@DEPENDENCY_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StorePartitionKey(%struct.TYPE_15__* %0, i8 signext %1, i32 %2, i64* %3, i32* %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_16__, align 8
  %26 = alloca %struct.TYPE_16__, align 8
  %27 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i8 %1, i8* %9, align 1
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %28 = load i32, i32* @Natts_pg_partitioned_table, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %22, align 8
  %31 = alloca i64, i64 %29, align 16
  store i64 %29, i64* %23, align 8
  %32 = load i32, i32* @Natts_pg_partitioned_table, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %24, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load i64*, i64** %11, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32* @buildint2vector(i64* %44, i32 %45)
  store i32* %46, i32** %16, align 8
  %47 = load i64*, i64** %13, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32* @buildoidvector(i64* %47, i32 %48)
  store i32* %49, i32** %17, align 8
  %50 = load i64*, i64** %14, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32* @buildoidvector(i64* %50, i32 %51)
  store i32* %52, i32** %18, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %7
  %56 = load i32*, i32** %12, align 8
  %57 = call i8* @nodeToString(i32* %56)
  store i8* %57, i8** %27, align 8
  %58 = load i8*, i8** %27, align 8
  %59 = call i64 @CStringGetTextDatum(i8* %58)
  store i64 %59, i64* %19, align 8
  %60 = load i8*, i8** %27, align 8
  %61 = call i32 @pfree(i8* %60)
  br label %63

62:                                               ; preds = %7
  store i64 0, i64* %19, align 8
  br label %63

63:                                               ; preds = %62, %55
  %64 = load i32, i32* @PartitionedRelationId, align 4
  %65 = load i32, i32* @RowExclusiveLock, align 4
  %66 = call %struct.TYPE_15__* @table_open(i32 %64, i32 %65)
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %20, align 8
  %67 = mul nuw i64 4, %33
  %68 = trunc i64 %67 to i32
  %69 = call i32 @MemSet(i32* %34, i32 0, i32 %68)
  %70 = load i64, i64* %19, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* @Anum_pg_partitioned_table_partexprs, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %34, i64 %75
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %63
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %79 = call i8* @RelationGetRelid(%struct.TYPE_15__* %78)
  %80 = call i64 @ObjectIdGetDatum(i8* %79)
  %81 = load i32, i32* @Anum_pg_partitioned_table_partrelid, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %31, i64 %83
  store i64 %80, i64* %84, align 8
  %85 = load i8, i8* %9, align 1
  %86 = call i64 @CharGetDatum(i8 signext %85)
  %87 = load i32, i32* @Anum_pg_partitioned_table_partstrat, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %31, i64 %89
  store i64 %86, i64* %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @Int16GetDatum(i32 %91)
  %93 = load i32, i32* @Anum_pg_partitioned_table_partnatts, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %31, i64 %95
  store i64 %92, i64* %96, align 8
  %97 = load i8*, i8** @InvalidOid, align 8
  %98 = call i64 @ObjectIdGetDatum(i8* %97)
  %99 = load i32, i32* @Anum_pg_partitioned_table_partdefid, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %31, i64 %101
  store i64 %98, i64* %102, align 8
  %103 = load i32*, i32** %16, align 8
  %104 = call i64 @PointerGetDatum(i32* %103)
  %105 = load i32, i32* @Anum_pg_partitioned_table_partattrs, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %31, i64 %107
  store i64 %104, i64* %108, align 8
  %109 = load i32*, i32** %17, align 8
  %110 = call i64 @PointerGetDatum(i32* %109)
  %111 = load i32, i32* @Anum_pg_partitioned_table_partclass, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %31, i64 %113
  store i64 %110, i64* %114, align 8
  %115 = load i32*, i32** %18, align 8
  %116 = call i64 @PointerGetDatum(i32* %115)
  %117 = load i32, i32* @Anum_pg_partitioned_table_partcollation, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %31, i64 %119
  store i64 %116, i64* %120, align 8
  %121 = load i64, i64* %19, align 8
  %122 = load i32, i32* @Anum_pg_partitioned_table_partexprs, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %31, i64 %124
  store i64 %121, i64* %125, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %127 = call i32 @RelationGetDescr(%struct.TYPE_15__* %126)
  %128 = call i32 @heap_form_tuple(i32 %127, i64* %31, i32* %34)
  store i32 %128, i32* %21, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %130 = load i32, i32* %21, align 4
  %131 = call i32 @CatalogTupleInsert(%struct.TYPE_15__* %129, i32 %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %133 = load i32, i32* @RowExclusiveLock, align 4
  %134 = call i32 @table_close(%struct.TYPE_15__* %132, i32 %133)
  %135 = load i8*, i8** @RelationRelationId, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  store i8* %135, i8** %136, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %138 = call i8* @RelationGetRelid(%struct.TYPE_15__* %137)
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  store i8* %138, i8** %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  store i64 0, i64* %140, align 8
  store i32 0, i32* %15, align 4
  br label %141

141:                                              ; preds = %187, %77
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %190

145:                                              ; preds = %141
  %146 = load i8*, i8** @OperatorClassRelationId, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  store i8* %146, i8** %147, align 8
  %148 = load i64*, i64** %13, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  store i8* %153, i8** %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i64 0, i64* %155, align 8
  %156 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %157 = call i32 @recordDependencyOn(%struct.TYPE_16__* %25, %struct.TYPE_16__* %26, i32 %156)
  %158 = load i64*, i64** %14, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @OidIsValid(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %186

165:                                              ; preds = %145
  %166 = load i64*, i64** %14, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %165
  %174 = load i8*, i8** @CollationRelationId, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  store i8* %174, i8** %175, align 8
  %176 = load i64*, i64** %14, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = inttoptr i64 %180 to i8*
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  store i8* %181, i8** %182, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i64 0, i64* %183, align 8
  %184 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %185 = call i32 @recordDependencyOn(%struct.TYPE_16__* %25, %struct.TYPE_16__* %26, i32 %184)
  br label %186

186:                                              ; preds = %173, %165, %145
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  br label %141

190:                                              ; preds = %141
  store i32 0, i32* %15, align 4
  br label %191

191:                                              ; preds = %217, %190
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %220

195:                                              ; preds = %191
  %196 = load i64*, i64** %11, align 8
  %197 = load i32, i32* %15, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %217

203:                                              ; preds = %195
  %204 = load i8*, i8** @RelationRelationId, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  store i8* %204, i8** %205, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %207 = call i8* @RelationGetRelid(%struct.TYPE_15__* %206)
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  store i8* %207, i8** %208, align 8
  %209 = load i64*, i64** %11, align 8
  %210 = load i32, i32* %15, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i64 %213, i64* %214, align 8
  %215 = load i32, i32* @DEPENDENCY_INTERNAL, align 4
  %216 = call i32 @recordDependencyOn(%struct.TYPE_16__* %26, %struct.TYPE_16__* %25, i32 %215)
  br label %217

217:                                              ; preds = %203, %202
  %218 = load i32, i32* %15, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %15, align 4
  br label %191

220:                                              ; preds = %191
  %221 = load i32*, i32** %12, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %230

223:                                              ; preds = %220
  %224 = load i32*, i32** %12, align 8
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %226 = call i8* @RelationGetRelid(%struct.TYPE_15__* %225)
  %227 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %228 = load i32, i32* @DEPENDENCY_INTERNAL, align 4
  %229 = call i32 @recordDependencyOnSingleRelExpr(%struct.TYPE_16__* %25, i32* %224, i8* %226, i32 %227, i32 %228, i32 1)
  br label %230

230:                                              ; preds = %223, %220
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %232 = call i32 @CacheInvalidateRelcache(%struct.TYPE_15__* %231)
  %233 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %233)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32* @buildint2vector(i64*, i32) #2

declare dso_local i32* @buildoidvector(i64*, i32) #2

declare dso_local i8* @nodeToString(i32*) #2

declare dso_local i64 @CStringGetTextDatum(i8*) #2

declare dso_local i32 @pfree(i8*) #2

declare dso_local %struct.TYPE_15__* @table_open(i32, i32) #2

declare dso_local i32 @MemSet(i32*, i32, i32) #2

declare dso_local i64 @ObjectIdGetDatum(i8*) #2

declare dso_local i8* @RelationGetRelid(%struct.TYPE_15__*) #2

declare dso_local i64 @CharGetDatum(i8 signext) #2

declare dso_local i64 @Int16GetDatum(i32) #2

declare dso_local i64 @PointerGetDatum(i32*) #2

declare dso_local i32 @heap_form_tuple(i32, i64*, i32*) #2

declare dso_local i32 @RelationGetDescr(%struct.TYPE_15__*) #2

declare dso_local i32 @CatalogTupleInsert(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @table_close(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #2

declare dso_local i64 @OidIsValid(i64) #2

declare dso_local i32 @recordDependencyOnSingleRelExpr(%struct.TYPE_16__*, i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @CacheInvalidateRelcache(%struct.TYPE_15__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
