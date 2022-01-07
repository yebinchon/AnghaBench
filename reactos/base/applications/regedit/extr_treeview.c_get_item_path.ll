; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_get_item_path.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_get_item_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i8*, i32, i64 }

@TVIF_PARAM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@TVIF_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64*, i32**, i32*, i32*)* @get_item_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_item_path(i32 %0, i8* %1, i64* %2, i32** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* @TVIF_PARAM, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @TreeView_GetItem(i32 %22, %struct.TYPE_3__* %14)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %6
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %7, align 8
  br label %127

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %10, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i64, i64* @TRUE, align 8
  store i64 %35, i64* %7, align 8
  br label %127

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i8* @TreeView_GetParent(i32 %38, i8* %39)
  %41 = load i64*, i64** %10, align 8
  %42 = load i32**, i32*** %11, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i64 @get_item_path(i32 %37, i8* %40, i64* %41, i32** %42, i32* %43, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %7, align 8
  br label %127

49:                                               ; preds = %36
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32**, i32*** %11, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 92, i32* %59, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %53, %49
  br label %64

64:                                               ; preds = %122, %63
  %65 = load i32, i32* @TVIF_TEXT, align 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  store i32 %65, i32* %66, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i8* %67, i8** %68, align 8
  %69 = load i32**, i32*** %11, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32* %74, i32** %75, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %77, %79
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* %15, align 8
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @TreeView_GetItem(i32 %85, %struct.TYPE_3__* %14)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %64
  %89 = load i64, i64* @FALSE, align 8
  store i64 %89, i64* %7, align 8
  br label %127

90:                                               ; preds = %64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @wcslen(i32* %92)
  store i64 %93, i64* %16, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* %15, align 8
  %96 = sub i64 %95, 1
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load i64, i64* %16, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %100
  store i32 %103, i32* %101, align 4
  br label %125

104:                                              ; preds = %90
  %105 = call i32 (...) @GetProcessHeap()
  %106 = load i32**, i32*** %11, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 2
  %111 = call i32* @HeapReAlloc(i32 %105, i32 0, i32* %107, i32 %110)
  store i32* %111, i32** %17, align 8
  %112 = load i32*, i32** %17, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %104
  %115 = load i64, i64* @FALSE, align 8
  store i64 %115, i64* %7, align 8
  br label %127

116:                                              ; preds = %104
  %117 = load i32*, i32** %17, align 8
  %118 = load i32**, i32*** %11, align 8
  store i32* %117, i32** %118, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %120, 2
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %116
  %123 = load i64, i64* @TRUE, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %64, label %125

125:                                              ; preds = %122, %98
  %126 = load i64, i64* @TRUE, align 8
  store i64 %126, i64* %7, align 8
  br label %127

127:                                              ; preds = %125, %114, %88, %47, %31, %25
  %128 = load i64, i64* %7, align 8
  ret i64 %128
}

declare dso_local i32 @TreeView_GetItem(i32, %struct.TYPE_3__*) #1

declare dso_local i8* @TreeView_GetParent(i32, i8*) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32* @HeapReAlloc(i32, i32, i32*, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
