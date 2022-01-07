; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_darwin.c_pids_sons_of_r.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_darwin.c_pids_sons_of_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"/proc/\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/proc/%s/stat\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%d %s %s %d\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c" `- %d : %s (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"sleeping\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"running\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pids_sons_of_r(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [8 x i8], align 1
  %14 = alloca [128 x i8], align 16
  %15 = alloca [1024 x i8], align 16
  %16 = alloca %struct.dirent*, align 8
  %17 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %101

21:                                               ; preds = %3
  %22 = call i32* @opendir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %17, align 8
  %23 = load i32*, i32** %17, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %101

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %96, %26
  %28 = load i32*, i32** %17, align 8
  %29 = call i64 @readdir(i32* %28)
  %30 = inttoptr i64 %29 to %struct.dirent*
  store %struct.dirent* %30, %struct.dirent** %16, align 8
  %31 = icmp ne %struct.dirent* %30, null
  br i1 %31, label %32, label %97

32:                                               ; preds = %27
  %33 = load %struct.dirent*, %struct.dirent** %16, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @atoi(i8* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %96

39:                                               ; preds = %32
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %41 = load %struct.dirent*, %struct.dirent** %16, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %46 = call i32* @fopen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %46, i32** %12, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %93

49:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %53 = call i32 @fscanf(i32* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %10, i8* %51, i8* %52, i32* %9)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %60 = call i32 @pids_cmdline(i32 %58, i8* %59)
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 83
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %75

68:                                               ; preds = %57
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 84
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  br label %75

75:                                               ; preds = %68, %67
  %76 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %67 ], [ %74, %68 ]
  %77 = call i32 @cons_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %61, i8* %62, i8* %76)
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @pids_sons_of_r(i32 %84, i32 %86, i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %83, %75
  br label %92

92:                                               ; preds = %91, %49
  br label %93

93:                                               ; preds = %92, %39
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @fclose(i32* %94)
  br label %96

96:                                               ; preds = %93, %32
  br label %27

97:                                               ; preds = %27
  %98 = load i32*, i32** %17, align 8
  %99 = call i32 @closedir(i32* %98)
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %25, %20
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i64 @readdir(i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @pids_cmdline(i32, i8*) #1

declare dso_local i32 @cons_printf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
