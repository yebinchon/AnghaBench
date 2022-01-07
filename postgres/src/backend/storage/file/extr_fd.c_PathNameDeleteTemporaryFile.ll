; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_PathNameDeleteTemporaryFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_PathNameDeleteTemporaryFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not unlink temporary file \22%s\22: %m\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PathNameDeleteTemporaryFile(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @stat(i8* %8, %struct.stat* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @errno, align 4
  store i32 %12, i32* %7, align 4
  br label %14

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %13, %11
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ENOENT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %57

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @unlink(i8* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i32, i32* @errno, align 4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @ERROR, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @LOG, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = call i32 (...) @errcode_for_file_access()
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = call i32 @ereport(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %23
  store i32 0, i32* %3, align 4
  br label %57

41:                                               ; preds = %19
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ReportTemporaryFileUsage(i8* %45, i32 %47)
  br label %56

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* @errno, align 4
  %51 = load i32, i32* @LOG, align 4
  %52 = call i32 (...) @errcode_for_file_access()
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = call i32 @ereport(i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %49, %44
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %40, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @ReportTemporaryFileUsage(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
