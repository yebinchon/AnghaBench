; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execReplication.c_CheckCmdReplicaIdentity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execReplication.c_CheckCmdReplicaIdentity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64 }

@CMD_UPDATE = common dso_local global i64 0, align 8
@CMD_DELETE = common dso_local global i64 0, align 8
@REPLICA_IDENTITY_FULL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"cannot update table \22%s\22 because it does not have a replica identity and publishes updates\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"To enable updating the table, set REPLICA IDENTITY using ALTER TABLE.\00", align 1
@.str.2 = private unnamed_addr constant [96 x i8] c"cannot delete from table \22%s\22 because it does not have a replica identity and publishes deletes\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"To enable deleting from the table, set REPLICA IDENTITY using ALTER TABLE.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckCmdReplicaIdentity(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @CMD_UPDATE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @CMD_DELETE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %67

14:                                               ; preds = %9, %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REPLICA_IDENTITY_FULL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = call i32 @RelationGetReplicaIndex(%struct.TYPE_10__* %23)
  %25 = call i64 @OidIsValid(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %14
  br label %67

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = call %struct.TYPE_11__* @GetRelationPublicationActions(%struct.TYPE_10__* %29)
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @CMD_UPDATE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %43)
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = call i32 @errhint(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @ereport(i32 %40, i32 %46)
  br label %67

48:                                               ; preds = %34, %28
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @CMD_DELETE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* @ERROR, align 4
  %59 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %60 = call i32 @errcode(i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %61)
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = call i32 @errhint(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 @ereport(i32 %58, i32 %64)
  br label %66

66:                                               ; preds = %57, %52, %48
  br label %67

67:                                               ; preds = %13, %27, %66, %39
  ret void
}

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @RelationGetReplicaIndex(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @GetRelationPublicationActions(%struct.TYPE_10__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_10__*) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
