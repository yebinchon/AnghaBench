; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_archivecleanup/extr_pg_archivecleanup.c_CleanupPriorWALFiles.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_archivecleanup/extr_pg_archivecleanup.c_CleanupPriorWALFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@archiveLocation = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@additional_ext = common dso_local global i32 0, align 4
@exclusiveCleanupFileName = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@dryrun = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"file \22%s\22 would be removed\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"removing file \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"could not remove file \22%s\22: %m\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"could not read archive location \22%s\22: %m\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"could not close archive location \22%s\22: %m\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"could not open archive location \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CleanupPriorWALFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CleanupPriorWALFiles() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAXPGPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i8*, i8** @archiveLocation, align 8
  %14 = call i32* @opendir(i8* %13)
  store i32* %14, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %84

16:                                               ; preds = %0
  br label %17

17:                                               ; preds = %69, %65, %16
  store i32 0, i32* @errno, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call %struct.dirent* @readdir(i32* %18)
  store %struct.dirent* %19, %struct.dirent** %3, align 8
  %20 = icmp ne %struct.dirent* %19, null
  br i1 %20, label %21, label %70

21:                                               ; preds = %17
  %22 = load %struct.dirent*, %struct.dirent** %3, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @MAXPGPATH, align 4
  %26 = call i32 @strlcpy(i8* %12, i8* %24, i32 %25)
  %27 = load i32, i32* @additional_ext, align 4
  %28 = call i32 @TrimExtension(i8* %12, i32 %27)
  %29 = call i64 @IsXLogFileName(i8* %12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = call i64 @IsPartialXLogFileName(i8* %12)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %31, %21
  %35 = getelementptr inbounds i8, i8* %12, i64 8
  %36 = load i64, i64* @exclusiveCleanupFileName, align 8
  %37 = add nsw i64 %36, 8
  %38 = call i64 @strcmp(i8* %35, i64 %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %34
  %41 = load i32, i32* @MAXPGPATH, align 4
  %42 = mul nsw i32 %41, 2
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %6, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %7, align 8
  %46 = trunc i64 %43 to i32
  %47 = load i8*, i8** @archiveLocation, align 8
  %48 = load %struct.dirent*, %struct.dirent** %3, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @snprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %50)
  %52 = load i64, i64* @dryrun, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %40
  %55 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %56 = call i32 @pg_log_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  store i32 2, i32* %8, align 4
  br label %65

57:                                               ; preds = %40
  %58 = call i32 @pg_log_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  %59 = call i32 @unlink(i8* %45)
  store i32 %59, i32* %1, align 4
  %60 = load i32, i32* %1, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  store i32 3, i32* %8, align 4
  br label %65

64:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %62, %54
  %66 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %8, align 4
  switch i32 %67, label %89 [
    i32 0, label %68
    i32 2, label %17
    i32 3, label %70
  ]

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %68, %34, %31
  br label %17

70:                                               ; preds = %65, %17
  %71 = load i32, i32* @errno, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i8*, i8** @archiveLocation, align 8
  %75 = call i32 @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32*, i32** %2, align 8
  %78 = call i64 @closedir(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** @archiveLocation, align 8
  %82 = call i32 @pg_log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %76
  br label %87

84:                                               ; preds = %0
  %85 = load i8*, i8** @archiveLocation, align 8
  %86 = call i32 @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %84, %83
  %88 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %88)
  ret void

89:                                               ; preds = %65
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @TrimExtension(i8*, i32) #2

declare dso_local i64 @IsXLogFileName(i8*) #2

declare dso_local i64 @IsPartialXLogFileName(i8*) #2

declare dso_local i64 @strcmp(i8*, i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @pg_log_debug(i8*, i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @pg_log_error(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @closedir(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
