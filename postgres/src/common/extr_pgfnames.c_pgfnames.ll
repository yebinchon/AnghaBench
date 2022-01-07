; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_pgfnames.c_pgfnames.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_pgfnames.c_pgfnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"could not open directory \22%s\22: %m\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"could not read directory \22%s\22: %m\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"could not close directory \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @pgfnames(i8* %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 200, i32* %8, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i32* @opendir(i8* %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @pg_log_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i8** null, i8*** %2, align 8
  br label %84

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = call i64 @palloc(i32 %20)
  %22 = inttoptr i64 %21 to i8**
  store i8** %22, i8*** %6, align 8
  br label %23

23:                                               ; preds = %64, %16
  store i32 0, i32* @errno, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call %struct.dirent* @readdir(i32* %24)
  store %struct.dirent* %25, %struct.dirent** %5, align 8
  %26 = icmp ne %struct.dirent* %25, null
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  %28 = load %struct.dirent*, %struct.dirent** %5, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %27
  %34 = load %struct.dirent*, %struct.dirent** %5, align 8
  %35 = getelementptr inbounds %struct.dirent, %struct.dirent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strcmp(i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %45, 2
  store i32 %46, i32* %8, align 4
  %47 = load i8**, i8*** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = call i64 @repalloc(i8** %47, i32 %51)
  %53 = inttoptr i64 %52 to i8**
  store i8** %53, i8*** %6, align 8
  br label %54

54:                                               ; preds = %44, %39
  %55 = load %struct.dirent*, %struct.dirent** %5, align 8
  %56 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @pstrdup(i32 %57)
  %59 = load i8**, i8*** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8*, i8** %59, i64 %62
  store i8* %58, i8** %63, align 8
  br label %64

64:                                               ; preds = %54, %33, %27
  br label %23

65:                                               ; preds = %23
  %66 = load i32, i32* @errno, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @pg_log_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i8**, i8*** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  store i8* null, i8** %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i64 @closedir(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @pg_log_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %79, %71
  %83 = load i8**, i8*** %6, align 8
  store i8** %83, i8*** %2, align 8
  br label %84

84:                                               ; preds = %82, %13
  %85 = load i8**, i8*** %2, align 8
  ret i8** %85
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @pg_log_warning(i8*, i8*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @repalloc(i8**, i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i64 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
