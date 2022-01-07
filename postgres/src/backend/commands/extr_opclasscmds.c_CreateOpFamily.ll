; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_opclasscmds.c_CreateOpFamily.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_opclasscmds.c_CreateOpFamily.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i8*, i32 }
%struct.TYPE_11__ = type { i32 }

@Natts_pg_opfamily = common dso_local global i32 0, align 4
@OperatorFamilyRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@OPFAMILYAMNAMENSP = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"operator family \22%s\22 for access method \22%s\22 already exists\00", align 1
@OpfamilyOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_opfamily_oid = common dso_local global i32 0, align 4
@Anum_pg_opfamily_opfmethod = common dso_local global i32 0, align 4
@Anum_pg_opfamily_opfname = common dso_local global i32 0, align 4
@Anum_pg_opfamily_opfnamespace = common dso_local global i32 0, align 4
@Anum_pg_opfamily_opfowner = common dso_local global i32 0, align 4
@AccessMethodRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_AUTO = common dso_local global i32 0, align 4
@NamespaceRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*, i8*, i8*, i8*)* @CreateOpFamily to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateOpFamily(%struct.TYPE_12__* noalias sret %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* %4, i8** %9, align 8
  %18 = load i32, i32* @Natts_pg_opfamily, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i32, i32* @Natts_pg_opfamily, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %25 = load i32, i32* @OperatorFamilyRelationId, align 4
  %26 = load i32, i32* @RowExclusiveLock, align 4
  %27 = call %struct.TYPE_11__* @table_open(i32 %25, i32 %26)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %11, align 8
  %28 = load i32, i32* @OPFAMILYAMNAMENSP, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @ObjectIdGetDatum(i8* %29)
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @CStringGetDatum(i8* %31)
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @ObjectIdGetDatum(i8* %33)
  %35 = call i64 @SearchSysCacheExists3(i32 %28, i32 %30, i32 %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %5
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %40 = call i32 @errcode(i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42)
  %44 = call i32 @ereport(i32 %38, i32 %43)
  br label %45

45:                                               ; preds = %37, %5
  %46 = mul nuw i64 4, %19
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memset(i32* %21, i32 0, i32 %47)
  %49 = mul nuw i64 4, %23
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memset(i32* %24, i32 0, i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %53 = load i32, i32* @OpfamilyOidIndexId, align 4
  %54 = load i32, i32* @Anum_pg_opfamily_oid, align 4
  %55 = call i8* @GetNewOidWithIndex(%struct.TYPE_11__* %52, i32 %53, i32 %54)
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @ObjectIdGetDatum(i8* %56)
  %58 = load i32, i32* @Anum_pg_opfamily_oid, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %21, i64 %60
  store i32 %57, i32* %61, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @ObjectIdGetDatum(i8* %62)
  %64 = load i32, i32* @Anum_pg_opfamily_opfmethod, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %21, i64 %66
  store i32 %63, i32* %67, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @namestrcpy(i32* %16, i8* %68)
  %70 = call i32 @NameGetDatum(i32* %16)
  %71 = load i32, i32* @Anum_pg_opfamily_opfname, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %21, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @ObjectIdGetDatum(i8* %75)
  %77 = load i32, i32* @Anum_pg_opfamily_opfnamespace, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %21, i64 %79
  store i32 %76, i32* %80, align 4
  %81 = call i8* (...) @GetUserId()
  %82 = call i32 @ObjectIdGetDatum(i8* %81)
  %83 = load i32, i32* @Anum_pg_opfamily_opfowner, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %21, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @heap_form_tuple(i32 %89, i32* %21, i32* %24)
  store i32 %90, i32* %12, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @CatalogTupleInsert(%struct.TYPE_11__* %91, i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @heap_freetuple(i32 %94)
  %96 = load i32, i32* @OperatorFamilyRelationId, align 4
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %0, i32 0, i32 2
  store i32 %96, i32* %97, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %0, i32 0, i32 1
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %0, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = load i32, i32* @AccessMethodRelationId, align 4
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  store i32 %101, i32* %102, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  store i8* %103, i8** %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* @DEPENDENCY_AUTO, align 4
  %107 = call i32 @recordDependencyOn(%struct.TYPE_12__* %0, %struct.TYPE_12__* %17, i32 %106)
  %108 = load i32, i32* @NamespaceRelationId, align 4
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  store i32 %108, i32* %109, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  store i8* %110, i8** %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %114 = call i32 @recordDependencyOn(%struct.TYPE_12__* %0, %struct.TYPE_12__* %17, i32 %113)
  %115 = load i32, i32* @OperatorFamilyRelationId, align 4
  %116 = load i8*, i8** %10, align 8
  %117 = call i8* (...) @GetUserId()
  %118 = call i32 @recordDependencyOnOwner(i32 %115, i8* %116, i8* %117)
  %119 = call i32 @recordDependencyOnCurrentExtension(%struct.TYPE_12__* %0, i32 0)
  %120 = load i32, i32* @OperatorFamilyRelationId, align 4
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @InvokeObjectPostCreateHook(i32 %120, i8* %121, i32 0)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %124 = load i32, i32* @RowExclusiveLock, align 4
  %125 = call i32 @table_close(%struct.TYPE_11__* %123, i32 %124)
  %126 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %126)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_11__* @table_open(i32, i32) #2

declare dso_local i64 @SearchSysCacheExists3(i32, i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i8*) #2

declare dso_local i32 @CStringGetDatum(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*, i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i8* @GetNewOidWithIndex(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @namestrcpy(i32*, i8*) #2

declare dso_local i32 @NameGetDatum(i32*) #2

declare dso_local i8* @GetUserId(...) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #2

declare dso_local i32 @recordDependencyOnOwner(i32, i8*, i8*) #2

declare dso_local i32 @recordDependencyOnCurrentExtension(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @InvokeObjectPostCreateHook(i32, i8*, i32) #2

declare dso_local i32 @table_close(%struct.TYPE_11__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
