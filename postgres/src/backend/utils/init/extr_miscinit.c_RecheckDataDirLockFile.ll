; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_RecheckDataDirLockFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_RecheckDataDirLockFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLCKSZ = common dso_local global i32 0, align 4
@DIRECTORY_LOCK_FILE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"could not open file \22%s\22: %m; continuing anyway\00", align 1
@WAIT_EVENT_LOCK_FILE_RECHECKDATADIR_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"could not read from file \22%s\22: %m\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"lock file \22%s\22 contains wrong PID: %ld instead of %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RecheckDataDirLockFile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @BLCKSZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* @DIRECTORY_LOCK_FILE, align 4
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = load i32, i32* @PG_BINARY, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @open(i32 %12, i32 %15, i32 0)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %0
  %20 = load i32, i32* @errno, align 4
  switch i32 %20, label %27 [
    i32 129, label %21
    i32 128, label %21
  ]

21:                                               ; preds = %19, %19
  %22 = load i32, i32* @LOG, align 4
  %23 = call i32 (...) @errcode_for_file_access()
  %24 = load i32, i32* @DIRECTORY_LOCK_FILE, align 4
  %25 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @ereport(i32 %22, i32 %25)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %69

27:                                               ; preds = %19
  %28 = load i32, i32* @LOG, align 4
  %29 = call i32 (...) @errcode_for_file_access()
  %30 = load i32, i32* @DIRECTORY_LOCK_FILE, align 4
  %31 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = call i32 @ereport(i32 %28, i32 %31)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %69

33:                                               ; preds = %0
  %34 = load i32, i32* @WAIT_EVENT_LOCK_FILE_RECHECKDATADIR_READ, align 4
  %35 = call i32 @pgstat_report_wait_start(i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = sub i64 %9, 1
  %38 = trunc i64 %37 to i32
  %39 = call i32 @read(i32 %36, i8* %11, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = call i32 (...) @pgstat_report_wait_end()
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %33
  %44 = load i32, i32* @LOG, align 4
  %45 = call i32 (...) @errcode_for_file_access()
  %46 = load i32, i32* @DIRECTORY_LOCK_FILE, align 4
  %47 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = call i32 @ereport(i32 %44, i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @close(i32 %49)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %69

51:                                               ; preds = %33
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %11, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @close(i32 %55)
  %57 = call i64 @atol(i8* %11)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i64 (...) @getpid()
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 1, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %69

62:                                               ; preds = %51
  %63 = load i32, i32* @LOG, align 4
  %64 = load i32, i32* @DIRECTORY_LOCK_FILE, align 4
  %65 = load i64, i64* %4, align 8
  %66 = call i64 (...) @getpid()
  %67 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %64, i64 %65, i64 %66)
  %68 = call i32 @ereport(i32 %63, i32 %67)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %69

69:                                               ; preds = %62, %61, %43, %27, %21
  %70 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i32, i32, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i32, ...) #2

declare dso_local i32 @pgstat_report_wait_start(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @pgstat_report_wait_end(...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @atol(i8*) #2

declare dso_local i64 @getpid(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
