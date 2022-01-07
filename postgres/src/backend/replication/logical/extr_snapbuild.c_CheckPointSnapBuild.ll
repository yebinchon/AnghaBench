; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_snapbuild.c_CheckPointSnapBuild.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_snapbuild.c_CheckPointSnapBuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"pg_logical/snapshots\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"pg_logical/snapshots/%s\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"only regular files expected: %s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%X-%X.snap\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"could not parse file name \22%s\22\00", align 1
@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"removing snapbuild snapshot %s\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"could not remove file \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckPointSnapBuild() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat, align 4
  %11 = load i32, i32* @MAXPGPATH, align 4
  %12 = add nsw i32 %11, 21
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = call i64 (...) @GetRedoRecPtr()
  store i64 %16, i64* %2, align 8
  %17 = call i64 (...) @ReplicationSlotsComputeLogicalRestartLSN()
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* %1, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = load i64, i64* %2, align 8
  store i64 %22, i64* %1, align 8
  br label %23

23:                                               ; preds = %21, %0
  %24 = call i32* @AllocateDir(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %3, align 8
  br label %25

25:                                               ; preds = %92, %86, %64, %55, %41, %23
  %26 = load i32*, i32** %3, align 8
  %27 = call %struct.dirent* @ReadDir(i32* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.dirent* %27, %struct.dirent** %4, align 8
  %28 = icmp ne %struct.dirent* %27, null
  br i1 %28, label %29, label %93

29:                                               ; preds = %25
  %30 = load %struct.dirent*, %struct.dirent** %4, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.dirent*, %struct.dirent** %4, align 8
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29
  br label %25

42:                                               ; preds = %35
  %43 = trunc i64 %13 to i32
  %44 = load %struct.dirent*, %struct.dirent** %4, align 8
  %45 = getelementptr inbounds %struct.dirent, %struct.dirent* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @snprintf(i8* %15, i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = call i64 @lstat(i8* %15, %struct.stat* %10)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @S_ISREG(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @DEBUG1, align 4
  %57 = call i32 @elog(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  br label %25

58:                                               ; preds = %50, %42
  %59 = load %struct.dirent*, %struct.dirent** %4, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @sscanf(i8* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %7, i32* %8)
  %63 = icmp ne i32 %62, 2
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @LOG, align 4
  %66 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %15)
  %67 = call i32 @ereport(i32 %65, i32 %66)
  br label %25

68:                                               ; preds = %58
  %69 = load i32, i32* %7, align 4
  %70 = shl i32 %69, 32
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %70, %71
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %1, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %68
  %78 = load i64, i64* %1, align 8
  %79 = load i64, i64* @InvalidXLogRecPtr, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77, %68
  %82 = load i32, i32* @DEBUG1, align 4
  %83 = call i32 @elog(i32 %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %15)
  %84 = call i64 @unlink(i8* %15)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* @LOG, align 4
  %88 = call i32 (...) @errcode_for_file_access()
  %89 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %15)
  %90 = call i32 @ereport(i32 %87, i32 %89)
  br label %25

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %77
  br label %25

93:                                               ; preds = %25
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @FreeDir(i32* %94)
  %96 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %96)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetRedoRecPtr(...) #2

declare dso_local i64 @ReplicationSlotsComputeLogicalRestartLSN(...) #2

declare dso_local i32* @AllocateDir(i8*) #2

declare dso_local %struct.dirent* @ReadDir(i32*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32 @elog(i32, i8*, i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @FreeDir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
