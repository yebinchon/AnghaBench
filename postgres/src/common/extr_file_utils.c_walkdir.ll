; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_file_utils.c_walkdir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_file_utils.c_walkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"could not open directory \22%s\22: %m\00", align 1
@errno = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"could not read directory \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32 (i8*, i32)*, i32)* @walkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walkdir(i8* %0, i32 (i8*, i32)* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32 (i8*, i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 (i8*, i32)* %1, i32 (i8*, i32)** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32* @opendir(i8* %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @pg_log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %95

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %82, %79, %21
  store i32 0, i32* @errno, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call %struct.dirent* @readdir(i32* %23)
  store %struct.dirent* %24, %struct.dirent** %8, align 8
  %25 = icmp ne %struct.dirent* %24, null
  br i1 %25, label %26, label %83

26:                                               ; preds = %22
  %27 = load i32, i32* @MAXPGPATH, align 4
  %28 = mul nsw i32 %27, 2
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %9, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %32 = load %struct.dirent*, %struct.dirent** %8, align 8
  %33 = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %26
  %38 = load %struct.dirent*, %struct.dirent** %8, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %26
  store i32 2, i32* %13, align 4
  br label %79

44:                                               ; preds = %37
  %45 = trunc i64 %29 to i32
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct.dirent*, %struct.dirent** %8, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @snprintf(i8* %31, i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %46, i8* %49)
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = call i32 @stat(i8* %31, %struct.stat* %11)
  store i32 %54, i32* %12, align 4
  br label %57

55:                                               ; preds = %44
  %56 = call i32 @lstat(i8* %31, %struct.stat* %11)
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  store i32 2, i32* %13, align 4
  br label %79

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @S_ISREG(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %69 = call i32 %68(i8* %31, i32 0)
  br label %78

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @S_ISDIR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  call void @walkdir(i8* %31, i32 (i8*, i32)* %76, i32 0)
  br label %77

77:                                               ; preds = %75, %70
  br label %78

78:                                               ; preds = %77, %67
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %78, %60, %43
  %80 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %13, align 4
  switch i32 %81, label %96 [
    i32 0, label %82
    i32 2, label %22
  ]

82:                                               ; preds = %79
  br label %22

83:                                               ; preds = %22
  %84 = load i32, i32* @errno, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @pg_log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @closedir(i32* %90)
  %92 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 %92(i8* %93, i32 1)
  br label %95

95:                                               ; preds = %89, %18
  ret void

96:                                               ; preds = %79
  unreachable
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @pg_log_error(i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
