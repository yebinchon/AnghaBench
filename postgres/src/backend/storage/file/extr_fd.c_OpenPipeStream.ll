; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_OpenPipeStream.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_OpenPipeStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"OpenPipeStream: Allocated %d (%s)\00", align 1
@numAllocatedDescs = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"exceeded maxAllocatedDescs (%d) while trying to execute command \22%s\22\00", align 1
@maxAllocatedDescs = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@allocatedDescs = common dso_local global %struct.TYPE_5__* null, align 8
@AllocateDescPipe = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"out of file descriptors: %m; release and retry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OpenPipeStream(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @LOG, align 4
  %10 = load i64, i64* @numAllocatedDescs, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @elog(i32 %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %10, i8* %11)
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
  %22 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %20, i8* %21)
  %23 = call i32 @ereport(i32 %17, i32 %22)
  br label %24

24:                                               ; preds = %16, %2
  %25 = call i32 (...) @ReleaseLruFiles()
  br label %26

26:                                               ; preds = %80, %24
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 @fflush(i32 %27)
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fflush(i32 %29)
  %31 = load i32, i32* @SIGPIPE, align 4
  %32 = load i32, i32* @SIG_DFL, align 4
  %33 = call i32 @pqsignal(i32 %31, i32 %32)
  store i32 0, i32* @errno, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32* @popen(i8* %34, i8* %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32, i32* @errno, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @SIGPIPE, align 4
  %39 = load i32, i32* @SIG_IGN, align 4
  %40 = call i32 @pqsignal(i32 %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* @errno, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %26
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @allocatedDescs, align 8
  %46 = load i64, i64* @numAllocatedDescs, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %46
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %8, align 8
  %48 = load i32, i32* @AllocateDescPipe, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32* %51, i32** %54, align 8
  %55 = call i32 (...) @GetCurrentSubTransactionId()
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* @numAllocatedDescs, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* @numAllocatedDescs, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %3, align 8
  br label %84

64:                                               ; preds = %26
  %65 = load i32, i32* @errno, align 4
  %66 = load i32, i32* @EMFILE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @errno, align 4
  %70 = load i32, i32* @ENFILE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68, %64
  %73 = load i32, i32* @LOG, align 4
  %74 = load i32, i32* @ERRCODE_INSUFFICIENT_RESOURCES, align 4
  %75 = call i32 @errcode(i32 %74)
  %76 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %77 = call i32 @ereport(i32 %73, i32 %76)
  %78 = call i64 (...) @ReleaseLruFile()
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %26

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* @errno, align 4
  br label %83

83:                                               ; preds = %81, %68
  store i32* null, i32** %3, align 8
  br label %84

84:                                               ; preds = %83, %44
  %85 = load i32*, i32** %3, align 8
  ret i32* %85
}

declare dso_local i32 @DO_DB(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i8*) #1

declare dso_local i32 @reserveAllocatedDesc(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @ReleaseLruFiles(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @GetCurrentSubTransactionId(...) #1

declare dso_local i64 @ReleaseLruFile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
