; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationGetIndexList.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationGetIndexList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8*, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8 }
%struct.TYPE_11__ = type { i8*, i64, i64, i32, i32, i32, i32 }

@InvalidOid = common dso_local global i8* null, align 8
@NIL = common dso_local global i32* null, align 8
@Anum_pg_index_indrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@IndexRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@IndexIndrelidIndexId = common dso_local global i32 0, align 4
@Anum_pg_index_indpred = common dso_local global i32 0, align 4
@list_oid_cmp = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32 0, align 4
@REPLICA_IDENTITY_DEFAULT = common dso_local global i8 0, align 1
@REPLICA_IDENTITY_INDEX = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @RelationGetIndexList(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %10, align 1
  %20 = load i8*, i8** @InvalidOid, align 8
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** @InvalidOid, align 8
  store i8* %21, i8** %12, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = call i32* @list_copy(i32* %29)
  store i32* %30, i32** %2, align 8
  br label %167

31:                                               ; preds = %1
  %32 = load i32*, i32** @NIL, align 8
  store i32* %32, i32** %8, align 8
  %33 = load i32, i32* @Anum_pg_index_indrelid, align 4
  %34 = load i32, i32* @BTEqualStrategyNumber, align 4
  %35 = load i32, i32* @F_OIDEQ, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = call i32 @RelationGetRelid(%struct.TYPE_10__* %36)
  %38 = call i32 @ObjectIdGetDatum(i32 %37)
  %39 = call i32 @ScanKeyInit(i32* %6, i32 %33, i32 %34, i32 %35, i32 %38)
  %40 = load i32, i32* @IndexRelationId, align 4
  %41 = load i32, i32* @AccessShareLock, align 4
  %42 = call %struct.TYPE_10__* @table_open(i32 %40, i32 %41)
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %4, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = load i32, i32* @IndexIndrelidIndexId, align 4
  %45 = call i32 @systable_beginscan(%struct.TYPE_10__* %43, i32 %44, i32 1, i32* null, i32 1, i32* %6)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %105, %86, %60, %31
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @systable_getnext(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = call i64 @HeapTupleIsValid(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %106

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @GETSTRUCT(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %14, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %46

61:                                               ; preds = %51
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32* @lappend_oid(i32* %62, i8* %65)
  store i32* %66, i32** %8, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %61
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @Anum_pg_index_indpred, align 4
  %84 = call i32 @heap_attisnull(i32 %82, i32 %83, i32* null)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81, %76, %71, %61
  br label %46

87:                                               ; preds = %81
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %11, align 8
  br label %96

96:                                               ; preds = %92, %87
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %12, align 8
  br label %105

105:                                              ; preds = %101, %96
  br label %46

106:                                              ; preds = %46
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @systable_endscan(i32 %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = load i32, i32* @AccessShareLock, align 4
  %111 = call i32 @table_close(%struct.TYPE_10__* %109, i32 %110)
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* @list_oid_cmp, align 4
  %114 = call i32 @list_sort(i32* %112, i32 %113)
  %115 = load i32, i32* @CacheMemoryContext, align 4
  %116 = call i32 @MemoryContextSwitchTo(i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  store i32* %119, i32** %9, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = call i32* @list_copy(i32* %120)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  store i32* %121, i32** %123, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load i8, i8* %10, align 1
  %128 = sext i8 %127 to i32
  %129 = load i8, i8* @REPLICA_IDENTITY_DEFAULT, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %106
  %133 = load i8*, i8** %11, align 8
  %134 = call i64 @OidIsValid(i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i8*, i8** %11, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  br label %159

140:                                              ; preds = %132, %106
  %141 = load i8, i8* %10, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8, i8* @REPLICA_IDENTITY_INDEX, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %140
  %147 = load i8*, i8** %12, align 8
  %148 = call i64 @OidIsValid(i8* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i8*, i8** %12, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  br label %158

154:                                              ; preds = %146, %140
  %155 = load i8*, i8** @InvalidOid, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %154, %150
  br label %159

159:                                              ; preds = %158, %136
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @MemoryContextSwitchTo(i32 %162)
  %164 = load i32*, i32** %9, align 8
  %165 = call i32 @list_free(i32* %164)
  %166 = load i32*, i32** %8, align 8
  store i32* %166, i32** %2, align 8
  br label %167

167:                                              ; preds = %159, %26
  %168 = load i32*, i32** %2, align 8
  ret i32* %168
}

declare dso_local i32* @list_copy(i32*) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_10__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32* @lappend_oid(i32*, i8*) #1

declare dso_local i32 @heap_attisnull(i32, i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @list_sort(i32*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @OidIsValid(i8*) #1

declare dso_local i32 @list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
