; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_LISTVIEW_InvalidateSubItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_LISTVIEW_InvalidateSubItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i64 }

@LV_VIEW_DETAILS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32, i32)* @LISTVIEW_InvalidateSubItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LISTVIEW_InvalidateSubItem(%struct.TYPE_17__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = call i32 @is_redrawing(%struct.TYPE_17__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %45

14:                                               ; preds = %3
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LV_VIEW_DETAILS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = call i32 @LISTVIEW_GetOrigin(%struct.TYPE_17__* %22, %struct.TYPE_16__* %7)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @LISTVIEW_GetItemOrigin(%struct.TYPE_17__* %24, i32 %25, %struct.TYPE_16__* %8)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @LISTVIEW_GetHeaderRect(%struct.TYPE_17__* %27, i32 %28, %struct.TYPE_15__* %9)
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %38, %40
  %42 = call i32 @OffsetRect(%struct.TYPE_15__* %9, i32 %36, i64 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = call i32 @LISTVIEW_InvalidateRect(%struct.TYPE_17__* %43, %struct.TYPE_15__* %9)
  br label %45

45:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @is_redrawing(%struct.TYPE_17__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LISTVIEW_GetOrigin(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @LISTVIEW_GetItemOrigin(%struct.TYPE_17__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @LISTVIEW_GetHeaderRect(%struct.TYPE_17__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @LISTVIEW_InvalidateRect(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
