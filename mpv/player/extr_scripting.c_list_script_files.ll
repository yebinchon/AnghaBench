; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_scripting.c_list_script_files.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_scripting.c_list_script_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }
%struct.stat = type { i32 }

@compare_filename = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i8*)* @list_script_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @list_script_files(i8* %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** null, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32* @opendir(i8* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i8** null, i8*** %3, align 8
  br label %60

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32*, i32** %8, align 8
  %20 = call %struct.dirent* @readdir(i32* %19)
  store %struct.dirent* %20, %struct.dirent** %9, align 8
  %21 = icmp ne %struct.dirent* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.dirent*, %struct.dirent** %9, align 8
  %26 = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @mp_path_join(i8* %23, i8* %24, i32 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @stat(i8* %29, %struct.stat* %11)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @S_ISREG(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = load i8**, i8*** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @MP_TARRAY_APPEND(i8* %38, i8** %39, i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %37, %32, %22
  br label %18

44:                                               ; preds = %18
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @closedir(i32* %45)
  %47 = load i8**, i8*** %6, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8**, i8*** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @compare_filename, align 4
  %53 = call i32 @qsort(i8** %50, i32 %51, i32 8, i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i8*, i8** %4, align 8
  %56 = load i8**, i8*** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @MP_TARRAY_APPEND(i8* %55, i8** %56, i32 %57, i8* null)
  %59 = load i8**, i8*** %6, align 8
  store i8** %59, i8*** %3, align 8
  br label %60

60:                                               ; preds = %54, %16
  %61 = load i8**, i8*** %3, align 8
  ret i8** %61
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i8* @mp_path_join(i8*, i8*, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @MP_TARRAY_APPEND(i8*, i8**, i32, i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @qsort(i8**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
