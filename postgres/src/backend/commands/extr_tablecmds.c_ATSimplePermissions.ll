; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATSimplePermissions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATSimplePermissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@ATT_TABLE = common dso_local global i32 0, align 4
@ATT_VIEW = common dso_local global i32 0, align 4
@ATT_MATVIEW = common dso_local global i32 0, align 4
@ATT_INDEX = common dso_local global i32 0, align 4
@ATT_PARTITIONED_INDEX = common dso_local global i32 0, align 4
@ATT_COMPOSITE_TYPE = common dso_local global i32 0, align 4
@ATT_FOREIGN_TABLE = common dso_local global i32 0, align 4
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@allowSystemTableMods = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"permission denied: \22%s\22 is a system catalog\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @ATSimplePermissions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATSimplePermissions(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %25 [
    i32 129, label %11
    i32 130, label %11
    i32 128, label %13
    i32 132, label %15
    i32 133, label %17
    i32 131, label %19
    i32 135, label %21
    i32 134, label %23
  ]

11:                                               ; preds = %2, %2
  %12 = load i32, i32* @ATT_TABLE, align 4
  store i32 %12, i32* %5, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load i32, i32* @ATT_VIEW, align 4
  store i32 %14, i32* %5, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load i32, i32* @ATT_MATVIEW, align 4
  store i32 %16, i32* %5, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load i32, i32* @ATT_INDEX, align 4
  store i32 %18, i32* %5, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @ATT_PARTITIONED_INDEX, align 4
  store i32 %20, i32* %5, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @ATT_COMPOSITE_TYPE, align 4
  store i32 %22, i32* %5, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  store i32 %24, i32* %5, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %23, %21, %19, %17, %15, %13, %11
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ATWrongRelkindError(%struct.TYPE_9__* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = call i32 @RelationGetRelid(%struct.TYPE_9__* %36)
  %38 = call i32 (...) @GetUserId()
  %39 = call i32 @pg_class_ownercheck(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @get_relkind_objtype(i32 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = call i32 @RelationGetRelationName(%struct.TYPE_9__* %49)
  %51 = call i32 @aclcheck_error(i32 %42, i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %41, %35
  %53 = load i32, i32* @allowSystemTableMods, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = call i64 @IsSystemRelation(%struct.TYPE_9__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = call i32 @RelationGetRelationName(%struct.TYPE_9__* %63)
  %65 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = call i32 @ereport(i32 %60, i32 %65)
  br label %67

67:                                               ; preds = %59, %55, %52
  ret void
}

declare dso_local i32 @ATWrongRelkindError(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pg_class_ownercheck(i32, i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_9__*) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i32 @get_relkind_objtype(i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_9__*) #1

declare dso_local i64 @IsSystemRelation(%struct.TYPE_9__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
