; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_getbucketbuf_from_hashkey.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_getbucketbuf_from_hashkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@InvalidBuffer = common dso_local global i32 0, align 4
@HASH_READ = common dso_local global i32 0, align 4
@HASH_WRITE = common dso_local global i32 0, align 4
@LH_BUCKET_PAGE = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hash_getbucketbuf_from_hashkey(i32 %0, i32 %1, i32 %2, %struct.TYPE_7__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_7__** %3, %struct.TYPE_7__*** %8, align 8
  %16 = load i32, i32* @InvalidBuffer, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @HASH_READ, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @HASH_WRITE, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %4
  %25 = phi i1 [ true, %4 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.TYPE_7__* @_hash_getcachedmetap(i32 %28, i32* %11, i32 0)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %9, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  br label %34

34:                                               ; preds = %81, %24
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @_hash_hashkey2bucket(i32 %35, i64 %38, i32 %41, i32 %44)
  store i64 %45, i64* %13, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @BUCKET_TO_BLKNO(%struct.TYPE_7__* %46, i64 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @LH_BUCKET_PAGE, align 4
  %53 = call i32 @_hash_getbuf(i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @BufferGetPage(i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @PageGetSpecialPointer(i32 %56)
  %58 = inttoptr i64 %57 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %15, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @Assert(i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @InvalidBlockNumber, align 8
  %70 = icmp ne i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @Assert(i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sle i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %34
  br label %91

81:                                               ; preds = %34
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @_hash_relbuf(i32 %82, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = call %struct.TYPE_7__* @_hash_getcachedmetap(i32 %85, i32* %11, i32 1)
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %9, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %88 = icmp ne %struct.TYPE_7__* %87, null
  %89 = zext i1 %88 to i32
  %90 = call i32 @Assert(i32 %89)
  br label %34

91:                                               ; preds = %80
  %92 = load i32, i32* %11, align 4
  %93 = call i64 @BufferIsValid(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @_hash_dropbuf(i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %91
  %100 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %101 = icmp ne %struct.TYPE_7__** %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %104, align 8
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %10, align 4
  ret i32 %106
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_7__* @_hash_getcachedmetap(i32, i32*, i32) #1

declare dso_local i64 @_hash_hashkey2bucket(i32, i64, i32, i32) #1

declare dso_local i32 @BUCKET_TO_BLKNO(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @_hash_getbuf(i32, i32, i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @_hash_relbuf(i32, i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @_hash_dropbuf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
