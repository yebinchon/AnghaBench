; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_SpGistUpdateMetaPage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_SpGistUpdateMetaPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@SPGIST_METAPAGE_BLKNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SpGistUpdateMetaPage(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %50

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = load i32, i32* @SPGIST_METAPAGE_BLKNO, align 4
  %16 = call i32 @ReadBuffer(%struct.TYPE_10__* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @ConditionalLockBuffer(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @BufferGetPage(i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.TYPE_8__* @SpGistPageGetMeta(i64 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %6, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = bitcast %struct.TYPE_8__* %30 to i8*
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %33 = load i64, i64* %5, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = ptrtoint i8* %32 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* %5, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_11__*
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @MarkBufferDirty(i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @UnlockReleaseBuffer(i32 %44)
  br label %49

46:                                               ; preds = %13
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @ReleaseBuffer(i32 %47)
  br label %49

49:                                               ; preds = %46, %20
  br label %50

50:                                               ; preds = %49, %1
  ret void
}

declare dso_local i32 @ReadBuffer(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ConditionalLockBuffer(i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local %struct.TYPE_8__* @SpGistPageGetMeta(i64) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
