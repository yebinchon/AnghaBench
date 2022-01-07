; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_AlterDatabaseSet.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_AlterDatabaseSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@DatabaseRelationId = common dso_local global i32 0, align 4
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_DATABASE = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterDatabaseSet(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @get_database_oid(i32 %6, i32 0)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @DatabaseRelationId, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @shdepLockAndCheckObject(i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (...) @GetUserId()
  %13 = call i32 @pg_database_ownercheck(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %17 = load i32, i32* @OBJECT_DATABASE, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @aclcheck_error(i32 %16, i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @InvalidOid, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @AlterSetting(i32 %23, i32 %24, i32 %27)
  %29 = load i32, i32* @DatabaseRelationId, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @AccessShareLock, align 4
  %32 = call i32 @UnlockSharedObject(i32 %29, i32 %30, i32 0, i32 %31)
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @get_database_oid(i32, i32) #1

declare dso_local i32 @shdepLockAndCheckObject(i32, i32) #1

declare dso_local i32 @pg_database_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i32 @AlterSetting(i32, i32, i32) #1

declare dso_local i32 @UnlockSharedObject(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
