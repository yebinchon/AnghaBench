; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_ValidatePgVersion.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_ValidatePgVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@PG_VERSION = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"%s/PG_VERSION\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"\22%s\22 is not a valid data directory\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"File \22%s\22 is missing.\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%63s\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"File \22%s\22 does not contain valid data.\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"You might need to initdb.\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"database files are incompatible with server\00", align 1
@.str.9 = private unnamed_addr constant [107 x i8] c"The data directory was initialized by PostgreSQL version %s, which is not compatible with this version %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ValidatePgVersion(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i32, i32* @MAXPGPATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i8*, i8** @PG_VERSION, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call i64 @strtol(i8* %17, i8** %9, i32 10)
  store i64 %18, i64* %8, align 8
  %19 = trunc i64 %13 to i32
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @snprintf(i8* %15, i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = call i32* @AllocateFile(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %1
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @ENOENT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* @FATAL, align 4
  %31 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = call i32 (i8*, i8*, ...) @errdetail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %36 = call i32 @ereport(i32 %30, i32 %35)
  br label %42

37:                                               ; preds = %25
  %38 = load i32, i32* @FATAL, align 4
  %39 = call i32 (...) @errcode_for_file_access()
  %40 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  %41 = call i32 @ereport(i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %37, %29
  br label %43

43:                                               ; preds = %42, %1
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %44, align 16
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %47 = call i32 @fscanf(i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  store i32 %47, i32* %6, align 4
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %49 = call i64 @strtol(i8* %48, i8** %9, i32 10)
  store i64 %49, i64* %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52, %43
  %57 = load i32, i32* @FATAL, align 4
  %58 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %59 = call i32 @errcode(i32 %58)
  %60 = load i8*, i8** %2, align 8
  %61 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  %62 = call i32 (i8*, i8*, ...) @errdetail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %15)
  %63 = call i32 @errhint(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %64 = call i32 @ereport(i32 %57, i32 %63)
  br label %65

65:                                               ; preds = %56, %52
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @FreeFile(i32* %66)
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load i32, i32* @FATAL, align 4
  %73 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %74 = call i32 @errcode(i32 %73)
  %75 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 (i8*, i8*, ...) @errdetail(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.9, i64 0, i64 0), i8* %76, i8* %77)
  %79 = call i32 @ereport(i32 %72, i32 %78)
  br label %80

80:                                               ; preds = %71, %65
  %81 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %81)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @AllocateFile(i8*, i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @errdetail(i8*, i8*, ...) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @fscanf(i32*, i8*, i8*) #2

declare dso_local i32 @errhint(i8*) #2

declare dso_local i32 @FreeFile(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
