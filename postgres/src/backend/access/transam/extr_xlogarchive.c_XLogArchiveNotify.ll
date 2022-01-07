; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogarchive.c_XLogArchiveNotify.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogarchive.c_XLogArchiveNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c".ready\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"could not create archive status file \22%s\22: %m\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"could not write archive status file \22%s\22: %m\00", align 1
@IsUnderPostmaster = common dso_local global i64 0, align 8
@PMSIGNAL_WAKEN_ARCHIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XLogArchiveNotify(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @MAXPGPATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @StatusFilePath(i8* %10, i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = call i32* @AllocateFile(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @LOG, align 4
  %18 = call i32 (...) @errcode_for_file_access()
  %19 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %10)
  %20 = call i32 @ereport(i32 %17, i32 %19)
  store i32 1, i32* %6, align 4
  br label %37

21:                                               ; preds = %1
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @FreeFile(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @LOG, align 4
  %27 = call i32 (...) @errcode_for_file_access()
  %28 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %10)
  %29 = call i32 @ereport(i32 %26, i32 %28)
  store i32 1, i32* %6, align 4
  br label %37

30:                                               ; preds = %21
  %31 = load i64, i64* @IsUnderPostmaster, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @PMSIGNAL_WAKEN_ARCHIVER, align 4
  %35 = call i32 @SendPostmasterSignal(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %25, %16
  %38 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %41 [
    i32 0, label %40
    i32 1, label %40
  ]

40:                                               ; preds = %37, %37
  ret void

41:                                               ; preds = %37
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StatusFilePath(i8*, i8*, i8*) #2

declare dso_local i32* @AllocateFile(i8*, i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i64 @FreeFile(i32*) #2

declare dso_local i32 @SendPostmasterSignal(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
