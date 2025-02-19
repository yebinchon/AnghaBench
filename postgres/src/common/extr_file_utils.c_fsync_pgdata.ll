; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_file_utils.c_fsync_pgdata.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_file_utils.c_fsync_pgdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@MINIMUM_VERSION_FOR_PG_WAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pg_xlog\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pg_wal\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s/pg_tblspc\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@fsync_fname = common dso_local global i32 0, align 4
@pre_sync_fname = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsync_pgdata(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @MAXPGPATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @MAXPGPATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %17 = load i32, i32* @MAXPGPATH, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MINIMUM_VERSION_FOR_PG_WAL, align 4
  %21 = icmp slt i32 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %13, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %23)
  %25 = load i32, i32* @MAXPGPATH, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %16, i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  store i32 0, i32* %5, align 4
  %28 = call i64 @lstat(i8* %13, %struct.stat* %9)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %13)
  br label %39

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @S_ISLNK(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %32
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* @fsync_fname, align 4
  %42 = call i32 @walkdir(i8* %40, i32 %41, i32 0)
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @fsync_fname, align 4
  %47 = call i32 @walkdir(i8* %13, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* @fsync_fname, align 4
  %50 = call i32 @walkdir(i8* %16, i32 %49, i32 1)
  %51 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @pg_log_error(i8*, i8*) #2

declare dso_local i64 @S_ISLNK(i32) #2

declare dso_local i32 @walkdir(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
