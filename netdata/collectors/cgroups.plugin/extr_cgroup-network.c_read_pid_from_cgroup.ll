; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_read_pid_from_cgroup.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_read_pid_from_cgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i8* }

@.str = private unnamed_addr constant [27 x i8] c"cannot read directory '%s'\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read_pid_from_cgroup(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @read_pid_from_cgroup_files(i8* %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %2, align 8
  br label %108

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i32* @opendir(i8* %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i64 0, i64* %2, align 8
  br label %108

24:                                               ; preds = %16
  store %struct.dirent* null, %struct.dirent** %6, align 8
  br label %25

25:                                               ; preds = %103, %75, %24
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.dirent* @readdir(i32* %26)
  store %struct.dirent* %27, %struct.dirent** %6, align 8
  %28 = icmp ne %struct.dirent* %27, null
  br i1 %28, label %29, label %104

29:                                               ; preds = %25
  %30 = load %struct.dirent*, %struct.dirent** %6, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DT_DIR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %76

35:                                               ; preds = %29
  %36 = load %struct.dirent*, %struct.dirent** %6, align 8
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.dirent*, %struct.dirent** %6, align 8
  %45 = getelementptr inbounds %struct.dirent, %struct.dirent* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %75, label %51

51:                                               ; preds = %43, %35
  %52 = load %struct.dirent*, %struct.dirent** %6, align 8
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %76

59:                                               ; preds = %51
  %60 = load %struct.dirent*, %struct.dirent** %6, align 8
  %61 = getelementptr inbounds %struct.dirent, %struct.dirent* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %67, label %76

67:                                               ; preds = %59
  %68 = load %struct.dirent*, %struct.dirent** %6, align 8
  %69 = getelementptr inbounds %struct.dirent, %struct.dirent* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67, %43
  br label %25

76:                                               ; preds = %67, %59, %51, %29
  %77 = load %struct.dirent*, %struct.dirent** %6, align 8
  %78 = getelementptr inbounds %struct.dirent, %struct.dirent* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DT_DIR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %76
  %83 = load i32, i32* @FILENAME_MAX, align 4
  %84 = add nsw i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = call i8* @llvm.stacksave()
  store i8* %86, i8** %7, align 8
  %87 = alloca i8, i64 %85, align 16
  store i64 %85, i64* %8, align 8
  %88 = load i32, i32* @FILENAME_MAX, align 4
  %89 = load i8*, i8** %3, align 8
  %90 = load %struct.dirent*, %struct.dirent** %6, align 8
  %91 = getelementptr inbounds %struct.dirent, %struct.dirent* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @snprintfz(i8* %87, i32 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %89, i8* %92)
  %94 = call i64 @read_pid_from_cgroup(i8* %87)
  store i64 %94, i64* %4, align 8
  %95 = load i64, i64* %4, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  store i32 3, i32* %9, align 4
  br label %99

98:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %98, %97
  %100 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %9, align 4
  switch i32 %101, label %110 [
    i32 0, label %102
    i32 3, label %104
  ]

102:                                              ; preds = %99
  br label %103

103:                                              ; preds = %102, %76
  br label %25

104:                                              ; preds = %99, %25
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @closedir(i32* %105)
  %107 = load i64, i64* %4, align 8
  store i64 %107, i64* %2, align 8
  br label %108

108:                                              ; preds = %104, %21, %14
  %109 = load i64, i64* %2, align 8
  ret i64 %109

110:                                              ; preds = %99
  unreachable
}

declare dso_local i64 @read_pid_from_cgroup_files(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*, i8*) #1

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
