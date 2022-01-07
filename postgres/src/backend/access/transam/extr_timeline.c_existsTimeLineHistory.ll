; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_timeline.c_existsTimeLineHistory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_timeline.c_existsTimeLineHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@MAXFNAMELEN = common dso_local global i32 0, align 4
@ArchiveRecoveryRequested = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"RECOVERYHISTORY\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @existsTimeLineHistory(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @MAXPGPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @MAXFNAMELEN, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %46

19:                                               ; preds = %1
  %20 = load i64, i64* @ArchiveRecoveryRequested, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @TLHistoryFileName(i8* %15, i32 %23)
  %25 = call i32 @RestoreArchivedFile(i8* %12, i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @TLHistoryFilePath(i8* %12, i32 %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = call i32* @AllocateFile(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @FreeFile(i32* %34)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %46

36:                                               ; preds = %29
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @ENOENT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @FATAL, align 4
  %42 = call i32 (...) @errcode_for_file_access()
  %43 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  %44 = call i32 @ereport(i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %36
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %33, %18
  %47 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TLHistoryFileName(i8*, i32) #2

declare dso_local i32 @RestoreArchivedFile(i8*, i8*, i8*, i32, i32) #2

declare dso_local i32 @TLHistoryFilePath(i8*, i32) #2

declare dso_local i32* @AllocateFile(i8*, i8*) #2

declare dso_local i32 @FreeFile(i32*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
