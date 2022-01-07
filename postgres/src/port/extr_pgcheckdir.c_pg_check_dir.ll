; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_pgcheckdir.c_pg_check_dir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_pgcheckdir.c_pg_check_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"lost+found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_check_dir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32* @opendir(i8* %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @errno, align 4
  %16 = load i32, i32* @ENOENT, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 -1
  store i32 %19, i32* %2, align 4
  br label %86

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %57, %37, %20
  store i32 0, i32* @errno, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call %struct.dirent* @readdir(i32* %22)
  store %struct.dirent* %23, %struct.dirent** %6, align 8
  %24 = icmp ne %struct.dirent* %23, null
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load %struct.dirent*, %struct.dirent** %6, align 8
  %27 = getelementptr inbounds %struct.dirent, %struct.dirent* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.dirent*, %struct.dirent** %6, align 8
  %33 = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %25
  br label %21

38:                                               ; preds = %31
  %39 = load %struct.dirent*, %struct.dirent** %6, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 46
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %56

47:                                               ; preds = %38
  %48 = load %struct.dirent*, %struct.dirent** %6, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %8, align 4
  br label %55

54:                                               ; preds = %47
  store i32 4, i32* %4, align 4
  br label %58

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55, %46
  br label %57

57:                                               ; preds = %56
  br label %21

58:                                               ; preds = %54, %21
  %59 = load i32, i32* @errno, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, i32* @errno, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @closedir(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 -1, i32* %4, align 4
  br label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* @errno, align 4
  br label %70

70:                                               ; preds = %68, %67
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 3, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %73, %70
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 2, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %80, %77
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
