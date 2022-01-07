; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_dbsize.c_db_dir_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_dbsize.c_db_dir_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i64 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @db_dir_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_dir_size(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @MAXPGPATH, align 4
  %12 = mul nsw i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32* @AllocateDir(i8* %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %72

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %61, %54, %40, %21
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call %struct.dirent* @ReadDir(i32* %23, i8* %24)
  store %struct.dirent* %25, %struct.dirent** %5, align 8
  %26 = icmp ne %struct.dirent* %25, null
  br i1 %26, label %27, label %68

27:                                               ; preds = %22
  %28 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %29 = load %struct.dirent*, %struct.dirent** %5, align 8
  %30 = getelementptr inbounds %struct.dirent, %struct.dirent* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load %struct.dirent*, %struct.dirent** %5, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %27
  br label %22

41:                                               ; preds = %34
  %42 = trunc i64 %13 to i32
  %43 = load i8*, i8** %3, align 8
  %44 = load %struct.dirent*, %struct.dirent** %5, align 8
  %45 = getelementptr inbounds %struct.dirent, %struct.dirent* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @snprintf(i8* %15, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* %46)
  %48 = call i64 @stat(i8* %15, %struct.stat* %10)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %41
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @ENOENT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %22

55:                                               ; preds = %50
  %56 = load i32, i32* @ERROR, align 4
  %57 = call i32 (...) @errcode_for_file_access()
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %59 = call i32 @ereport(i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %41
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %4, align 4
  br label %22

68:                                               ; preds = %22
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @FreeDir(i32* %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %72

72:                                               ; preds = %68, %20
  %73 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @AllocateDir(i8*) #2

declare dso_local %struct.dirent* @ReadDir(i32*, i8*) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i32 @FreeDir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
