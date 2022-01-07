; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_type.c_RenameTypeInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_type.c_RenameTypeInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32 }

@TypeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@TYPENAMENSP = common dso_local global i32 0, align 4
@Anum_pg_type_oid = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"type \22%s\22 already exists\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RenameTypeInternal(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* @TypeRelationId, align 4
  %14 = load i32, i32* @RowExclusiveLock, align 4
  %15 = call i32 @table_open(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @TYPEOID, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @ObjectIdGetDatum(i64 %17)
  %19 = call %struct.TYPE_8__* @SearchSysCacheCopy1(i32 %16, i32 %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %8, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = call i32 @HeapTupleIsValid(%struct.TYPE_8__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %23, %3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = call i64 @GETSTRUCT(%struct.TYPE_8__* %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  %41 = load i32, i32* @TYPENAMENSP, align 4
  %42 = load i32, i32* @Anum_pg_type_oid, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @CStringGetDatum(i8* %43)
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @ObjectIdGetDatum(i64 %45)
  %47 = call i64 @GetSysCacheOid2(i32 %41, i32 %42, i32 %44, i32 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @OidIsValid(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %27
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @get_typisdefined(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i64, i64* %11, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @moveArrayTypeName(i64 %56, i8* %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %69

62:                                               ; preds = %55, %51
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = call i32 @ereport(i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %62, %61
  br label %70

70:                                               ; preds = %69, %27
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @namestrcpy(i32* %72, i8* %73)
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = call i32 @CatalogTupleUpdate(i32 %75, i32* %77, %struct.TYPE_8__* %78)
  %80 = load i32, i32* @TypeRelationId, align 4
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @InvokeObjectPostAlterHook(i32 %80, i64 %81, i32 0)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %84 = call i32 @heap_freetuple(%struct.TYPE_8__* %83)
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @RowExclusiveLock, align 4
  %87 = call i32 @table_close(i32 %85, i32 %86)
  %88 = load i64, i64* %10, align 8
  %89 = call i64 @OidIsValid(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %70
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i8*, i8** %5, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i8* @makeArrayTypeName(i8* %96, i64 %97)
  store i8* %98, i8** %12, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i64, i64* %6, align 8
  call void @RenameTypeInternal(i64 %99, i8* %100, i64 %101)
  %102 = load i8*, i8** %12, align 8
  %103 = call i32 @pfree(i8* %102)
  br label %104

104:                                              ; preds = %95, %91, %70
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_8__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_8__*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_8__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @GetSysCacheOid2(i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @get_typisdefined(i64) #1

declare dso_local i64 @moveArrayTypeName(i64, i8*, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i64, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_8__*) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i8* @makeArrayTypeName(i8*, i64) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
