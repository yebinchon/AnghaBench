; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_OpenTemporaryFileInTablespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_OpenTemporaryFileInTablespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s/%s%d.%ld\00", align 1
@PG_TEMP_FILE_PREFIX = common dso_local global i8* null, align 8
@MyProcPid = common dso_local global i32 0, align 4
@tempFileCounter = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not create temporary file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @OpenTemporaryFileInTablespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OpenTemporaryFileInTablespace(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @MAXPGPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @MAXPGPATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @TempTablespacePath(i8* %12, i32 %16)
  %18 = trunc i64 %14 to i32
  %19 = load i8*, i8** @PG_TEMP_FILE_PREFIX, align 8
  %20 = load i32, i32* @MyProcPid, align 4
  %21 = load i32, i32* @tempFileCounter, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @tempFileCounter, align 4
  %23 = call i32 @snprintf(i8* %15, i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %19, i32 %20, i32 %21)
  %24 = load i32, i32* @O_RDWR, align 4
  %25 = load i32, i32* @O_CREAT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @O_TRUNC, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PG_BINARY, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @PathNameOpenFile(i8* %15, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %2
  %35 = call i32 @MakePGDirectory(i8* %12)
  %36 = load i32, i32* @O_RDWR, align 4
  %37 = load i32, i32* @O_CREAT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @O_TRUNC, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @PG_BINARY, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @PathNameOpenFile(i8* %15, i32 %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @ERROR, align 4
  %51 = call i32 @elog(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  br label %52

52:                                               ; preds = %49, %46, %34
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i64, i64* %8, align 8
  %55 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %55)
  ret i64 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TempTablespacePath(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32, i32) #2

declare dso_local i64 @PathNameOpenFile(i8*, i32) #2

declare dso_local i32 @MakePGDirectory(i8*) #2

declare dso_local i32 @elog(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
