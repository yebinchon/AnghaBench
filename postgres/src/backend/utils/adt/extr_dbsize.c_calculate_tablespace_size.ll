; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_dbsize.c_calculate_tablespace_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_dbsize.c_calculate_tablespace_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i64, i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@MyDatabaseTableSpace = common dso_local global i64 0, align 8
@DEFAULT_ROLE_READ_ALL_STATS = common dso_local global i32 0, align 4
@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_TABLESPACE = common dso_local global i32 0, align 4
@DEFAULTTABLESPACE_OID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@GLOBALTABLESPACE_OID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"pg_tblspc/%u/%s\00", align 1
@TABLESPACE_VERSION_DIRECTORY = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @calculate_tablespace_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_tablespace_size(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 8
  store i64 %0, i64* %3, align 8
  %13 = load i32, i32* @MAXPGPATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load i32, i32* @MAXPGPATH, align 4
  %18 = mul nsw i32 %17, 2
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @MyDatabaseTableSpace, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %1
  %25 = call i32 (...) @GetUserId()
  %26 = load i32, i32* @DEFAULT_ROLE_READ_ALL_STATS, align 4
  %27 = call i32 @is_member_of_role(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8
  %31 = call i32 (...) @GetUserId()
  %32 = load i32, i32* @ACL_CREATE, align 4
  %33 = call i64 @pg_tablespace_aclcheck(i64 %30, i32 %31, i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @ACLCHECK_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* @OBJECT_TABLESPACE, align 4
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @get_tablespace_name(i64 %40)
  %42 = call i32 @aclcheck_error(i64 %38, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %29
  br label %44

44:                                               ; preds = %43, %24, %1
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @DEFAULTTABLESPACE_OID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @MAXPGPATH, align 4
  %50 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %16, i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %64

51:                                               ; preds = %44
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @GLOBALTABLESPACE_OID, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @MAXPGPATH, align 4
  %57 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %16, i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %63

58:                                               ; preds = %51
  %59 = load i32, i32* @MAXPGPATH, align 4
  %60 = load i64, i64* %3, align 8
  %61 = load i8*, i8** @TABLESPACE_VERSION_DIRECTORY, align 8
  %62 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %16, i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %60, i8* %61)
  br label %63

63:                                               ; preds = %58, %55
  br label %64

64:                                               ; preds = %63, %48
  %65 = call i32* @AllocateDir(i8* %16)
  store i32* %65, i32** %8, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %129

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %118, %100, %87, %69
  %71 = load i32*, i32** %8, align 8
  %72 = call %struct.dirent* @ReadDir(i32* %71, i8* %16)
  store %struct.dirent* %72, %struct.dirent** %9, align 8
  %73 = icmp ne %struct.dirent* %72, null
  br i1 %73, label %74, label %125

74:                                               ; preds = %70
  %75 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %76 = load %struct.dirent*, %struct.dirent** %9, align 8
  %77 = getelementptr inbounds %struct.dirent, %struct.dirent* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = load %struct.dirent*, %struct.dirent** %9, align 8
  %83 = getelementptr inbounds %struct.dirent, %struct.dirent* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81, %74
  br label %70

88:                                               ; preds = %81
  %89 = trunc i64 %19 to i32
  %90 = load %struct.dirent*, %struct.dirent** %9, align 8
  %91 = getelementptr inbounds %struct.dirent, %struct.dirent* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %20, i32 %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %16, i8* %92)
  %94 = call i64 @stat(i8* %20, %struct.stat* %12)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = load i64, i64* @errno, align 8
  %98 = load i64, i64* @ENOENT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %70

101:                                              ; preds = %96
  %102 = load i32, i32* @ERROR, align 4
  %103 = call i32 (...) @errcode_for_file_access()
  %104 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %20)
  %105 = call i32 @ereport(i32 %102, i32 %104)
  br label %106

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106, %88
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @S_ISDIR(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = call i64 @db_dir_size(i8* %20)
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %112, %107
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %7, align 4
  br label %70

125:                                              ; preds = %70
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @FreeDir(i32* %126)
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %129

129:                                              ; preds = %125, %68
  %130 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @is_member_of_role(i32, i32) #2

declare dso_local i32 @GetUserId(...) #2

declare dso_local i64 @pg_tablespace_aclcheck(i64, i32, i32) #2

declare dso_local i32 @aclcheck_error(i64, i32, i32) #2

declare dso_local i32 @get_tablespace_name(i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32* @AllocateDir(i8*) #2

declare dso_local %struct.dirent* @ReadDir(i32*, i8*) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @db_dir_size(i8*) #2

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
