; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgvacuum.c_spgvacuumpage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgvacuum.c_spgvacuumpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @spgvacuumpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spgvacuumpage(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = call i32 (...) @vacuum_delay_point()
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAIN_FORKNUM, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RBM_NORMAL, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ReadBufferExtended(i32 %14, i32 %15, i32 %16, i32 %17, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %26 = call i32 @LockBuffer(i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @BufferGetPage(i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @PageIsNew(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %66

33:                                               ; preds = %2
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @PageIsEmpty(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %65

38:                                               ; preds = %33
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @SpGistPageIsLeaf(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @SpGistBlockIsRoot(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @vacuumLeafRoot(%struct.TYPE_9__* %47, i32 %48, i32 %49)
  br label %59

51:                                               ; preds = %42
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @vacuumLeafPage(%struct.TYPE_9__* %52, i32 %53, i32 %54, i32 0)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @vacuumRedirectAndPlaceholder(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %46
  br label %64

60:                                               ; preds = %38
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @vacuumRedirectAndPlaceholder(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %59
  br label %65

65:                                               ; preds = %64, %37
  br label %66

66:                                               ; preds = %65, %32
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @SpGistBlockIsRoot(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %96, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @PageIsNew(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  %76 = call i64 @PageIsEmpty(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %74, %70
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @RecordFreeIndexPage(i32 %79, i32 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %95

88:                                               ; preds = %74
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @SpGistSetLastUsedPage(i32 %89, i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %88, %78
  br label %96

96:                                               ; preds = %95, %66
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @UnlockReleaseBuffer(i32 %97)
  ret void
}

declare dso_local i32 @vacuum_delay_point(...) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @PageIsNew(i64) #1

declare dso_local i64 @PageIsEmpty(i64) #1

declare dso_local i64 @SpGistPageIsLeaf(i64) #1

declare dso_local i64 @SpGistBlockIsRoot(i32) #1

declare dso_local i32 @vacuumLeafRoot(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @vacuumLeafPage(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @vacuumRedirectAndPlaceholder(i32, i32) #1

declare dso_local i32 @RecordFreeIndexPage(i32, i32) #1

declare dso_local i32 @SpGistSetLastUsedPage(i32, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
