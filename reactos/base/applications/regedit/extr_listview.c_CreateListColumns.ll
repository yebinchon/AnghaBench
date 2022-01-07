; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_listview.c_CreateListColumns.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_listview.c_CreateListColumns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32* }

@LVCF_FMT = common dso_local global i32 0, align 4
@LVCF_WIDTH = common dso_local global i32 0, align 4
@LVCF_TEXT = common dso_local global i32 0, align 4
@LVCF_SUBITEM = common dso_local global i32 0, align 4
@MAX_LIST_COLUMNS = common dso_local global i32 0, align 4
@default_column_widths = common dso_local global i32* null, align 8
@column_alignment = common dso_local global i32* null, align 8
@hInst = common dso_local global i32 0, align 4
@IDS_LIST_COLUMN_FIRST = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @CreateListColumns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateListColumns(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [50 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @LVCF_FMT, align 4
  %10 = load i32, i32* @LVCF_WIDTH, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @LVCF_TEXT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @LVCF_SUBITEM, align 4
  %15 = or i32 %13, %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds [50 x i32], [50 x i32]* %6, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i32* %17, i32** %18, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %57, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MAX_LIST_COLUMNS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** @default_column_widths, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %26, %31
  %33 = sdiv i32 %32, 100
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load i32*, i32** @column_alignment, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @hInst, align 4
  %42 = load i64, i64* @IDS_LIST_COLUMN_FIRST, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = getelementptr inbounds [50 x i32], [50 x i32]* %6, i64 0, i64 0
  %47 = getelementptr inbounds [50 x i32], [50 x i32]* %6, i64 0, i64 0
  %48 = call i32 @COUNT_OF(i32* %47)
  %49 = call i32 @LoadStringW(i32 %41, i64 %45, i32* %46, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ListView_InsertColumn(i32 %50, i32 %51, %struct.TYPE_3__* %8)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %23
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %62

56:                                               ; preds = %23
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %19

60:                                               ; preds = %19
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @LoadStringW(i32, i64, i32*, i32) #1

declare dso_local i32 @COUNT_OF(i32*) #1

declare dso_local i32 @ListView_InsertColumn(i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
