; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_checkDataDir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_checkDataDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }

@DataDir = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"data directory \22%s\22 does not exist\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"could not read permissions of directory \22%s\22: %m\00", align 1
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"specified data directory \22%s\22 is not a directory\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"data directory \22%s\22 has wrong ownership\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"The server must be started by the user that owns the data directory.\00", align 1
@PG_MODE_MASK_GROUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"data directory \22%s\22 has invalid permissions\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Permissions should be u=rwx (0700) or u=rwx,g=rx (0750).\00", align 1
@pg_mode_mask = common dso_local global i32 0, align 4
@pg_dir_create_mode = common dso_local global i32 0, align 4
@data_directory_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkDataDir() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = load i32, i32* @DataDir, align 4
  %3 = call i32 @Assert(i32 %2)
  %4 = load i32, i32* @DataDir, align 4
  %5 = call i64 @stat(i32 %4, %struct.stat* %1)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %0
  %8 = load i64, i64* @errno, align 8
  %9 = load i64, i64* @ENOENT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* @FATAL, align 4
  %13 = call i32 (...) @errcode_for_file_access()
  %14 = load i32, i32* @DataDir, align 4
  %15 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 @ereport(i32 %12, i32 %15)
  br label %23

17:                                               ; preds = %7
  %18 = load i32, i32* @FATAL, align 4
  %19 = call i32 (...) @errcode_for_file_access()
  %20 = load i32, i32* @DataDir, align 4
  %21 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = call i32 @ereport(i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %17, %11
  br label %24

24:                                               ; preds = %23, %0
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @S_ISDIR(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @FATAL, align 4
  %31 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load i32, i32* @DataDir, align 4
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = call i32 @ereport(i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %29, %24
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i64 (...) @geteuid()
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, i32* @FATAL, align 4
  %43 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = load i32, i32* @DataDir, align 4
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = call i32 @errhint(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %41, %36
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PG_MODE_MASK_GROUP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, i32* @FATAL, align 4
  %57 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = load i32, i32* @DataDir, align 4
  %60 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = call i32 @errdetail(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %62 = call i32 @ereport(i32 %56, i32 %61)
  br label %63

63:                                               ; preds = %55, %49
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @SetDataDirectoryCreatePerm(i32 %65)
  %67 = load i32, i32* @pg_mode_mask, align 4
  %68 = call i32 @umask(i32 %67)
  %69 = load i32, i32* @pg_dir_create_mode, align 4
  store i32 %69, i32* @data_directory_mode, align 4
  %70 = load i32, i32* @DataDir, align 4
  %71 = call i32 @ValidatePgVersion(i32 %70)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @SetDataDirectoryCreatePerm(i32) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @ValidatePgVersion(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
