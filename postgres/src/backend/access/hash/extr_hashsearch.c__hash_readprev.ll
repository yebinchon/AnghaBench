; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashsearch.c__hash_readprev.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashsearch.c__hash_readprev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i64 }

@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i64 0, align 8
@HASH_READ = common dso_local global i32 0, align 4
@LH_BUCKET_PAGE = common dso_local global i32 0, align 4
@LH_OVERFLOW_PAGE = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64*, i32*, %struct.TYPE_10__**)* @_hash_readprev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_hash_readprev(%struct.TYPE_8__* %0, i64* %1, i32* %2, %struct.TYPE_10__** %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %11, align 8
  %21 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %4
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31, %4
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %42 = call i32 @LockBuffer(i64 %40, i32 %41)
  store i32 0, i32* %12, align 4
  br label %48

43:                                               ; preds = %31
  %44 = load i32, i32* %10, align 4
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @_hash_relbuf(i32 %44, i64 %46)
  store i32 1, i32* %12, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i64, i64* @InvalidBuffer, align 8
  %50 = load i64*, i64** %6, align 8
  store i64 %49, i64* %50, align 8
  %51 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %101

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @BlockNumberIsValid(i32 %55)
  %57 = call i32 @Assert(i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @HASH_READ, align 4
  %61 = load i32, i32* @LH_BUCKET_PAGE, align 4
  %62 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %63 = or i32 %61, %62
  %64 = call i64 @_hash_getbuf(i32 %58, i32 %59, i32 %60, i32 %63)
  %65 = load i64*, i64** %6, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i64*, i64** %6, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @BufferGetPage(i64 %67)
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @TestForOldSnapshot(i32 %72, i32 %73, i32 %75)
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @PageGetSpecialPointer(i32 %78)
  %80 = inttoptr i64 %79 to %struct.TYPE_10__*
  %81 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %81, align 8
  %82 = load i64*, i64** %6, align 8
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %95, label %88

88:                                               ; preds = %54
  %89 = load i64*, i64** %6, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %88, %54
  %96 = load i32, i32* %10, align 4
  %97 = load i64*, i64** %6, align 8
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @_hash_dropbuf(i32 %96, i64 %98)
  br label %100

100:                                              ; preds = %95, %88
  br label %150

101:                                              ; preds = %48
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %149

106:                                              ; preds = %101
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %149

111:                                              ; preds = %106
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %6, align 8
  store i64 %114, i64* %115, align 8
  %116 = load i64*, i64** %6, align 8
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @BufferIsValid(i64 %117)
  %119 = call i32 @Assert(i32 %118)
  %120 = load i64*, i64** %6, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %123 = call i32 @LockBuffer(i64 %121, i32 %122)
  %124 = load i64*, i64** %6, align 8
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @BufferGetPage(i64 %125)
  %127 = load i32*, i32** %7, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @PageGetSpecialPointer(i32 %129)
  %131 = inttoptr i64 %130 to %struct.TYPE_10__*
  %132 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* %131, %struct.TYPE_10__** %132, align 8
  br label %133

133:                                              ; preds = %140, %111
  %134 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @BlockNumberIsValid(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %142 = load i64*, i64** %6, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %145 = call i32 @_hash_readnext(%struct.TYPE_8__* %141, i64* %142, i32* %143, %struct.TYPE_10__** %144)
  br label %133

146:                                              ; preds = %133
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  store i32 0, i32* %148, align 8
  br label %149

149:                                              ; preds = %146, %106, %101
  br label %150

150:                                              ; preds = %149, %100
  ret void
}

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i32 @_hash_relbuf(i32, i64) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BlockNumberIsValid(i32) #1

declare dso_local i64 @_hash_getbuf(i32, i32, i32, i32) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @_hash_dropbuf(i32, i64) #1

declare dso_local i32 @BufferIsValid(i64) #1

declare dso_local i32 @_hash_readnext(%struct.TYPE_8__*, i64*, i32*, %struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
