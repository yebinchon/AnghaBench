; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_PathNameCreateTemporaryDir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_PathNameCreateTemporaryDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cannot create temporary directory \22%s\22: %m\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"cannot create temporary subdirectory \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PathNameCreateTemporaryDir(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i64 @MakePGDirectory(i8* %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %2
  %9 = load i64, i64* @errno, align 8
  %10 = load i64, i64* @EEXIST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %42

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @MakePGDirectory(i8* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EEXIST, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 (...) @errcode_for_file_access()
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 @ereport(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %17, %13
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @MakePGDirectory(i8* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EEXIST, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @ERROR, align 4
  %37 = call i32 (...) @errcode_for_file_access()
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = call i32 @ereport(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %35, %31, %27
  br label %42

42:                                               ; preds = %12, %41, %2
  ret void
}

declare dso_local i64 @MakePGDirectory(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
