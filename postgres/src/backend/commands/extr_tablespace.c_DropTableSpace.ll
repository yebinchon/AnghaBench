; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_DropTableSpace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_DropTableSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"tablespaces are not supported on this platform\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@ACLCHECK_NO_PRIV = common dso_local global i32 0, align 4
@Anum_pg_tablespace_spcname = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@CHECKPOINT_FORCE = common dso_local global i32 0, align 4
@CHECKPOINT_IMMEDIATE = common dso_local global i32 0, align 4
@CHECKPOINT_WAIT = common dso_local global i32 0, align 4
@DEFAULTTABLESPACE_OID = common dso_local global i64 0, align 8
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@GLOBALTABLESPACE_OID = common dso_local global i64 0, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@OBJECT_TABLESPACE = common dso_local global i32 0, align 4
@RM_TBLSPC_ID = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@TableSpaceRelationId = common dso_local global i32 0, align 4
@TablespaceCreateLock = common dso_local global i32 0, align 4
@XLOG_TBLSPC_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DropTableSpace(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %3 = load i32, i32* @ERROR, align 4
  %4 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %5 = call i32 @errcode(i32 %4)
  %6 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @ereport(i32 %3, i32 %6)
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
