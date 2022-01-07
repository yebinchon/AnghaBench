; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogarchive.c_XLogArchiveForceDone.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogarchive.c_XLogArchiveForceDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".done\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c".ready\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"could not create archive status file \22%s\22: %m\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"could not write archive status file \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XLogArchiveForceDone(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @MAXPGPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @MAXPGPATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @StatusFilePath(i8* %15, i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = call i64 @stat(i8* %15, %struct.stat* %6)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %48

21:                                               ; preds = %1
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @StatusFilePath(i8* %12, i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i64 @stat(i8* %12, %struct.stat* %6)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @WARNING, align 4
  %28 = call i32 @durable_rename(i8* %12, i8* %15, i32 %27)
  store i32 1, i32* %8, align 4
  br label %48

29:                                               ; preds = %21
  %30 = call i32* @AllocateFile(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @LOG, align 4
  %35 = call i32 (...) @errcode_for_file_access()
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %37 = call i32 @ereport(i32 %34, i32 %36)
  store i32 1, i32* %8, align 4
  br label %48

38:                                               ; preds = %29
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @FreeFile(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* @LOG, align 4
  %44 = call i32 (...) @errcode_for_file_access()
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  %46 = call i32 @ereport(i32 %43, i32 %45)
  store i32 1, i32* %8, align 4
  br label %48

47:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %42, %33, %26, %20
  %49 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %52 [
    i32 0, label %51
    i32 1, label %51
  ]

51:                                               ; preds = %48, %48
  ret void

52:                                               ; preds = %48
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StatusFilePath(i8*, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @durable_rename(i8*, i8*, i32) #2

declare dso_local i32* @AllocateFile(i8*, i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i64 @FreeFile(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
