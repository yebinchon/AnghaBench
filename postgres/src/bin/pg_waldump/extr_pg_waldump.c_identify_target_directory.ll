; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_waldump/extr_pg_waldump.c_identify_target_directory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_waldump/extr_pg_waldump.c_identify_target_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@XLOGDIR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"PGDATA\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"could not locate WAL file \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"could not find any WAL file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @identify_target_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @identify_target_directory(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @MAXPGPATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @search_directory(i8* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @pg_strdup(i8* %22)
  store i8* %23, i8** %3, align 8
  store i32 1, i32* %8, align 4
  br label %74

24:                                               ; preds = %16
  %25 = load i32, i32* @MAXPGPATH, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** @XLOGDIR, align 8
  %28 = call i32 @snprintf(i8* %13, i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @search_directory(i8* %13, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i8* @pg_strdup(i8* %13)
  store i8* %33, i8** %3, align 8
  store i32 1, i32* %8, align 4
  br label %74

34:                                               ; preds = %24
  br label %65

35:                                               ; preds = %2
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @search_directory(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i8* @pg_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %3, align 8
  store i32 1, i32* %8, align 4
  br label %74

41:                                               ; preds = %35
  %42 = load i8*, i8** @XLOGDIR, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @search_directory(i8* %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** @XLOGDIR, align 8
  %48 = call i8* @pg_strdup(i8* %47)
  store i8* %48, i8** %3, align 8
  store i32 1, i32* %8, align 4
  br label %74

49:                                               ; preds = %41
  %50 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32, i32* @MAXPGPATH, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** @XLOGDIR, align 8
  %57 = call i32 @snprintf(i8* %13, i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %56)
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @search_directory(i8* %13, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = call i8* @pg_strdup(i8* %13)
  store i8* %62, i8** %3, align 8
  store i32 1, i32* %8, align 4
  br label %74

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %49
  br label %65

65:                                               ; preds = %64, %34
  %66 = load i8*, i8** %5, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 (i8*, ...) @fatal_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  br label %73

71:                                               ; preds = %65
  %72 = call i32 (i8*, ...) @fatal_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  store i8* null, i8** %3, align 8
  store i32 1, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %61, %46, %39, %32, %21
  %75 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i8*, i8** %3, align 8
  ret i8* %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @search_directory(i8*, i8*) #2

declare dso_local i8* @pg_strdup(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @fatal_error(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
