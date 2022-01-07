; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_cluster.c_make_new_heap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_cluster.c_make_new_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@NAMEDATALEN = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@Anum_pg_class_reloptions = common dso_local global i32 0, align 4
@RELPERSISTENCE_TEMP = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pg_temp\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"pg_temp_%u\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i32 0, align 4
@ONCOMMIT_NOOP = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_new_heap(i32 %0, i32 %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* @NAMEDATALEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.TYPE_9__* @table_open(i32 %23, i32 %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %14, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %27 = call i32 @RelationGetDescr(%struct.TYPE_9__* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @RELOID, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ObjectIdGetDatum(i32 %29)
  %31 = call i32 @SearchSysCache1(i32 %28, i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @HeapTupleIsValid(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %4
  %40 = load i32, i32* @RELOID, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @Anum_pg_class_reloptions, align 4
  %43 = call i64 @SysCacheGetAttr(i32 %40, i32 %41, i32 %42, i32* %17)
  store i64 %43, i64* %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i64 0, i64* %16, align 8
  br label %47

47:                                               ; preds = %46, %39
  %48 = load i8, i8* %7, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* @RELPERSISTENCE_TEMP, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @LookupCreationNamespace(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %54, i32* %18, align 4
  br label %58

55:                                               ; preds = %47
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %57 = call i32 @RelationGetNamespace(%struct.TYPE_9__* %56)
  store i32 %57, i32* %18, align 4
  br label %58

58:                                               ; preds = %55, %53
  %59 = trunc i64 %20 to i32
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @snprintf(i8* %22, i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @InvalidOid, align 4
  %65 = load i32, i32* @InvalidOid, align 4
  %66 = load i32, i32* @InvalidOid, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @NIL, align 4
  %79 = load i32, i32* @RELKIND_RELATION, align 4
  %80 = load i8, i8* %7, align 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %82 = call i32 @RelationIsMapped(%struct.TYPE_9__* %81)
  %83 = load i32, i32* @ONCOMMIT_NOOP, align 4
  %84 = load i64, i64* %16, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @heap_create_with_catalog(i8* %22, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %71, i32 %76, i32 %77, i32 %78, i32 %79, i8 signext %80, i32 0, i32 %82, i32 %83, i64 %84, i32 0, i32 1, i32 1, i32 %85, i32* null)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @InvalidOid, align 4
  %89 = icmp ne i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @Assert(i32 %90)
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @ReleaseSysCache(i32 %92)
  %94 = call i32 (...) @CommandCounterIncrement()
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i64 @OidIsValid(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %130

103:                                              ; preds = %58
  %104 = load i32, i32* @RELOID, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @ObjectIdGetDatum(i32 %105)
  %107 = call i32 @SearchSysCache1(i32 %104, i32 %106)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @HeapTupleIsValid(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* @ERROR, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @elog(i32 %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111, %103
  %116 = load i32, i32* @RELOID, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @Anum_pg_class_reloptions, align 4
  %119 = call i64 @SysCacheGetAttr(i32 %116, i32 %117, i32 %118, i32* %17)
  store i64 %119, i64* %16, align 8
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  store i64 0, i64* %16, align 8
  br label %123

123:                                              ; preds = %122, %115
  %124 = load i32, i32* %12, align 4
  %125 = load i64, i64* %16, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @NewHeapCreateToastTable(i32 %124, i64 %125, i32 %126)
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @ReleaseSysCache(i32 %128)
  br label %130

130:                                              ; preds = %123, %58
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %132 = load i32, i32* @NoLock, align 4
  %133 = call i32 @table_close(%struct.TYPE_9__* %131, i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %135)
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_9__* @table_open(i32, i32) #2

declare dso_local i32 @RelationGetDescr(%struct.TYPE_9__*) #2

declare dso_local i32 @SearchSysCache1(i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @HeapTupleIsValid(i32) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

declare dso_local i64 @SysCacheGetAttr(i32, i32, i32, i32*) #2

declare dso_local i32 @LookupCreationNamespace(i8*) #2

declare dso_local i32 @RelationGetNamespace(%struct.TYPE_9__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @heap_create_with_catalog(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 signext, i32, i32, i32, i64, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @RelationIsMapped(%struct.TYPE_9__*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @ReleaseSysCache(i32) #2

declare dso_local i32 @CommandCounterIncrement(...) #2

declare dso_local i64 @OidIsValid(i32) #2

declare dso_local i32 @NewHeapCreateToastTable(i32, i64, i32) #2

declare dso_local i32 @table_close(%struct.TYPE_9__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
