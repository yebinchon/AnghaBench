; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_SyncDataDirectory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_SyncDataDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@enableFsync = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pg_wal\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@datadir_fsync_fname = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"pg_tblspc\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@pre_sync_fname = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SyncDataDirectory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 4
  %3 = load i32, i32* @enableFsync, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %35

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  %7 = call i64 @lstat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.stat* %2)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i32, i32* @LOG, align 4
  %11 = call i32 (...) @errcode_for_file_access()
  %12 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @ereport(i32 %10, i32 %12)
  br label %21

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISLNK(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* %1, align 4
  br label %20

20:                                               ; preds = %19, %14
  br label %21

21:                                               ; preds = %20, %9
  %22 = load i32, i32* @datadir_fsync_fname, align 4
  %23 = load i32, i32* @LOG, align 4
  %24 = call i32 @walkdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 0, i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @datadir_fsync_fname, align 4
  %29 = load i32, i32* @LOG, align 4
  %30 = call i32 @walkdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %28, i32 0, i32 %29)
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32, i32* @datadir_fsync_fname, align 4
  %33 = load i32, i32* @LOG, align 4
  %34 = call i32 @walkdir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 1, i32 %33)
  br label %35

35:                                               ; preds = %31, %5
  ret void
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @walkdir(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
