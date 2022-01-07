; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_initmetapage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_initmetapage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, i32, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@BLCKSZ = common dso_local global i32 0, align 4
@BTREE_MAGIC = common dso_local global i32 0, align 4
@BTREE_VERSION = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@BTP_META = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bt_initmetapage(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* @BLCKSZ, align 4
  %11 = call i32 @_bt_pageinit(i64 %9, i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = call %struct.TYPE_7__* @BTPageGetMeta(i64 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %7, align 8
  %14 = load i32, i32* @BTREE_MAGIC, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @BTREE_VERSION, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @InvalidTransactionId, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store double -1.000000e+00, double* %36, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @PageGetSpecialPointer(i64 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %8, align 8
  %40 = load i32, i32* @BTP_META, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = bitcast %struct.TYPE_7__* %43 to i8*
  %45 = getelementptr inbounds i8, i8* %44, i64 56
  %46 = load i64, i64* %4, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = ptrtoint i8* %45 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* %4, align 8
  %53 = inttoptr i64 %52 to %struct.TYPE_5__*
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  ret void
}

declare dso_local i32 @_bt_pageinit(i64, i32) #1

declare dso_local %struct.TYPE_7__* @BTPageGetMeta(i64) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
