; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_UpdateSize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_UpdateSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@LBS_NOINTEGRALHEIGHT = common dso_local global i32 0, align 4
@LBS_OWNERDRAWVARIABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[%p]: changing height %d -> %d\0A\00", align 1
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"[%p]: new size = %d,%d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @LISTBOX_UpdateSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LISTBOX_UpdateSize(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @GetClientRect(i32 %8, %struct.TYPE_11__* %3)
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %11, %13
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %18, %20
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LBS_NOINTEGRALHEIGHT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %101, label %30

30:                                               ; preds = %1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LBS_OWNERDRAWVARIABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %101, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @GetWindowRect(i32 %40, %struct.TYPE_11__* %5)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = srem i32 %49, %52
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %46
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %55
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %100

66:                                               ; preds = %63
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %72, i32 %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %83, %85
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %88, %90
  %92 = load i32, i32* %4, align 4
  %93 = sub nsw i32 %91, %92
  %94 = load i32, i32* @SWP_NOZORDER, align 4
  %95 = load i32, i32* @SWP_NOACTIVATE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @SWP_NOMOVE, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @SetWindowPos(i32 %81, i32 0, i32 0, i32 0, i32 %86, i32 %93, i32 %98)
  br label %128

100:                                              ; preds = %63, %55
  br label %101

101:                                              ; preds = %100, %30, %1
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %107, i32 %110)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %113 = call i32 @LISTBOX_UpdatePage(%struct.TYPE_12__* %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %115 = call i32 @LISTBOX_UpdateScroll(%struct.TYPE_12__* %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @LISTBOX_GetItemRect(%struct.TYPE_12__* %116, i32 %119, %struct.TYPE_11__* %3)
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %128

122:                                              ; preds = %101
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @FALSE, align 4
  %127 = call i32 @InvalidateRect(i32 %125, %struct.TYPE_11__* %3, i32 %126)
  br label %128

128:                                              ; preds = %66, %122, %101
  ret void
}

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LISTBOX_UpdatePage(%struct.TYPE_12__*) #1

declare dso_local i32 @LISTBOX_UpdateScroll(%struct.TYPE_12__*) #1

declare dso_local i32 @LISTBOX_GetItemRect(%struct.TYPE_12__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @InvalidateRect(i32, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
