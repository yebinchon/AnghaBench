; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_rmtree.c_rmtree.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_rmtree.c_rmtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"could not stat file or directory \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"could not remove file or directory \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmtree(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %13 = load i32, i32* @MAXPGPATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i8** @pgfnames(i8* %17)
  store i8** %18, i8*** %9, align 8
  %19 = load i8**, i8*** %9, align 8
  %20 = icmp eq i8** %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %83

22:                                               ; preds = %2
  %23 = load i8**, i8*** %9, align 8
  store i8** %23, i8*** %10, align 8
  br label %24

24:                                               ; preds = %65, %22
  %25 = load i8**, i8*** %10, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  %29 = load i32, i32* @MAXPGPATH, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = load i8**, i8*** %10, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @snprintf(i8* %16, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %32)
  %34 = call i64 @lstat(i8* %16, %struct.stat* %11)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @ENOENT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @pg_log_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %36
  br label %65

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @S_ISDIR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = call i32 @rmtree(i8* %16, i32 1)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %64

53:                                               ; preds = %43
  %54 = call i64 @unlink(i8* %16)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @ENOENT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @pg_log_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %56
  br label %63

63:                                               ; preds = %62, %53
  br label %64

64:                                               ; preds = %63, %52
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i8**, i8*** %10, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %10, align 8
  br label %24

68:                                               ; preds = %24
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i8*, i8** %4, align 8
  %73 = call i64 @rmdir(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @pg_log_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %75, %71
  br label %79

79:                                               ; preds = %78, %68
  %80 = load i8**, i8*** %9, align 8
  %81 = call i32 @pgfnames_cleanup(i8** %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %83

83:                                               ; preds = %79, %21
  %84 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8** @pgfnames(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @pg_log_warning(i8*, i8*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i64 @rmdir(i8*) #2

declare dso_local i32 @pgfnames_cleanup(i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
