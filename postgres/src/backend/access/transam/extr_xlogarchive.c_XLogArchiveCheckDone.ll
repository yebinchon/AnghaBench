; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogarchive.c_XLogArchiveCheckDone.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogarchive.c_XLogArchiveCheckDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".done\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c".ready\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XLogArchiveCheckDone(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MAXPGPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = call i32 (...) @RecoveryInProgress()
  store i32 %13, i32* %7, align 4
  %14 = call i64 (...) @XLogArchivingActive()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16, %1
  %20 = call i64 (...) @XLogArchivingAlways()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %19
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %47

26:                                               ; preds = %22, %16
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @StatusFilePath(i8* %12, i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %29 = call i64 @stat(i8* %12, %struct.stat* %6)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %47

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @StatusFilePath(i8* %12, i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i64 @stat(i8* %12, %struct.stat* %6)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %47

38:                                               ; preds = %32
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @StatusFilePath(i8* %12, i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %41 = call i64 @stat(i8* %12, %struct.stat* %6)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @XLogArchiveNotify(i8* %45)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %43, %37, %31, %25
  %48 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RecoveryInProgress(...) #2

declare dso_local i64 @XLogArchivingActive(...) #2

declare dso_local i64 @XLogArchivingAlways(...) #2

declare dso_local i32 @StatusFilePath(i8*, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @XLogArchiveNotify(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
