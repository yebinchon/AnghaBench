; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_SetItemT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_SetItemT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32* }
%struct.TYPE_14__ = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"[nItem=%d]\0A\00", align 1
@HDN_ITEMCHANGINGW = common dso_local global i32 0, align 4
@HDI_ORDER = common dso_local global i32 0, align 4
@HDN_ITEMCHANGEDW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i32)* @HEADER_SetItemT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HEADER_SetItemT(%struct.TYPE_13__* %0, i64 %1, %struct.TYPE_14__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %14 = icmp eq %struct.TYPE_14__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %5, align 4
  br label %99

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %17
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %5, align 4
  br label %99

28:                                               ; preds = %20
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @HEADER_CopyHDItemForNotify(%struct.TYPE_13__* %31, %struct.TYPE_14__* %11, %struct.TYPE_14__* %32, i32 %33, i8** %12)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = load i32, i32* @HDN_ITEMCHANGINGW, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @HEADER_SendNotifyWithHDItemT(%struct.TYPE_13__* %35, i32 %36, i64 %37, %struct.TYPE_14__* %11)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @heap_free(i8* %41)
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %5, align 4
  br label %99

44:                                               ; preds = %28
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @HEADER_StoreHDItemInHeader(i32* %50, i32 %53, %struct.TYPE_14__* %54, i32 %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @HDI_ORDER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %44
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @HEADER_ChangeItemOrder(%struct.TYPE_13__* %77, i64 %78, i64 %81)
  br label %83

83:                                               ; preds = %76, %68, %63
  br label %84

84:                                               ; preds = %83, %44
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = load i32, i32* @HDN_ITEMCHANGEDW, align 4
  %87 = load i64, i64* %7, align 8
  %88 = call i64 @HEADER_SendNotifyWithHDItemT(%struct.TYPE_13__* %85, i32 %86, i64 %87, %struct.TYPE_14__* %11)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = call i32 @HEADER_SetItemBounds(%struct.TYPE_13__* %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @FALSE, align 4
  %95 = call i32 @InvalidateRect(i32 %93, i32* null, i32 %94)
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @heap_free(i8* %96)
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %84, %40, %26, %15
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @HEADER_CopyHDItemForNotify(%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i8**) #1

declare dso_local i64 @HEADER_SendNotifyWithHDItemT(%struct.TYPE_13__*, i32, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @HEADER_StoreHDItemInHeader(i32*, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @HEADER_ChangeItemOrder(%struct.TYPE_13__*, i64, i64) #1

declare dso_local i32 @HEADER_SetItemBounds(%struct.TYPE_13__*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
