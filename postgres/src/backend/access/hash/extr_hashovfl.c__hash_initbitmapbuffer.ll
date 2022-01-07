; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashovfl.c__hash_initbitmapbuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashovfl.c__hash_initbitmapbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@InvalidBlockNumber = common dso_local global i8* null, align 8
@LH_BITMAP_PAGE = common dso_local global i32 0, align 4
@HASHO_PAGE_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_hash_initbitmapbuffer(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @BufferGetPage(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @BufferGetPageSize(i32 %16)
  %18 = call i32 @_hash_pageinit(i64 %15, i32 %17)
  br label %19

19:                                               ; preds = %14, %3
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @PageGetSpecialPointer(i64 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %8, align 8
  %23 = load i8*, i8** @InvalidBlockNumber, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @InvalidBlockNumber, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load i32, i32* @LH_BITMAP_PAGE, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @HASHO_PAGE_ID, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i32* @HashPageGetBitmap(i64 %37)
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @MemSet(i32* %39, i32 255, i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = bitcast i32* %42 to i8*
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i64, i64* %7, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = ptrtoint i8* %46 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = load i64, i64* %7, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_3__*
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  ret void
}

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @_hash_pageinit(i64, i32) #1

declare dso_local i32 @BufferGetPageSize(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

declare dso_local i32* @HashPageGetBitmap(i64) #1

declare dso_local i32 @MemSet(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
