; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_WM_DeleteItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_WM_DeleteItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"CtlType=%08x, CtlID=%08x, itemID=%08x, hwnd=%p, data=%08lx\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"COMBOBOXEX item structures broken. Please report!\0A\00", align 1
@CBEN_DELETEITEM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @COMBOEX_WM_DeleteItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBOEX_WM_DeleteItem(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_14__, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i64 %18, i32 %21, i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %3, align 4
  br label %124

35:                                               ; preds = %2
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %7, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, 1
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %35
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %55, align 8
  br label %104

56:                                               ; preds = %35
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %6, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %73, %56
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = icmp ne %struct.TYPE_17__* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br label %71

71:                                               ; preds = %65, %60
  %72 = phi i1 [ false, %60 ], [ %70, %65 ]
  br i1 %72, label %73, label %79

73:                                               ; preds = %71
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  store %struct.TYPE_17__* %76, %struct.TYPE_17__** %6, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add nsw i64 %77, -1
  store i64 %78, i64* %9, align 8
  br label %60

79:                                               ; preds = %71
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = icmp ne %struct.TYPE_17__* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84, %79
  %91 = call i32 @ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %3, align 4
  br label %124

93:                                               ; preds = %84
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  store %struct.TYPE_17__* %96, %struct.TYPE_17__** %7, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  store %struct.TYPE_17__* %101, %struct.TYPE_17__** %103, align 8
  br label %104

104:                                              ; preds = %93, %48
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, -1
  store i64 %108, i64* %106, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %110 = call i32 @memset(%struct.TYPE_18__* %109, i32 0, i32 4)
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  store i32 -1, i32* %112, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %115 = call i32 @COMBOEX_CopyItem(%struct.TYPE_17__* %113, %struct.TYPE_18__* %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = load i32, i32* @CBEN_DELETEITEM, align 4
  %118 = call i32 @COMBOEX_NotifyItem(%struct.TYPE_16__* %116, i32 %117, %struct.TYPE_14__* %8)
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = call i32 @COMBOEX_FreeText(%struct.TYPE_17__* %119)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %122 = call i32 @Free(%struct.TYPE_17__* %121)
  %123 = load i32, i32* @TRUE, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %104, %90, %33
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @TRACE(i8*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @COMBOEX_CopyItem(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @COMBOEX_NotifyItem(%struct.TYPE_16__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @COMBOEX_FreeText(%struct.TYPE_17__*) #1

declare dso_local i32 @Free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
