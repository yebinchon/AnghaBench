; ModuleID = '/home/carl/AnghaBench/progress/extr_progress.c_find_pids_by_binary_name.c'
source_filename = "/home/carl/AnghaBench/progress/extr_progress.c_find_pids_by_binary_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@PROC_PATH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"opendir\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Can't open %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@flag_debug = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"stat (find_pids_by_binary_name)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s/exe\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_pids_by_binary_name(i8* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load i32, i32* @MAXPATHLEN, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %29 = load i8*, i8** @PROC_PATH, align 8
  %30 = call i32* @opendir(i8* %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %3
  %34 = call i32 @nperror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** @PROC_PATH, align 8
  %37 = call i32 @nfprintf(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  %39 = call i32 @exit(i32 %38) #4
  unreachable

40:                                               ; preds = %3
  br label %41

41:                                               ; preds = %114, %82, %59, %40
  %42 = load i32*, i32** %7, align 8
  %43 = call %struct.dirent* @readdir(i32* %42)
  store %struct.dirent* %43, %struct.dirent** %8, align 8
  %44 = icmp ne %struct.dirent* %43, null
  br i1 %44, label %45, label %115

45:                                               ; preds = %41
  %46 = load i32, i32* @MAXPATHLEN, align 4
  %47 = load i8*, i8** @PROC_PATH, align 8
  %48 = load %struct.dirent*, %struct.dirent** %8, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %47, i8* %50)
  %52 = call i32 @stat(i8* %20, %struct.stat* %9)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load i64, i64* @flag_debug, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @nperror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  br label %41

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISDIR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %114

65:                                               ; preds = %60
  %66 = load %struct.dirent*, %struct.dirent** %8, align 8
  %67 = getelementptr inbounds %struct.dirent, %struct.dirent* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @is_numeric(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %114

71:                                               ; preds = %65
  %72 = load i32, i32* @MAXPATHLEN, align 4
  %73 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %24, i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  %74 = load i32, i32* @MAXPATHLEN, align 4
  %75 = call i32 @readlink(i8* %24, i8* %28, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %28, i64 %80
  store i8 0, i8* %81, align 1
  br label %83

82:                                               ; preds = %71
  br label %41

83:                                               ; preds = %78
  %84 = call i32 @basename(i8* %28)
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @strcmp(i32 %84, i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %113, label %88

88:                                               ; preds = %83
  %89 = load %struct.dirent*, %struct.dirent** %8, align 8
  %90 = getelementptr inbounds %struct.dirent, %struct.dirent* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @atol(i8* %91)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  store i32 %92, i32* %97, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @strcpy(i32 %103, i8* %104)
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %88
  br label %115

112:                                              ; preds = %88
  br label %113

113:                                              ; preds = %112, %83
  br label %114

114:                                              ; preds = %113, %65, %60
  br label %41

115:                                              ; preds = %111, %41
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @closedir(i32* %116)
  %118 = load i32, i32* %15, align 4
  %119 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %119)
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @nperror(i8*) #2

declare dso_local i32 @nfprintf(i32, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @is_numeric(i8*) #2

declare dso_local i32 @readlink(i8*, i8*, i32) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @basename(i8*) #2

declare dso_local i32 @atol(i8*) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
