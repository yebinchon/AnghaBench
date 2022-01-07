; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_create_tablespace_directories.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_create_tablespace_directories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"pg_tblspc/%u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@TABLESPACE_VERSION_DIRECTORY = common dso_local global i32 0, align 4
@pg_dir_create_mode = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"directory \22%s\22 does not exist\00", align 1
@InRecovery = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"Create this directory for the tablespace before restarting the server.\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"could not set permissions on directory \22%s\22: %m\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [69 x i8] c"some useless files may be left behind in old database directory \22%s\22\00", align 1
@EEXIST = common dso_local global i64 0, align 8
@ERRCODE_OBJECT_IN_USE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"directory \22%s\22 already in use as a tablespace\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"could not create directory \22%s\22: %m\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"could not create symbolic link \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @create_tablespace_directories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_tablespace_directories(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  %11 = call i8* (i8*, i8*, ...) @psprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @TABLESPACE_VERSION_DIRECTORY, align 4
  %14 = call i8* (i8*, i8*, ...) @psprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %12, i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @pg_dir_create_mode, align 4
  %17 = call i64 @chmod(i8* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %2
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @ENOENT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_UNDEFINED_FILE, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load i64, i64* @InRecovery, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 @errhint(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  br label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = call i32 @ereport(i32 %24, i32 %35)
  br label %43

37:                                               ; preds = %19
  %38 = load i32, i32* @ERROR, align 4
  %39 = call i32 (...) @errcode_for_file_access()
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = call i32 @ereport(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %34
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i64, i64* @InRecovery, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @stat(i8* %48, %struct.stat* %7)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @S_ISDIR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @rmtree(i8* %57, i32 1)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @WARNING, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  %64 = call i32 @ereport(i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %60, %56
  br label %66

66:                                               ; preds = %65, %51, %47
  br label %67

67:                                               ; preds = %66, %44
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @MakePGDirectory(i8* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @EEXIST, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i32, i32* @ERRCODE_OBJECT_IN_USE, align 4
  %78 = call i32 @errcode(i32 %77)
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %79)
  %81 = call i32 @ereport(i32 %76, i32 %80)
  br label %88

82:                                               ; preds = %71
  %83 = load i32, i32* @ERROR, align 4
  %84 = call i32 (...) @errcode_for_file_access()
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %85)
  %87 = call i32 @ereport(i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %82, %75
  br label %89

89:                                               ; preds = %88, %67
  %90 = load i64, i64* @InRecovery, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @remove_tablespace_symlink(i8* %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i8*, i8** %3, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = call i64 @symlink(i8* %96, i8* %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* @ERROR, align 4
  %102 = call i32 (...) @errcode_for_file_access()
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* %103)
  %105 = call i32 @ereport(i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %100, %95
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 @pfree(i8* %107)
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @pfree(i8* %109)
  ret void
}

declare dso_local i8* @psprintf(i8*, i8*, ...) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @rmtree(i8*, i32) #1

declare dso_local i64 @MakePGDirectory(i8*) #1

declare dso_local i32 @remove_tablespace_symlink(i8*) #1

declare dso_local i64 @symlink(i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
