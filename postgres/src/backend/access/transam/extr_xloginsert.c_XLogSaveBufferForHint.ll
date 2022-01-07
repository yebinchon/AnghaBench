; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_XLogSaveBufferForHint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_XLogSaveBufferForHint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@MyPgXact = common dso_local global %struct.TYPE_6__* null, align 8
@BLCKSZ = common dso_local global i32 0, align 4
@REGBUF_FORCE_IMAGE = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_XLOG_ID = common dso_local global i32 0, align 4
@XLOG_FPI_FOR_HINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XLogSaveBufferForHint(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %17 = load i64, i64* @InvalidXLogRecPtr, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyPgXact, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @Assert(i32 %20)
  %22 = call i64 (...) @GetRedoRecPtr()
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @BufferGetLSNAtomic(i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %89

28:                                               ; preds = %2
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @BufferGetBlock(i32 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %10, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @BufferGetPage(i32 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = inttoptr i64 %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %15, align 4
  %41 = load i64, i64* %14, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %16, align 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @memcpy(i32 %46, i8* %47, i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %16, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i32, i32* @BLCKSZ, align 4
  %59 = load i32, i32* %16, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @memcpy(i32 %53, i8* %57, i32 %60)
  br label %68

62:                                               ; preds = %28
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* @BLCKSZ, align 4
  %67 = call i32 @memcpy(i32 %64, i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %34
  %69 = call i32 (...) @XLogBeginInsert()
  %70 = load i32, i32* @REGBUF_FORCE_IMAGE, align 4
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @REGBUF_STANDARD, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @BufferGetTag(i32 %78, i32* %11, i32* %12, i32* %13)
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @XLogRegisterBlock(i32 0, i32* %11, i32 %80, i32 %81, i32 %83, i32 %84)
  %86 = load i32, i32* @RM_XLOG_ID, align 4
  %87 = load i32, i32* @XLOG_FPI_FOR_HINT, align 4
  %88 = call i64 @XLogInsert(i32 %86, i32 %87)
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %77, %2
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @GetRedoRecPtr(...) #1

declare dso_local i64 @BufferGetLSNAtomic(i32) #1

declare dso_local i64 @BufferGetBlock(i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @BufferGetTag(i32, i32*, i32*, i32*) #1

declare dso_local i32 @XLogRegisterBlock(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @XLogInsert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
