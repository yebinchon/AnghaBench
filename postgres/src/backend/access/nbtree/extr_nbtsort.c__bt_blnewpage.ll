; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsort.c__bt_blnewpage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsort.c__bt_blnewpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@BLCKSZ = common dso_local global i32 0, align 4
@P_NONE = common dso_local global i32 0, align 4
@BTP_LEAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @_bt_blnewpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_bt_blnewpage(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @BLCKSZ, align 4
  %6 = call i64 @palloc(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i32, i32* @BLCKSZ, align 4
  %9 = call i32 @_bt_pageinit(i64 %7, i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @PageGetSpecialPointer(i64 %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %4, align 8
  %13 = load i32, i32* @P_NONE, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  store i32 %13, i32* %17, align 4
  %18 = load i64, i64* %2, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load i64, i64* %2, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @BTP_LEAF, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ 0, %24 ], [ %26, %25 ]
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* %3, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_5__*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @_bt_pageinit(i64, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
