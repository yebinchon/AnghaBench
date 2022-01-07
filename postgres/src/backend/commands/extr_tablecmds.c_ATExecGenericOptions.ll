; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecGenericOptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecGenericOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@Natts_pg_foreign_table = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@ForeignTableRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@FOREIGNTABLEREL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"foreign table \22%s\22 does not exist\00", align 1
@Anum_pg_foreign_table_ftoptions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, i32*)* @ATExecGenericOptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATExecGenericOptions(%struct.TYPE_24__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load i32, i32* @Natts_pg_foreign_table, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @Natts_pg_foreign_table, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %24 = load i32, i32* @Natts_pg_foreign_table, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** @NIL, align 8
  %29 = icmp eq i32* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 1, i32* %16, align 4
  br label %128

31:                                               ; preds = %2
  %32 = load i32, i32* @ForeignTableRelationId, align 4
  %33 = load i32, i32* @RowExclusiveLock, align 4
  %34 = call %struct.TYPE_24__* @table_open(i32 %32, i32 %33)
  store %struct.TYPE_24__* %34, %struct.TYPE_24__** %5, align 8
  %35 = load i32, i32* @FOREIGNTABLEREL, align 4
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_25__* @SearchSysCacheCopy1(i32 %35, i32 %38)
  store %struct.TYPE_25__* %39, %struct.TYPE_25__** %8, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %41 = call i32 @HeapTupleIsValid(%struct.TYPE_25__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %48 = call i32 @RelationGetRelationName(%struct.TYPE_24__* %47)
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = call i32 @ereport(i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %43, %31
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %53 = call i64 @GETSTRUCT(%struct.TYPE_25__* %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %54, %struct.TYPE_26__** %15, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.TYPE_27__* @GetForeignServer(i32 %57)
  store %struct.TYPE_27__* %58, %struct.TYPE_27__** %6, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_28__* @GetForeignDataWrapper(i32 %61)
  store %struct.TYPE_28__* %62, %struct.TYPE_28__** %7, align 8
  %63 = mul nuw i64 4, %18
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memset(i32* %20, i32 0, i32 %64)
  %66 = mul nuw i64 4, %22
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memset(i32* %23, i32 0, i32 %67)
  %69 = mul nuw i64 4, %25
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memset(i32* %26, i32 0, i32 %70)
  %72 = load i32, i32* @FOREIGNTABLEREL, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %74 = load i32, i32* @Anum_pg_foreign_table_ftoptions, align 4
  %75 = call i32 @SysCacheGetAttr(i32 %72, %struct.TYPE_25__* %73, i32 %74, i32* %9)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %51
  %79 = call i32 @PointerGetDatum(i32* null)
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %78, %51
  %81 = load i32, i32* @ForeignTableRelationId, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @transformGenericOptions(i32 %81, i32 %82, i32* %83, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @DatumGetPointer(i32 %88)
  %90 = call i64 @PointerIsValid(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %80
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @Anum_pg_foreign_table_ftoptions, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %20, i64 %96
  store i32 %93, i32* %97, align 4
  br label %103

98:                                               ; preds = %80
  %99 = load i32, i32* @Anum_pg_foreign_table_ftoptions, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %23, i64 %101
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %92
  %104 = load i32, i32* @Anum_pg_foreign_table_ftoptions, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %26, i64 %106
  store i32 1, i32* %107, align 4
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %110 = call i32 @RelationGetDescr(%struct.TYPE_24__* %109)
  %111 = call %struct.TYPE_25__* @heap_modify_tuple(%struct.TYPE_25__* %108, i32 %110, i32* %20, i32* %23, i32* %26)
  store %struct.TYPE_25__* %111, %struct.TYPE_25__** %8, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %116 = call i32 @CatalogTupleUpdate(%struct.TYPE_24__* %112, i32* %114, %struct.TYPE_25__* %115)
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %118 = call i32 @CacheInvalidateRelcache(%struct.TYPE_24__* %117)
  %119 = load i32, i32* @ForeignTableRelationId, align 4
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %121 = call i32 @RelationGetRelid(%struct.TYPE_24__* %120)
  %122 = call i32 @InvokeObjectPostAlterHook(i32 %119, i32 %121, i32 0)
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %124 = load i32, i32* @RowExclusiveLock, align 4
  %125 = call i32 @table_close(%struct.TYPE_24__* %123, i32 %124)
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %127 = call i32 @heap_freetuple(%struct.TYPE_25__* %126)
  store i32 0, i32* %16, align 4
  br label %128

128:                                              ; preds = %103, %30
  %129 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %16, align 4
  switch i32 %130, label %132 [
    i32 0, label %131
    i32 1, label %131
  ]

131:                                              ; preds = %128, %128
  ret void

132:                                              ; preds = %128
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_24__* @table_open(i32, i32) #2

declare dso_local %struct.TYPE_25__* @SearchSysCacheCopy1(i32, i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_25__*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32) #2

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_24__*) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_25__*) #2

declare dso_local %struct.TYPE_27__* @GetForeignServer(i32) #2

declare dso_local %struct.TYPE_28__* @GetForeignDataWrapper(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @SysCacheGetAttr(i32, %struct.TYPE_25__*, i32, i32*) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local i32 @transformGenericOptions(i32, i32, i32*, i32) #2

declare dso_local i64 @PointerIsValid(i32) #2

declare dso_local i32 @DatumGetPointer(i32) #2

declare dso_local %struct.TYPE_25__* @heap_modify_tuple(%struct.TYPE_25__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(%struct.TYPE_24__*) #2

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_24__*, i32*, %struct.TYPE_25__*) #2

declare dso_local i32 @CacheInvalidateRelcache(%struct.TYPE_24__*) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #2

declare dso_local i32 @RelationGetRelid(%struct.TYPE_24__*) #2

declare dso_local i32 @table_close(%struct.TYPE_24__*, i32) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_25__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
