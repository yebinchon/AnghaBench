; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_xlog.c_brin_xlog_samepage_update.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_xlog.c_brin_xlog_samepage_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"brin_xlog_samepage_update: failed to replace tuple\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @brin_xlog_samepage_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brin_xlog_samepage_update(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = call i64 @XLogRecGetData(%struct.TYPE_8__* %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %4, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = call i64 @XLogReadBufferForRedo(%struct.TYPE_8__* %17, i32 0, i32* %5)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = call i64 @XLogRecGetBlockData(%struct.TYPE_8__* %23, i32 0, i32* %7)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @BufferGetPage(i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = ptrtoint i32* %33 to i32
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @PageIndexTupleOverwrite(i64 %31, i32 %32, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %22
  %39 = load i32, i32* @PANIC, align 4
  %40 = call i32 @elog(i32 %39, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %22
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @PageSetLSN(i64 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @MarkBufferDirty(i32 %45)
  br label %47

47:                                               ; preds = %41, %1
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @BufferIsValid(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @UnlockReleaseBuffer(i32 %52)
  br label %54

54:                                               ; preds = %51, %47
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_8__*) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i64 @XLogRecGetBlockData(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @PageIndexTupleOverwrite(i64, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
