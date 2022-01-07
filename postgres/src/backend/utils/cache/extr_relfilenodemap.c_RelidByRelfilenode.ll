; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relfilenodemap.c_RelidByRelfilenode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relfilenodemap.c_RelidByRelfilenode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_12__ = type { i64, i64, i64 }

@RelfilenodeMapHash = common dso_local global i32* null, align 8
@MyDatabaseTableSpace = common dso_local global i64 0, align 8
@HASH_FIND = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@GLOBALTABLESPACE_OID = common dso_local global i64 0, align 8
@RelationRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@relfilenode_skey = common dso_local global i32 0, align 4
@ClassTblspcRelfilenodeIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"unexpected duplicate for tablespace %u, relfilenode %u\00", align 1
@HASH_ENTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"corrupted hashtable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RelidByRelfilenode(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x %struct.TYPE_9__], align 16
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load i32*, i32** @RelfilenodeMapHash, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (...) @InitializeRelfilenodeMap()
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @MyDatabaseTableSpace, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %23, %19
  %25 = call i32 @MemSet(%struct.TYPE_10__* %6, i32 0, i32 16)
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load i32*, i32** @RelfilenodeMapHash, align 8
  %31 = bitcast %struct.TYPE_10__* %6 to i8*
  %32 = load i32, i32* @HASH_FIND, align 4
  %33 = call %struct.TYPE_11__* @hash_search(i32* %30, i8* %31, i32 %32, i32* %8)
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %3, align 8
  br label %129

40:                                               ; preds = %24
  %41 = load i64, i64* @InvalidOid, align 8
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @GLOBALTABLESPACE_OID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @RelationMapFilenodeToOid(i64 %46, i32 1)
  store i64 %47, i64* %13, align 8
  br label %114

48:                                               ; preds = %40
  %49 = load i32, i32* @RelationRelationId, align 4
  %50 = load i32, i32* @AccessShareLock, align 4
  %51 = call i32 @table_open(i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %12, i64 0, i64 0
  %53 = load i32, i32* @relfilenode_skey, align 4
  %54 = call i32 @memcpy(%struct.TYPE_9__* %52, i32 %53, i32 16)
  %55 = load i64, i64* %4, align 8
  %56 = call i8* @ObjectIdGetDatum(i64 %55)
  %57 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %12, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 16
  %59 = load i64, i64* %5, align 8
  %60 = call i8* @ObjectIdGetDatum(i64 %59)
  %61 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %12, i64 0, i64 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @ClassTblspcRelfilenodeIndexId, align 4
  %65 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %12, i64 0, i64 0
  %66 = call i32 @systable_beginscan(i32 %63, i32 %64, i32 1, i32* null, i32 2, %struct.TYPE_9__* %65)
  store i32 %66, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %84, %48
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @systable_getnext(i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = call i64 @HeapTupleIsValid(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %67
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @GETSTRUCT(i32 %73)
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %14, align 8
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32 (i32, i8*, ...) @elog(i32 %80, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %81, i64 %82)
  br label %84

84:                                               ; preds = %79, %72
  store i32 1, i32* %8, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %4, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @Assert(i32 %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @Assert(i32 %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %13, align 8
  br label %67

102:                                              ; preds = %67
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @systable_endscan(i32 %103)
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @AccessShareLock, align 4
  %107 = call i32 @table_close(i32 %105, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = load i64, i64* %5, align 8
  %112 = call i64 @RelationMapFilenodeToOid(i64 %111, i32 0)
  store i64 %112, i64* %13, align 8
  br label %113

113:                                              ; preds = %110, %102
  br label %114

114:                                              ; preds = %113, %45
  %115 = load i32*, i32** @RelfilenodeMapHash, align 8
  %116 = bitcast %struct.TYPE_10__* %6 to i8*
  %117 = load i32, i32* @HASH_ENTER, align 4
  %118 = call %struct.TYPE_11__* @hash_search(i32* %115, i8* %116, i32 %117, i32* %8)
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i32, i32* @ERROR, align 4
  %123 = call i32 (i32, i8*, ...) @elog(i32 %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %114
  %125 = load i64, i64* %13, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %13, align 8
  store i64 %128, i64* %3, align 8
  br label %129

129:                                              ; preds = %124, %36
  %130 = load i64, i64* %3, align 8
  ret i64 %130
}

declare dso_local i32 @InitializeRelfilenodeMap(...) #1

declare dso_local i32 @MemSet(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i64 @RelationMapFilenodeToOid(i64, i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @ObjectIdGetDatum(i64) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
