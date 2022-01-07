; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_walkdir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_walkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, void (i8*, i32, i32)*, i32, i32)* @walkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walkdir(i8* %0, void (i8*, i32, i32)* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, i32, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store void (i8*, i32, i32)* %1, void (i8*, i32, i32)** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @AllocateDir(i8* %16)
  store i32* %17, i32** %9, align 8
  br label %18

18:                                               ; preds = %85, %82, %4
  %19 = load i32*, i32** %9, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.dirent* @ReadDirExtended(i32* %19, i8* %20, i32 %21)
  store %struct.dirent* %22, %struct.dirent** %10, align 8
  %23 = icmp ne %struct.dirent* %22, null
  br i1 %23, label %24, label %86

24:                                               ; preds = %18
  %25 = load i32, i32* @MAXPGPATH, align 4
  %26 = mul nsw i32 %25, 2
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %11, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  %30 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %31 = load %struct.dirent*, %struct.dirent** %10, align 8
  %32 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %24
  %37 = load %struct.dirent*, %struct.dirent** %10, align 8
  %38 = getelementptr inbounds %struct.dirent, %struct.dirent* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %24
  store i32 2, i32* %15, align 4
  br label %82

43:                                               ; preds = %36
  %44 = trunc i64 %27 to i32
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.dirent*, %struct.dirent** %10, align 8
  %47 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @snprintf(i8* %29, i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = call i32 @stat(i8* %29, %struct.stat* %13)
  store i32 %53, i32* %14, align 4
  br label %56

54:                                               ; preds = %43
  %55 = call i32 @lstat(i8* %29, %struct.stat* %13)
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (...) @errcode_for_file_access()
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  %63 = call i32 @ereport(i32 %60, i32 %62)
  store i32 2, i32* %15, align 4
  br label %82

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @S_ISREG(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %6, align 8
  %71 = load i32, i32* %8, align 4
  call void %70(i8* %29, i32 0, i32 %71)
  br label %81

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @S_ISDIR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %6, align 8
  %79 = load i32, i32* %8, align 4
  call void @walkdir(i8* %29, void (i8*, i32, i32)* %78, i32 0, i32 %79)
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80, %69
  store i32 0, i32* %15, align 4
  br label %82

82:                                               ; preds = %81, %59, %42
  %83 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %15, align 4
  switch i32 %84, label %96 [
    i32 0, label %85
    i32 2, label %18
  ]

85:                                               ; preds = %82
  br label %18

86:                                               ; preds = %18
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @FreeDir(i32* %87)
  %89 = load i32*, i32** %9, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %6, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %8, align 4
  call void %92(i8* %93, i32 1, i32 %94)
  br label %95

95:                                               ; preds = %91, %86
  ret void

96:                                               ; preds = %82
  unreachable
}

declare dso_local i32* @AllocateDir(i8*) #1

declare dso_local %struct.dirent* @ReadDirExtended(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeDir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
