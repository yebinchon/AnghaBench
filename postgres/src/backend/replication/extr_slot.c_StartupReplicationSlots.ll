; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_StartupReplicationSlots.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_StartupReplicationSlots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"starting up replication slots\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"pg_replslot\00", align 1
@MAXPGPATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"pg_replslot/%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"could not remove directory \22%s\22\00", align 1
@max_replication_slots = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StartupReplicationSlots() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @DEBUG1, align 4
  %8 = call i32 @elog(i32 %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = call i32* @AllocateDir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %9, i32** %1, align 8
  br label %10

10:                                               ; preds = %69, %66, %0
  %11 = load i32*, i32** %1, align 8
  %12 = call %struct.dirent* @ReadDir(i32* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dirent* %12, %struct.dirent** %2, align 8
  %13 = icmp ne %struct.dirent* %12, null
  br i1 %13, label %14, label %70

14:                                               ; preds = %10
  %15 = load i32, i32* @MAXPGPATH, align 4
  %16 = add nsw i32 %15, 12
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %20 = load %struct.dirent*, %struct.dirent** %2, align 8
  %21 = getelementptr inbounds %struct.dirent, %struct.dirent* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %14
  %26 = load %struct.dirent*, %struct.dirent** %2, align 8
  %27 = getelementptr inbounds %struct.dirent, %struct.dirent* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %14
  store i32 2, i32* %6, align 4
  br label %66

32:                                               ; preds = %25
  %33 = trunc i64 %17 to i32
  %34 = load %struct.dirent*, %struct.dirent** %2, align 8
  %35 = getelementptr inbounds %struct.dirent, %struct.dirent* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @snprintf(i8* %19, i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %36)
  %38 = call i64 @lstat(i8* %19, %struct.stat* %3)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @S_ISDIR(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 2, i32* %6, align 4
  br label %66

46:                                               ; preds = %40, %32
  %47 = load %struct.dirent*, %struct.dirent** %2, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @pg_str_endswith(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = call i32 @rmtree(i8* %19, i32 1)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @WARNING, align 4
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %19)
  %58 = call i32 @ereport(i32 %56, i32 %57)
  store i32 2, i32* %6, align 4
  br label %66

59:                                               ; preds = %52
  %60 = call i32 @fsync_fname(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 2, i32* %6, align 4
  br label %66

61:                                               ; preds = %46
  %62 = load %struct.dirent*, %struct.dirent** %2, align 8
  %63 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @RestoreSlotFromDisk(i8* %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %61, %59, %55, %45, %31
  %67 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %6, align 4
  switch i32 %68, label %80 [
    i32 0, label %69
    i32 2, label %10
  ]

69:                                               ; preds = %66
  br label %10

70:                                               ; preds = %10
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @FreeDir(i32* %71)
  %73 = load i64, i64* @max_replication_slots, align 8
  %74 = icmp sle i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %79

76:                                               ; preds = %70
  %77 = call i32 @ReplicationSlotsComputeRequiredXmin(i32 0)
  %78 = call i32 (...) @ReplicationSlotsComputeRequiredLSN()
  br label %79

79:                                               ; preds = %76, %75
  ret void

80:                                               ; preds = %66
  unreachable
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32* @AllocateDir(i8*) #1

declare dso_local %struct.dirent* @ReadDir(i32*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @pg_str_endswith(i8*, i8*) #1

declare dso_local i32 @rmtree(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @fsync_fname(i8*, i32) #1

declare dso_local i32 @RestoreSlotFromDisk(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeDir(i32*) #1

declare dso_local i32 @ReplicationSlotsComputeRequiredXmin(i32) #1

declare dso_local i32 @ReplicationSlotsComputeRequiredLSN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
