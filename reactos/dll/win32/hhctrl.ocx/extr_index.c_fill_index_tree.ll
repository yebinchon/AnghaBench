; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_index.c_fill_index_tree.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_index.c_fill_index_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i64, i64, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"tree debug: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"HTML Help index item has no keyword.\0A\00", align 1
@LVIF_TEXT = common dso_local global i32 0, align 4
@LVIF_PARAM = common dso_local global i32 0, align 4
@LVIF_INDENT = common dso_local global i32 0, align 4
@LVM_INSERTITEMW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*)* @fill_index_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_index_tree(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %25, %20, %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %62

10:                                               ; preds = %7
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @debugstr_w(i64 %13)
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %10
  %21 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %4, align 8
  br label %7

25:                                               ; preds = %10
  %26 = call i32 @memset(%struct.TYPE_5__* %6, i32 0, i32 40)
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @LVIF_TEXT, align 4
  %31 = load i32, i32* @LVIF_PARAM, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @LVIF_INDENT, align 4
  %34 = or i32 %32, %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  store i32 %38, i32* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @lstrlenW(i64 %42)
  %44 = add nsw i64 %43, 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i64 %44, i64* %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i64 %48, i64* %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = ptrtoint %struct.TYPE_6__* %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @LVM_INSERTITEMW, align 4
  %55 = ptrtoint %struct.TYPE_5__* %6 to i64
  %56 = call i64 @SendMessageW(i32 %53, i32 %54, i32 0, i64 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %4, align 8
  br label %7

62:                                               ; preds = %7
  ret void
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i64) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @lstrlenW(i64) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
