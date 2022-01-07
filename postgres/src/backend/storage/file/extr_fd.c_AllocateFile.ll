; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_AllocateFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_AllocateFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"AllocateFile: Allocated %d (%s)\00", align 1
@numAllocatedDescs = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"exceeded maxAllocatedDescs (%d) while trying to open file \22%s\22\00", align 1
@maxAllocatedDescs = common dso_local global i32 0, align 4
@allocatedDescs = common dso_local global %struct.TYPE_5__* null, align 8
@AllocateDescFile = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"out of file descriptors: %m; release and retry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @AllocateFile(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @LOG, align 4
  %10 = load i64, i64* @numAllocatedDescs, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @elog(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %10, i8* %11)
  %13 = call i32 @DO_DB(i32 %12)
  %14 = call i32 (...) @reserveAllocatedDesc()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i32, i32* @ERRCODE_INSUFFICIENT_RESOURCES, align 4
  %19 = call i32 @errcode(i32 %18)
  %20 = load i32, i32* @maxAllocatedDescs, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %20, i8* %21)
  %23 = call i32 @ereport(i32 %17, i32 %22)
  br label %24

24:                                               ; preds = %16, %2
  %25 = call i32 (...) @ReleaseLruFiles()
  br label %26

26:                                               ; preds = %68, %24
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32* @fopen(i8* %27, i8* %28)
  store i32* %29, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @allocatedDescs, align 8
  %33 = load i64, i64* @numAllocatedDescs, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %33
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %7, align 8
  %35 = load i32, i32* @AllocateDescFile, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32* %38, i32** %41, align 8
  %42 = call i32 (...) @GetCurrentSubTransactionId()
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* @numAllocatedDescs, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* @numAllocatedDescs, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %3, align 8
  br label %72

51:                                               ; preds = %26
  %52 = load i32, i32* @errno, align 4
  %53 = load i32, i32* @EMFILE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @errno, align 4
  %57 = load i32, i32* @ENFILE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @errno, align 4
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @LOG, align 4
  %62 = load i32, i32* @ERRCODE_INSUFFICIENT_RESOURCES, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32 @ereport(i32 %61, i32 %64)
  store i32 0, i32* @errno, align 4
  %66 = call i64 (...) @ReleaseLruFile()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %26

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* @errno, align 4
  br label %71

71:                                               ; preds = %69, %55
  store i32* null, i32** %3, align 8
  br label %72

72:                                               ; preds = %71, %31
  %73 = load i32*, i32** %3, align 8
  ret i32* %73
}

declare dso_local i32 @DO_DB(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i8*) #1

declare dso_local i32 @reserveAllocatedDesc(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @ReleaseLruFiles(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @GetCurrentSubTransactionId(...) #1

declare dso_local i64 @ReleaseLruFile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
