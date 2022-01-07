; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_publicationcmds.c_AlterPublication.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_publicationcmds.c_AlterPublication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@PublicationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@PUBLICATIONNAME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"publication \22%s\22 does not exist\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_PUBLICATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AlterPublication(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load i32, i32* @PublicationRelationId, align 4
  %7 = load i32, i32* @RowExclusiveLock, align 4
  %8 = call i32 @table_open(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @PUBLICATIONNAME, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @CStringGetDatum(i32 %12)
  %14 = call i32 @SearchSysCacheCopy1(i32 %9, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @HeapTupleIsValid(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @ereport(i32 %19, i32 %25)
  br label %27

27:                                               ; preds = %18, %1
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @GETSTRUCT(i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %5, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (...) @GetUserId()
  %35 = call i32 @pg_publication_ownercheck(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %39 = load i32, i32* @OBJECT_PUBLICATION, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @aclcheck_error(i32 %38, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %37, %27
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @AlterPublicationOptions(%struct.TYPE_7__* %50, i32 %51, i32 %52)
  br label %59

54:                                               ; preds = %44
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @AlterPublicationTables(%struct.TYPE_7__* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @heap_freetuple(i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @RowExclusiveLock, align 4
  %64 = call i32 @table_close(i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @pg_publication_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i32 @AlterPublicationOptions(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @AlterPublicationTables(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @heap_freetuple(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
