; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_column.c_AddColumns.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_column.c_AddColumns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i64* }
%struct.TYPE_4__ = type { i32 }

@COLUMN_NMAX = common dso_local global i32 0, align 4
@TaskManagerSettings = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@hInst = common dso_local global i32 0, align 4
@ColumnPresets = common dso_local global %struct.TYPE_4__* null, align 8
@LVCFMT_LEFT = common dso_local global i32 0, align 4
@hProcessPageHeaderCtrl = common dso_local global i32 0, align 4
@HDM_GETITEMCOUNT = common dso_local global i32 0, align 4
@HDM_SETORDERARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddColumns() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [256 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %35, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @COLUMN_NMAX, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %38

8:                                                ; preds = %4
  %9 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @TaskManagerSettings, i32 0, i32 2), align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %8
  %16 = load i32, i32* @hInst, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ColumnPresets, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %24 = call i32 @LoadStringW(i32 %16, i32 %22, i32* %23, i32 256)
  %25 = load i32, i32* %3, align 4
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %27 = load i32, i32* @LVCFMT_LEFT, align 4
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @TaskManagerSettings, i32 0, i32 1), align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @InsertColumn(i32 %25, i32* %26, i32 %27, i32 %32, i32 -1)
  br label %34

34:                                               ; preds = %15, %8
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %4

38:                                               ; preds = %4
  %39 = load i32, i32* @hProcessPageHeaderCtrl, align 4
  %40 = load i32, i32* @HDM_GETITEMCOUNT, align 4
  %41 = call i64 @SendMessageW(i32 %39, i32 %40, i32 0, i32 0)
  store i64 %41, i64* %1, align 8
  %42 = load i32, i32* @hProcessPageHeaderCtrl, align 4
  %43 = load i32, i32* @HDM_SETORDERARRAY, align 4
  %44 = load i64, i64* %1, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i64 @SendMessageW(i32 %42, i32 %43, i32 %45, i32 ptrtoint (%struct.TYPE_3__* @TaskManagerSettings to i32))
  %47 = call i32 (...) @UpdateColumnDataHints()
  ret void
}

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @InsertColumn(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @UpdateColumnDataHints(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
