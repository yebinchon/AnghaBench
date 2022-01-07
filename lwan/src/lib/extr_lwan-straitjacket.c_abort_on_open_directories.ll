; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-straitjacket.c_abort_on_open_directories.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-straitjacket.c_abort_on_open_directories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"/proc/self/fd\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Could not determine if there are open directory fds\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Could not get descriptor of /proc/self/fd\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Could not get information about fd %s\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Could not get information about open file: %s\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"The directory '%s' is open (fd %s), can't chroot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @abort_on_open_directories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abort_on_open_directories() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca [12 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = call i32* @opendir(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 (i8*, ...) @lwan_status_critical_perror(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @dirfd(i32* %17)
  %19 = call i32 @snprintf(i8* %16, i32 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 12
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %15
  %26 = call i32 (i8*, ...) @lwan_status_critical(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  br label %28

28:                                               ; preds = %101, %98, %27
  %29 = load i32*, i32** %1, align 8
  %30 = call %struct.dirent* @readdir(i32* %29)
  store %struct.dirent* %30, %struct.dirent** %2, align 8
  %31 = icmp ne %struct.dirent* %30, null
  br i1 %31, label %32, label %102

32:                                               ; preds = %28
  %33 = load i32, i32* @PATH_MAX, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %5, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %6, align 8
  %37 = load %struct.dirent*, %struct.dirent** %2, align 8
  %38 = getelementptr inbounds %struct.dirent, %struct.dirent* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %41 = call i64 @streq(i8* %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 2, i32* %9, align 4
  br label %98

44:                                               ; preds = %32
  %45 = load %struct.dirent*, %struct.dirent** %2, align 8
  %46 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @streq(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.dirent*, %struct.dirent** %2, align 8
  %52 = getelementptr inbounds %struct.dirent, %struct.dirent* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @streq(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %44
  store i32 2, i32* %9, align 4
  br label %98

57:                                               ; preds = %50
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @dirfd(i32* %58)
  %60 = load %struct.dirent*, %struct.dirent** %2, align 8
  %61 = getelementptr inbounds %struct.dirent, %struct.dirent* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = trunc i64 %34 to i32
  %64 = call i64 @readlinkat(i32 %59, i8* %62, i8* %36, i32 %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ult i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.dirent*, %struct.dirent** %2, align 8
  %69 = getelementptr inbounds %struct.dirent, %struct.dirent* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i8*, ...) @lwan_status_critical_perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %67, %57
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i8, i8* %36, i64 %73
  store i8 0, i8* %74, align 1
  %75 = getelementptr inbounds i8, i8* %36, i64 0
  %76 = load i8, i8* %75, align 16
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 47
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 2, i32* %9, align 4
  br label %98

80:                                               ; preds = %72
  %81 = call i64 @stat(i8* %36, %struct.stat* %7)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 (i8*, ...) @lwan_status_critical_perror(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* %36)
  br label %85

85:                                               ; preds = %83, %80
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @S_ISDIR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load i32*, i32** %1, align 8
  %92 = call i32 @closedir(i32* %91)
  %93 = load %struct.dirent*, %struct.dirent** %2, align 8
  %94 = getelementptr inbounds %struct.dirent, %struct.dirent* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i8*, ...) @lwan_status_critical(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i8* %36, i8* %95)
  store i32 1, i32* %9, align 4
  br label %98

97:                                               ; preds = %85
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %97, %90, %79, %56, %43
  %99 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %9, align 4
  switch i32 %100, label %106 [
    i32 0, label %101
    i32 2, label %28
    i32 1, label %105
  ]

101:                                              ; preds = %98
  br label %28

102:                                              ; preds = %28
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @closedir(i32* %103)
  br label %105

105:                                              ; preds = %102, %98
  ret void

106:                                              ; preds = %98
  unreachable
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @lwan_status_critical_perror(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dirfd(i32*) #1

declare dso_local i32 @lwan_status_critical(i8*, ...) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @readlinkat(i32, i8*, i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @closedir(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
