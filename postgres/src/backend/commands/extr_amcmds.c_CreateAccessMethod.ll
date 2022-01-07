; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_amcmds.c_CreateAccessMethod.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_amcmds.c_CreateAccessMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@Natts_pg_am = common dso_local global i32 0, align 4
@AccessMethodRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"permission denied to create access method \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Must be superuser to create an access method.\00", align 1
@AMNAME = common dso_local global i32 0, align 4
@Anum_pg_am_oid = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"access method \22%s\22 already exists\00", align 1
@AmOidIndexId = common dso_local global i32 0, align 4
@namein = common dso_local global i32 0, align 4
@Anum_pg_am_amname = common dso_local global i32 0, align 4
@Anum_pg_am_amhandler = common dso_local global i32 0, align 4
@Anum_pg_am_amtype = common dso_local global i32 0, align 4
@ProcedureRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateAccessMethod(%struct.TYPE_8__* noalias sret %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %3, align 8
  %12 = load i32, i32* @Natts_pg_am, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @Natts_pg_am, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %19 = load i32, i32* @AccessMethodRelationId, align 4
  %20 = load i32, i32* @RowExclusiveLock, align 4
  %21 = call i32 @table_open(i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = call i32 (...) @superuser()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @errhint(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @ereport(i32 %25, i32 %32)
  br label %34

34:                                               ; preds = %24, %2
  %35 = load i32, i32* @AMNAME, align 4
  %36 = load i32, i32* @Anum_pg_am_oid, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CStringGetDatum(i32 %39)
  %41 = call i8* @GetSysCacheOid1(i32 %35, i32 %36, i32 %40)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @OidIsValid(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %34
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = call i32 @ereport(i32 %46, i32 %52)
  br label %54

54:                                               ; preds = %45, %34
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @lookup_am_handler_func(i32 %57, i32 %60)
  store i8* %61, i8** %7, align 8
  %62 = mul nuw i64 4, %17
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memset(i32* %18, i32 0, i32 %63)
  %65 = mul nuw i64 4, %13
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memset(i32* %15, i32 0, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @AmOidIndexId, align 4
  %70 = load i32, i32* @Anum_pg_am_oid, align 4
  %71 = call i8* @GetNewOidWithIndex(i32 %68, i32 %69, i32 %70)
  store i8* %71, i8** %6, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @ObjectIdGetDatum(i8* %72)
  %74 = load i32, i32* @Anum_pg_am_oid, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %18, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* @namein, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @CStringGetDatum(i32 %81)
  %83 = call i32 @DirectFunctionCall1(i32 %78, i32 %82)
  %84 = load i32, i32* @Anum_pg_am_amname, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %18, i64 %86
  store i32 %83, i32* %87, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @ObjectIdGetDatum(i8* %88)
  %90 = load i32, i32* @Anum_pg_am_amhandler, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %18, i64 %92
  store i32 %89, i32* %93, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @CharGetDatum(i32 %96)
  %98 = load i32, i32* @Anum_pg_am_amtype, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %18, i64 %100
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @RelationGetDescr(i32 %102)
  %104 = call i32 @heap_form_tuple(i32 %103, i32* %18, i32* %15)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @CatalogTupleInsert(i32 %105, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @heap_freetuple(i32 %108)
  %110 = load i32, i32* @AccessMethodRelationId, align 4
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  store i32 %110, i32* %111, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  store i8* %112, i8** %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* @ProcedureRelationId, align 4
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i32 %115, i32* %116, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i8* %117, i8** %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %121 = call i32 @recordDependencyOn(%struct.TYPE_8__* %0, %struct.TYPE_8__* %5, i32 %120)
  %122 = call i32 @recordDependencyOnCurrentExtension(%struct.TYPE_8__* %0, i32 0)
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @RowExclusiveLock, align 4
  %125 = call i32 @table_close(i32 %123, i32 %124)
  %126 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %126)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @superuser(...) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32) #2

declare dso_local i32 @errhint(i8*) #2

declare dso_local i8* @GetSysCacheOid1(i32, i32, i32) #2

declare dso_local i32 @CStringGetDatum(i32) #2

declare dso_local i64 @OidIsValid(i8*) #2

declare dso_local i8* @lookup_am_handler_func(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i8* @GetNewOidWithIndex(i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i8*) #2

declare dso_local i32 @DirectFunctionCall1(i32, i32) #2

declare dso_local i32 @CharGetDatum(i32) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleInsert(i32, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @recordDependencyOnCurrentExtension(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @table_close(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
