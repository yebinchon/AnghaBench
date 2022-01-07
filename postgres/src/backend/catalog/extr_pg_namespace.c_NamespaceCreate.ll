; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_namespace.c_NamespaceCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_namespace.c_NamespaceCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@Natts_pg_namespace = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no namespace name supplied\00", align 1
@NAMESPACENAME = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_SCHEMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"schema \22%s\22 already exists\00", align 1
@OBJECT_SCHEMA = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@NamespaceRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@NamespaceOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_namespace_oid = common dso_local global i32 0, align 4
@Anum_pg_namespace_nspname = common dso_local global i32 0, align 4
@Anum_pg_namespace_nspowner = common dso_local global i32 0, align 4
@Anum_pg_namespace_nspacl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NamespaceCreate(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* @Natts_pg_namespace, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @Natts_pg_namespace, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ERROR, align 4
  %29 = call i32 @elog(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i32, i32* @NAMESPACENAME, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @PointerGetDatum(i8* %32)
  %34 = call i64 @SearchSysCacheExists1(i32 %31, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* @ERROR, align 4
  %38 = load i32, i32* @ERRCODE_DUPLICATE_SCHEMA, align 4
  %39 = call i32 @errcode(i32 %38)
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = call i32 @ereport(i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @OBJECT_SCHEMA, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @InvalidOid, align 4
  %50 = call i8* @get_user_default_acl(i32 %47, i32 %48, i32 %49)
  store i8* %50, i8** %17, align 8
  br label %52

51:                                               ; preds = %43
  store i8* null, i8** %17, align 8
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* @NamespaceRelationId, align 4
  %54 = load i32, i32* @RowExclusiveLock, align 4
  %55 = call %struct.TYPE_8__* @table_open(i32 %53, i32 %54)
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %7, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %59

59:                                               ; preds = %70, %52
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @Natts_pg_namespace, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %21, i64 %65
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %24, i64 %68
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  br label %59

73:                                               ; preds = %59
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = load i32, i32* @NamespaceOidIndexId, align 4
  %76 = load i32, i32* @Anum_pg_namespace_oid, align 4
  %77 = call i32 @GetNewOidWithIndex(%struct.TYPE_8__* %74, i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i64 @ObjectIdGetDatum(i32 %78)
  %80 = load i32, i32* @Anum_pg_namespace_oid, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %24, i64 %82
  store i64 %79, i64* %83, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @namestrcpy(i32* %13, i8* %84)
  %86 = call i64 @NameGetDatum(i32* %13)
  %87 = load i32, i32* @Anum_pg_namespace_nspname, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %24, i64 %89
  store i64 %86, i64* %90, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @ObjectIdGetDatum(i32 %91)
  %93 = load i32, i32* @Anum_pg_namespace_nspowner, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %24, i64 %95
  store i64 %92, i64* %96, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %73
  %100 = load i8*, i8** %17, align 8
  %101 = call i64 @PointerGetDatum(i8* %100)
  %102 = load i32, i32* @Anum_pg_namespace_nspacl, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %24, i64 %104
  store i64 %101, i64* %105, align 8
  br label %111

106:                                              ; preds = %73
  %107 = load i32, i32* @Anum_pg_namespace_nspacl, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %21, i64 %109
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %99
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @heap_form_tuple(i32 %112, i64* %24, i32* %21)
  store i32 %113, i32* %8, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @CatalogTupleInsert(%struct.TYPE_8__* %114, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @OidIsValid(i32 %117)
  %119 = call i32 @Assert(i32 %118)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = load i32, i32* @RowExclusiveLock, align 4
  %122 = call i32 @table_close(%struct.TYPE_8__* %120, i32 %121)
  %123 = load i32, i32* @NamespaceRelationId, align 4
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %9, align 4
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i32 %125, i32* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* @NamespaceRelationId, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @recordDependencyOnOwner(i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* @NamespaceRelationId, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i8*, i8** %17, align 8
  %136 = call i32 @recordDependencyOnNewAcl(i32 %132, i32 %133, i32 0, i32 %134, i8* %135)
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %111
  %140 = call i32 @recordDependencyOnCurrentExtension(%struct.TYPE_9__* %15, i32 0)
  br label %141

141:                                              ; preds = %139, %111
  %142 = load i32, i32* @NamespaceRelationId, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @InvokeObjectPostCreateHook(i32 %142, i32 %143, i32 0)
  %145 = load i32, i32* %9, align 4
  %146 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %146)
  ret i32 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @elog(i32, i8*) #2

declare dso_local i64 @SearchSysCacheExists1(i32, i64) #2

declare dso_local i64 @PointerGetDatum(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i8* @get_user_default_acl(i32, i32, i32) #2

declare dso_local %struct.TYPE_8__* @table_open(i32, i32) #2

declare dso_local i32 @GetNewOidWithIndex(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i64 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @namestrcpy(i32*, i8*) #2

declare dso_local i64 @NameGetDatum(i32*) #2

declare dso_local i32 @heap_form_tuple(i32, i64*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @OidIsValid(i32) #2

declare dso_local i32 @table_close(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @recordDependencyOnOwner(i32, i32, i32) #2

declare dso_local i32 @recordDependencyOnNewAcl(i32, i32, i32, i32, i8*) #2

declare dso_local i32 @recordDependencyOnCurrentExtension(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @InvokeObjectPostCreateHook(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
