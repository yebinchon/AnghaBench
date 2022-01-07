; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_CreateForeignTable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_CreateForeignTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }

@Natts_pg_foreign_table = common dso_local global i32 0, align 4
@ForeignTableRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ACL_USAGE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_FOREIGN_SERVER = common dso_local global i32 0, align 4
@Anum_pg_foreign_table_ftrelid = common dso_local global i32 0, align 4
@Anum_pg_foreign_table_ftserver = common dso_local global i32 0, align 4
@Anum_pg_foreign_table_ftoptions = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@ForeignServerRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateForeignTable(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* @Natts_pg_foreign_table, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* @Natts_pg_foreign_table, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = call i32 (...) @CommandCounterIncrement()
  %25 = load i32, i32* @ForeignTableRelationId, align 4
  %26 = load i32, i32* @RowExclusiveLock, align 4
  %27 = call %struct.TYPE_14__* @table_open(i32 %25, i32 %26)
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %5, align 8
  %28 = call i32 (...) @GetUserId()
  store i32 %28, i32* %14, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_16__* @GetForeignServerByName(i32 %31, i32 0)
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %16, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @ACL_USAGE, align 4
  %38 = call i64 @pg_foreign_server_aclcheck(i32 %35, i32 %36, i32 %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @ACLCHECK_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %2
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* @OBJECT_FOREIGN_SERVER, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @aclcheck_error(i64 %43, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %2
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_17__* @GetForeignDataWrapper(i32 %52)
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %15, align 8
  %54 = mul nuw i64 4, %18
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memset(i32* %20, i32 0, i32 %55)
  %57 = mul nuw i64 4, %22
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memset(i32* %23, i32 0, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @ObjectIdGetDatum(i32 %60)
  %62 = load i32, i32* @Anum_pg_foreign_table_ftrelid, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %20, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ObjectIdGetDatum(i32 %68)
  %70 = load i32, i32* @Anum_pg_foreign_table_ftserver, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %20, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* @ForeignTableRelationId, align 4
  %75 = call i32 @PointerGetDatum(i32* null)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @transformGenericOptions(i32 %74, i32 %75, i32 %78, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @DatumGetPointer(i32 %83)
  %85 = call i64 @PointerIsValid(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %49
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @Anum_pg_foreign_table_ftoptions, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %20, i64 %91
  store i32 %88, i32* %92, align 4
  br label %98

93:                                               ; preds = %49
  %94 = load i32, i32* @Anum_pg_foreign_table_ftoptions, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %23, i64 %96
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %93, %87
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @heap_form_tuple(i32 %101, i32* %20, i32* %23)
  store i32 %102, i32* %10, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @CatalogTupleInsert(%struct.TYPE_14__* %103, i32 %104)
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @heap_freetuple(i32 %106)
  %108 = load i32, i32* @RelationRelationId, align 4
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %4, align 4
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i32 %110, i32* %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* @ForeignServerRelationId, align 4
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  store i32 %113, i32* %114, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i32 %117, i32* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %121 = call i32 @recordDependencyOn(%struct.TYPE_15__* %12, %struct.TYPE_15__* %13, i32 %120)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %123 = load i32, i32* @RowExclusiveLock, align 4
  %124 = call i32 @table_close(%struct.TYPE_14__* %122, i32 %123)
  %125 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %125)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CommandCounterIncrement(...) #2

declare dso_local %struct.TYPE_14__* @table_open(i32, i32) #2

declare dso_local i32 @GetUserId(...) #2

declare dso_local %struct.TYPE_16__* @GetForeignServerByName(i32, i32) #2

declare dso_local i64 @pg_foreign_server_aclcheck(i32, i32, i32) #2

declare dso_local i32 @aclcheck_error(i64, i32, i32) #2

declare dso_local %struct.TYPE_17__* @GetForeignDataWrapper(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @transformGenericOptions(i32, i32, i32, i32) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local i64 @PointerIsValid(i32) #2

declare dso_local i32 @DatumGetPointer(i32) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #2

declare dso_local i32 @table_close(%struct.TYPE_14__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
