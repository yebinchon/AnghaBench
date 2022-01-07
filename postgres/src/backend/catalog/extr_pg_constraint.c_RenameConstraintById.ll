; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_RenameConstraintById.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_RenameConstraintById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@ConstraintRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@CONSTROID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cache lookup failed for constraint %u\00", align 1
@CONSTRAINT_RELATION = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"constraint \22%s\22 for relation \22%s\22 already exists\00", align 1
@CONSTRAINT_DOMAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"constraint \22%s\22 for domain %s already exists\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RenameConstraintById(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @ConstraintRelationId, align 4
  %9 = load i32, i32* @RowExclusiveLock, align 4
  %10 = call i32 @table_open(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @CONSTROID, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  %14 = call %struct.TYPE_8__* @SearchSysCacheCopy1(i32 %11, i32 %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = call i32 @HeapTupleIsValid(%struct.TYPE_8__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = call i64 @GETSTRUCT(%struct.TYPE_8__* %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %7, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @OidIsValid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %22
  %32 = load i32, i32* @CONSTRAINT_RELATION, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @ConstraintNameIsUsed(i32 %32, i32 %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %31
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @get_rel_name(i32 %46)
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %47)
  %49 = call i32 @ereport(i32 %40, i32 %48)
  br label %50

50:                                               ; preds = %39, %31, %22
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @OidIsValid(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load i32, i32* @CONSTRAINT_DOMAIN, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = call i64 @ConstraintNameIsUsed(i32 %57, i32 %60, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = load i32, i32* @ERROR, align 4
  %66 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %67 = call i32 @errcode(i32 %66)
  %68 = load i8*, i8** %4, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @format_type_be(i32 %71)
  %73 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %68, i32 %72)
  %74 = call i32 @ereport(i32 %65, i32 %73)
  br label %75

75:                                               ; preds = %64, %56, %50
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @namestrcpy(i32* %77, i8* %78)
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = call i32 @CatalogTupleUpdate(i32 %80, i32* %82, %struct.TYPE_8__* %83)
  %85 = load i32, i32* @ConstraintRelationId, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @InvokeObjectPostAlterHook(i32 %85, i32 %86, i32 0)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = call i32 @heap_freetuple(%struct.TYPE_8__* %88)
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @RowExclusiveLock, align 4
  %92 = call i32 @table_close(i32 %90, i32 %91)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_8__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_8__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_8__*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i64 @ConstraintNameIsUsed(i32, i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_8__*) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
