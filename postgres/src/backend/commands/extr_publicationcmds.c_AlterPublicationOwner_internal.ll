; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_publicationcmds.c_AlterPublicationOwner_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_publicationcmds.c_AlterPublicationOwner_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }

@ACLCHECK_NOT_OWNER = common dso_local global i64 0, align 8
@OBJECT_PUBLICATION = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_DATABASE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"permission denied to change owner of publication \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"The owner of a FOR ALL TABLES publication must be a superuser.\00", align 1
@PublicationRelationId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*, i32)* @AlterPublicationOwner_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AlterPublicationOwner_internal(i32 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = call i64 @GETSTRUCT(%struct.TYPE_6__* %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %94

18:                                               ; preds = %3
  %19 = call i32 (...) @superuser()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %74, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (...) @GetUserId()
  %26 = call i32 @pg_publication_ownercheck(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = load i64, i64* @ACLCHECK_NOT_OWNER, align 8
  %30 = load i32, i32* @OBJECT_PUBLICATION, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @NameStr(i32 %33)
  %35 = call i32 @aclcheck_error(i64 %29, i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %28, %21
  %37 = call i32 (...) @GetUserId()
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @check_is_member_of_role(i32 %37, i32 %38)
  %40 = load i32, i32* @MyDatabaseId, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ACL_CREATE, align 4
  %43 = call i64 @pg_database_aclcheck(i32 %40, i32 %41, i32 %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @ACLCHECK_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* @OBJECT_DATABASE, align 4
  %50 = load i32, i32* @MyDatabaseId, align 4
  %51 = call i32 @get_database_name(i32 %50)
  %52 = call i32 @aclcheck_error(i64 %48, i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %47, %36
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @superuser_arg(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @NameStr(i32 %68)
  %70 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = call i32 @errhint(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %72 = call i32 @ereport(i32 %63, i32 %71)
  br label %73

73:                                               ; preds = %62, %58, %53
  br label %74

74:                                               ; preds = %73, %18
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = call i32 @CatalogTupleUpdate(i32 %78, i32* %80, %struct.TYPE_6__* %81)
  %83 = load i32, i32* @PublicationRelationId, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @changeDependencyOnOwner(i32 %83, i32 %86, i32 %87)
  %89 = load i32, i32* @PublicationRelationId, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @InvokeObjectPostAlterHook(i32 %89, i32 %92, i32 0)
  br label %94

94:                                               ; preds = %74, %17
  ret void
}

declare dso_local i64 @GETSTRUCT(%struct.TYPE_6__*) #1

declare dso_local i32 @superuser(...) #1

declare dso_local i32 @pg_publication_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @check_is_member_of_role(i32, i32) #1

declare dso_local i64 @pg_database_aclcheck(i32, i32, i32) #1

declare dso_local i32 @get_database_name(i32) #1

declare dso_local i32 @superuser_arg(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @changeDependencyOnOwner(i32, i32, i32) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
