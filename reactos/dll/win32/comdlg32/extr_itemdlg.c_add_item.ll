; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_itemdlg.c_add_item.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_itemdlg.c_add_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, %struct.TYPE_11__*, i32, i32 }

@E_INVALIDARG = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@CDCS_VISIBLE = common dso_local global i32 0, align 4
@CDCS_ENABLED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, %struct.TYPE_11__**)* @add_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_item(%struct.TYPE_10__* %0, i32 %1, i32 %2, %struct.TYPE_11__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_11__** %3, %struct.TYPE_11__*** %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @get_item(%struct.TYPE_10__* %12, i32 %13, i32 0, i32* null)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %17, i32* %5, align 4
  br label %72

18:                                               ; preds = %4
  %19 = call i32 (...) @GetProcessHeap()
  %20 = call %struct.TYPE_11__* @HeapAlloc(i32 %19, i32 0, i32 32)
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %10, align 8
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @lstrlenW(i32 %22)
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call %struct.TYPE_11__* @HeapAlloc(i32 %21, i32 0, i32 %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %11, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %33 = icmp ne %struct.TYPE_11__* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31, %18
  %35 = call i32 (...) @GetProcessHeap()
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = call i32 @HeapFree(i32 %35, i32 0, %struct.TYPE_11__* %36)
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %40 = call i32 @HeapFree(i32 %38, i32 0, %struct.TYPE_11__* %39)
  %41 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %41, i32* %5, align 4
  br label %72

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @lstrcpyW(%struct.TYPE_11__* %51, i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %56, align 8
  %57 = load i32, i32* @CDCS_VISIBLE, align 4
  %58 = load i32, i32* @CDCS_ENABLED, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  store i32* null, i32** %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = call i32 @list_add_tail(i32* %65, i32* %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %70 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %70, align 8
  %71 = load i32, i32* @S_OK, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %42, %34, %16
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @get_item(%struct.TYPE_10__*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_11__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @lstrcpyW(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
