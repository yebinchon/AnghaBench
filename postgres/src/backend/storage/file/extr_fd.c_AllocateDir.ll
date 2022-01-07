; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_AllocateDir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_AllocateDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"AllocateDir: Allocated %d (%s)\00", align 1
@numAllocatedDescs = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"exceeded maxAllocatedDescs (%d) while trying to open directory \22%s\22\00", align 1
@maxAllocatedDescs = common dso_local global i32 0, align 4
@allocatedDescs = common dso_local global %struct.TYPE_5__* null, align 8
@AllocateDescDir = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"out of file descriptors: %m; release and retry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @AllocateDir(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @LOG, align 4
  %8 = load i64, i64* @numAllocatedDescs, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @elog(i32 %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %8, i8* %9)
  %11 = call i32 @DO_DB(i32 %10)
  %12 = call i32 (...) @reserveAllocatedDesc()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* @ERRCODE_INSUFFICIENT_RESOURCES, align 4
  %17 = call i32 @errcode(i32 %16)
  %18 = load i32, i32* @maxAllocatedDescs, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %18, i8* %19)
  %21 = call i32 @ereport(i32 %15, i32 %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = call i32 (...) @ReleaseLruFiles()
  br label %24

24:                                               ; preds = %65, %22
  %25 = load i8*, i8** %3, align 8
  %26 = call i32* @opendir(i8* %25)
  store i32* %26, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @allocatedDescs, align 8
  %30 = load i64, i64* @numAllocatedDescs, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %5, align 8
  %32 = load i32, i32* @AllocateDescDir, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32* %35, i32** %38, align 8
  %39 = call i32 (...) @GetCurrentSubTransactionId()
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* @numAllocatedDescs, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* @numAllocatedDescs, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %2, align 8
  br label %69

48:                                               ; preds = %24
  %49 = load i32, i32* @errno, align 4
  %50 = load i32, i32* @EMFILE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @errno, align 4
  %54 = load i32, i32* @ENFILE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @errno, align 4
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @LOG, align 4
  %59 = load i32, i32* @ERRCODE_INSUFFICIENT_RESOURCES, align 4
  %60 = call i32 @errcode(i32 %59)
  %61 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %62 = call i32 @ereport(i32 %58, i32 %61)
  store i32 0, i32* @errno, align 4
  %63 = call i64 (...) @ReleaseLruFile()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %24

66:                                               ; preds = %56
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* @errno, align 4
  br label %68

68:                                               ; preds = %66, %52
  store i32* null, i32** %2, align 8
  br label %69

69:                                               ; preds = %68, %28
  %70 = load i32*, i32** %2, align 8
  ret i32* %70
}

declare dso_local i32 @DO_DB(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i8*) #1

declare dso_local i32 @reserveAllocatedDesc(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @ReleaseLruFiles(...) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @GetCurrentSubTransactionId(...) #1

declare dso_local i64 @ReleaseLruFile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
