; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_RemovePgTempFilesInDir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_RemovePgTempFilesInDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@PG_TEMP_FILE_PREFIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"could not remove directory \22%s\22: %m\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"could not remove file \22%s\22: %m\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"unexpected file found in temporary-files directory: \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemovePgTempFilesInDir(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @MAXPGPATH, align 4
  %14 = mul nsw i32 %13, 2
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32* @AllocateDir(i8* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @ENOENT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 1, i32* %11, align 4
  br label %108

30:                                               ; preds = %26, %22, %3
  br label %31

31:                                               ; preds = %104, %71, %49, %30
  %32 = load i32*, i32** %7, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* @LOG, align 4
  %35 = call %struct.dirent* @ReadDirExtended(i32* %32, i8* %33, i32 %34)
  store %struct.dirent* %35, %struct.dirent** %8, align 8
  %36 = icmp ne %struct.dirent* %35, null
  br i1 %36, label %37, label %105

37:                                               ; preds = %31
  %38 = load %struct.dirent*, %struct.dirent** %8, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.dirent*, %struct.dirent** %8, align 8
  %45 = getelementptr inbounds %struct.dirent, %struct.dirent* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %37
  br label %31

50:                                               ; preds = %43
  %51 = trunc i64 %15 to i32
  %52 = load i8*, i8** %4, align 8
  %53 = load %struct.dirent*, %struct.dirent** %8, align 8
  %54 = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @snprintf(i8* %17, i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %55)
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %50
  %60 = load %struct.dirent*, %struct.dirent** %8, align 8
  %61 = getelementptr inbounds %struct.dirent, %struct.dirent* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @PG_TEMP_FILE_PREFIX, align 4
  %64 = load i32, i32* @PG_TEMP_FILE_PREFIX, align 4
  %65 = call i32 @strlen(i32 %64)
  %66 = call i64 @strncmp(i8* %62, i32 %63, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %59, %50
  %69 = call i64 @lstat(i8* %17, %struct.stat* %12)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* @LOG, align 4
  %73 = call i32 (...) @errcode_for_file_access()
  %74 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %17)
  %75 = call i32 @ereport(i32 %72, i32 %74)
  br label %31

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @S_ISDIR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  call void @RemovePgTempFilesInDir(i8* %17, i32 0, i32 1)
  %82 = call i64 @rmdir(i8* %17)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* @LOG, align 4
  %86 = call i32 (...) @errcode_for_file_access()
  %87 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  %88 = call i32 @ereport(i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %84, %81
  br label %99

90:                                               ; preds = %76
  %91 = call i64 @unlink(i8* %17)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* @LOG, align 4
  %95 = call i32 (...) @errcode_for_file_access()
  %96 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %17)
  %97 = call i32 @ereport(i32 %94, i32 %96)
  br label %98

98:                                               ; preds = %93, %90
  br label %99

99:                                               ; preds = %98, %89
  br label %104

100:                                              ; preds = %59
  %101 = load i32, i32* @LOG, align 4
  %102 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i8* %17)
  %103 = call i32 @ereport(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %99
  br label %31

105:                                              ; preds = %31
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @FreeDir(i32* %106)
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %105, %29
  %109 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %11, align 4
  switch i32 %110, label %112 [
    i32 0, label %111
    i32 1, label %111
  ]

111:                                              ; preds = %108, %108
  ret void

112:                                              ; preds = %108
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @AllocateDir(i8*) #2

declare dso_local %struct.dirent* @ReadDirExtended(i32*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @rmdir(i8*) #2

declare dso_local i64 @unlink(i8*) #2

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
