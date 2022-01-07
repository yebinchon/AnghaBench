; ModuleID = '/home/carl/AnghaBench/radare2/libr/fs/p/extr_fs_posix.c_fs_posix_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/fs/p/extr_fs_posix.c_fs_posix_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }
%struct.dirent = type { i8* }
%struct.TYPE_8__ = type { float, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32)* @fs_posix_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_posix_dir(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca %struct.stat, align 8
  %11 = alloca %struct.dirent*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = call i32* (...) @r_list_new()
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %82

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @opendir(i8* %19)
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @r_list_free(i32* %24)
  store i32* null, i32** %4, align 8
  br label %82

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %74, %26
  %28 = load i32*, i32** %12, align 8
  %29 = call %struct.dirent* @readdir(i32* %28)
  store %struct.dirent* %29, %struct.dirent** %11, align 8
  %30 = icmp ne %struct.dirent* %29, null
  br i1 %30, label %31, label %78

31:                                               ; preds = %27
  %32 = load %struct.dirent*, %struct.dirent** %11, align 8
  %33 = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call %struct.TYPE_8__* @r_fs_file_new(i32* null, i8* %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %13, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @r_list_free(i32* %39)
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @closedir(i32* %41)
  store i32* null, i32** %4, align 8
  br label %82

43:                                               ; preds = %31
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store float 1.020000e+02, float* %45, align 8
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.dirent*, %struct.dirent** %11, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @snprintf(i8* %46, i32 4095, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %50)
  %52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %53 = call i32 @stat(i8* %52, %struct.stat* %10)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @S_ISDIR(i32 %57)
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 100, i32 102
  %62 = sitofp i32 %61 to float
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store float %62, float* %64, align 8
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  br label %74

69:                                               ; preds = %43
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store float 1.020000e+02, float* %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %55
  %75 = load i32*, i32** %8, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = call i32 @r_list_append(i32* %75, %struct.TYPE_8__* %76)
  br label %27

78:                                               ; preds = %27
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @closedir(i32* %79)
  %81 = load i32*, i32** %8, align 8
  store i32* %81, i32** %4, align 8
  br label %82

82:                                               ; preds = %78, %38, %23, %17
  %83 = load i32*, i32** %4, align 8
  ret i32* %83
}

declare dso_local i32* @r_list_new(...) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @r_list_free(i32*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local %struct.TYPE_8__* @r_fs_file_new(i32*, i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @r_list_append(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
