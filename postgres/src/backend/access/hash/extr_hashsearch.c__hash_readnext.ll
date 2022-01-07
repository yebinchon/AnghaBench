; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashsearch.c__hash_readnext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashsearch.c__hash_readnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32, i64 }

@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i64 0, align 8
@HASH_READ = common dso_local global i32 0, align 4
@LH_OVERFLOW_PAGE = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64*, i32*, %struct.TYPE_8__**)* @_hash_readnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_hash_readnext(%struct.TYPE_6__* %0, i64* %1, i32* %2, %struct.TYPE_8__** %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %4
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31, %4
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %42 = call i32 @LockBuffer(i64 %40, i32 %41)
  br label %48

43:                                               ; preds = %31
  %44 = load i32, i32* %10, align 4
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @_hash_relbuf(i32 %44, i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i64, i64* @InvalidBuffer, align 8
  %50 = load i64*, i64** %6, align 8
  store i64 %49, i64* %50, align 8
  %51 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @BlockNumberIsValid(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @HASH_READ, align 4
  %59 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %60 = call i64 @_hash_getbuf(i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i64*, i64** %6, align 8
  store i64 %60, i64* %61, align 8
  store i32 1, i32* %12, align 4
  br label %96

62:                                               ; preds = %48
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %62
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %95, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %6, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i64*, i64** %6, align 8
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @BufferIsValid(i64 %78)
  %80 = call i32 @Assert(i32 %79)
  %81 = load i64*, i64** %6, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %84 = call i32 @LockBuffer(i64 %82, i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = load i64*, i64** %6, align 8
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @BufferGetBlockNumber(i64 %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PredicateLockPage(i32 %85, i32 %88, i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  store i32 1, i32* %12, align 4
  br label %95

95:                                               ; preds = %72, %67, %62
  br label %96

96:                                               ; preds = %95, %55
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = load i64*, i64** %6, align 8
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @BufferGetPage(i64 %101)
  %103 = load i32*, i32** %7, align 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @TestForOldSnapshot(i32 %106, i32 %107, i32 %109)
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @PageGetSpecialPointer(i32 %112)
  %114 = inttoptr i64 %113 to %struct.TYPE_8__*
  %115 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %114, %struct.TYPE_8__** %115, align 8
  br label %116

116:                                              ; preds = %99, %96
  ret void
}

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i32 @_hash_relbuf(i32, i64) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @BlockNumberIsValid(i32) #1

declare dso_local i64 @_hash_getbuf(i32, i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsValid(i64) #1

declare dso_local i32 @PredicateLockPage(i32, i32, i32) #1

declare dso_local i32 @BufferGetBlockNumber(i64) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
