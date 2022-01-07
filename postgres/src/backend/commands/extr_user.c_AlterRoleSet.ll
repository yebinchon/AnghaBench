; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_user.c_AlterRoleSet.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_user.c_AlterRoleSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@InvalidOid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Cannot alter reserved roles.\00", align 1
@AuthIdRelationId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"must be superuser to alter superusers\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"permission denied\00", align 1
@DatabaseRelationId = common dso_local global i32 0, align 4
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_DATABASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"must be superuser to alter settings globally\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AlterRoleSet(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load i64, i64* @InvalidOid, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* @InvalidOid, align 8
  store i64 %8, i64* %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @check_rolespec_name(i64 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @get_rolespec_tuple(i64 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @GETSTRUCT(i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %4, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load i32, i32* @AuthIdRelationId, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @shdepLockAndCheckObject(i32 %28, i64 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %13
  %36 = call i32 (...) @superuser()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @ereport(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %35
  br label %59

45:                                               ; preds = %13
  %46 = call i32 (...) @have_createrole_privilege()
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %6, align 8
  %50 = call i64 (...) @GetUserId()
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @ereport(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %48, %45
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @ReleaseSysCache(i32 %60)
  br label %62

62:                                               ; preds = %59, %1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %93

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @get_database_oid(i32* %70, i32 0)
  store i64 %71, i64* %5, align 8
  %72 = load i32, i32* @DatabaseRelationId, align 4
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @shdepLockAndCheckObject(i32 %72, i64 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %67
  %80 = load i64, i64* %5, align 8
  %81 = call i64 (...) @GetUserId()
  %82 = call i32 @pg_database_ownercheck(i64 %80, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %86 = load i32, i32* @OBJECT_DATABASE, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @aclcheck_error(i32 %85, i32 %86, i32* %89)
  br label %91

91:                                               ; preds = %84, %79
  br label %92

92:                                               ; preds = %91, %67
  br label %93

93:                                               ; preds = %92, %62
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %113, label %103

103:                                              ; preds = %98
  %104 = call i32 (...) @superuser()
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @ERROR, align 4
  %108 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %109 = call i32 @errcode(i32 %108)
  %110 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %111 = call i32 @ereport(i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %106, %103
  br label %113

113:                                              ; preds = %112, %98, %93
  %114 = load i64, i64* %5, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @AlterSetting(i64 %114, i64 %115, i32 %118)
  %120 = load i64, i64* %6, align 8
  ret i64 %120
}

declare dso_local i32 @check_rolespec_name(i64, i8*) #1

declare dso_local i32 @get_rolespec_tuple(i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @shdepLockAndCheckObject(i32, i64) #1

declare dso_local i32 @superuser(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @have_createrole_privilege(...) #1

declare dso_local i64 @GetUserId(...) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i64 @get_database_oid(i32*, i32) #1

declare dso_local i32 @pg_database_ownercheck(i64, i64) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32*) #1

declare dso_local i32 @AlterSetting(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
