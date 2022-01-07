; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_mark_scankey_required.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_mark_scankey_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@SK_BT_REQFWD = common dso_local global i32 0, align 4
@SK_BT_REQBKWD = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unrecognized StrategyNumber: %d\00", align 1
@SK_ROW_HEADER = common dso_local global i32 0, align 4
@SK_ROW_MEMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @_bt_mark_scankey_required to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bt_mark_scankey_required(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %16 [
    i32 128, label %8
    i32 129, label %8
    i32 132, label %10
    i32 131, label %14
    i32 130, label %14
  ]

8:                                                ; preds = %1, %1
  %9 = load i32, i32* @SK_BT_REQFWD, align 4
  store i32 %9, i32* %3, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load i32, i32* @SK_BT_REQFWD, align 4
  %12 = load i32, i32* @SK_BT_REQBKWD, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %1, %1
  %15 = load i32, i32* @SK_BT_REQBKWD, align 4
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @ERROR, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @elog(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %14, %10, %8
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SK_ROW_HEADER, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %22
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @DatumGetPointer(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %4, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SK_ROW_MEMBER, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @Assert(i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @Assert(i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %34, %22
  ret void
}

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
