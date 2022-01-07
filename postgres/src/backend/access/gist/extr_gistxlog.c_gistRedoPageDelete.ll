; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistRedoPageDelete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistRedoPageDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @gistRedoPageDelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistRedoPageDelete(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = call i64 @XLogRecGetData(%struct.TYPE_7__* %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = call i64 @XLogReadBufferForRedo(%struct.TYPE_7__* %15, i32 0, i32* %6)
  %17 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @BufferGetPage(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GistPageSetDeleted(i32 %22, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @PageSetLSN(i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @MarkBufferDirty(i32 %30)
  br label %32

32:                                               ; preds = %19, %1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = call i64 @XLogReadBufferForRedo(%struct.TYPE_7__* %33, i32 1, i32* %5)
  %35 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @BufferGetPage(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PageIndexTupleDelete(i32 %40, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @PageSetLSN(i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @MarkBufferDirty(i32 %48)
  br label %50

50:                                               ; preds = %37, %32
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @BufferIsValid(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @UnlockReleaseBuffer(i32 %55)
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @BufferIsValid(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @UnlockReleaseBuffer(i32 %62)
  br label %64

64:                                               ; preds = %61, %57
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_7__*) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @GistPageSetDeleted(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @PageIndexTupleDelete(i32, i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
