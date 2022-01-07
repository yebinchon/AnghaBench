; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_OnTreeExpanding.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_OnTreeExpanding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@OnTreeExpanding.expanding = internal global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TVIS_EXPANDEDONCE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDC_WAIT = common dso_local global i32 0, align 4
@WM_SETREDRAW = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@TVM_SORTCHILDREN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OnTreeExpanding(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %18 = load i32, i32* @OnTreeExpanding.expanding, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %153

22:                                               ; preds = %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TVIS_EXPANDEDONCE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %3, align 4
  br label %153

32:                                               ; preds = %22
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* @OnTreeExpanding.expanding, align 4
  %34 = load i32, i32* @IDC_WAIT, align 4
  %35 = call i32 @LoadCursor(i32* null, i32 %34)
  %36 = call i32 @SetCursor(i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @WM_SETREDRAW, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32 @SendMessageW(i32 %37, i32 %38, i32 %39, i32 0)
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64* @GetItemPath(i32 %41, i64 %45, i32* %9)
  store i64* %46, i64** %12, align 8
  %47 = load i64*, i64** %12, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %32
  br label %144

50:                                               ; preds = %32
  %51 = load i64*, i64** %12, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = load i64*, i64** %12, align 8
  %57 = load i32, i32* @KEY_READ, align 4
  %58 = call i64 @RegOpenKeyExW(i32 %55, i64* %56, i32 0, i32 %57, i32* %10)
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* @ERROR_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %144

63:                                               ; preds = %54
  br label %66

64:                                               ; preds = %50
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @RegQueryInfoKeyW(i32 %67, i32 0, i32 0, i32 0, i32* %6, i32* %8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %144

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = call i32 (...) @GetProcessHeap()
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i64* @HeapAlloc(i32 %76, i32 0, i32 %80)
  store i64* %81, i64** %13, align 8
  %82 = load i64*, i64** %13, align 8
  %83 = icmp ne i64* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %73
  br label %144

85:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %127, %85
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %130

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i64*, i64** %13, align 8
  %95 = call i64 @RegEnumKeyExW(i32 %92, i32 %93, i64* %94, i32* %16, i32 0, i32 0, i32 0, i32 0)
  store i64 %95, i64* %14, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* @ERROR_SUCCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %127

100:                                              ; preds = %90
  %101 = load i32, i32* %10, align 4
  %102 = load i64*, i64** %13, align 8
  %103 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %104 = call i64 @RegOpenKeyExW(i32 %101, i64* %102, i32 0, i32 %103, i32* %11)
  store i64 %104, i64* %14, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* @ERROR_SUCCESS, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %100
  %109 = load i32, i32* %11, align 4
  %110 = call i64 @RegQueryInfoKeyW(i32 %109, i32 0, i32 0, i32 0, i32* %17, i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i64 %110, i64* %14, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @RegCloseKey(i32 %111)
  br label %113

113:                                              ; preds = %108, %100
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* @ERROR_SUCCESS, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 0, i32* %17, align 4
  br label %118

118:                                              ; preds = %117, %113
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %13, align 8
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @AddEntryToTree(i32 %119, i64 %123, i64* %124, i32* null, i32 %125)
  br label %127

127:                                              ; preds = %118, %99
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %86

130:                                              ; preds = %86
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @TVM_SORTCHILDREN, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @SendMessageW(i32 %131, i32 %132, i32 0, i32 %137)
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @RegCloseKey(i32 %139)
  %141 = call i32 (...) @GetProcessHeap()
  %142 = load i64*, i64** %13, align 8
  %143 = call i32 @HeapFree(i32 %141, i32 0, i64* %142)
  br label %144

144:                                              ; preds = %130, %84, %72, %62, %49
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @WM_SETREDRAW, align 4
  %147 = load i32, i32* @TRUE, align 4
  %148 = call i32 @SendMessageW(i32 %145, i32 %146, i32 %147, i32 0)
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @SetCursor(i32 %149)
  %151 = load i32, i32* @FALSE, align 4
  store i32 %151, i32* @OnTreeExpanding.expanding, align 4
  %152 = load i32, i32* @TRUE, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %144, %30, %20
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @SetCursor(i32) #1

declare dso_local i32 @LoadCursor(i32*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i64* @GetItemPath(i32, i64, i32*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i64*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryInfoKeyW(i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @RegEnumKeyExW(i32, i32, i64*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @AddEntryToTree(i32, i64, i64*, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
