; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_LISTVIEW_GetColumnInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_LISTVIEW_GetColumnInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32 }

@LISTVIEW_GetColumnInfo.mainItem = internal global %struct.TYPE_7__ zeroinitializer, align 4
@HDM_GETITEMRECT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_6__*, i64)* @LISTVIEW_GetColumnInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @LISTVIEW_GetColumnInfo(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @DPA_GetPtrCount(i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store %struct.TYPE_7__* @LISTVIEW_GetColumnInfo.mainItem, %struct.TYPE_7__** %3, align 8
  br label %73

18:                                               ; preds = %11, %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @DPA_GetPtrCount(i32 %25)
  %27 = icmp slt i64 %22, %26
  br label %28

28:                                               ; preds = %21, %18
  %29 = phi i1 [ false, %18 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %28
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %7, align 8
  store i64 0, i64* %8, align 8
  br label %38

38:                                               ; preds = %60, %36
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @DPA_GetPtrCount(i32 %42)
  %44 = icmp slt i64 %39, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call %struct.TYPE_7__* @DPA_GetPtr(i32 %48, i64 %49)
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %6, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @HDM_GETITEMRECT, align 4
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = ptrtoint i32* %57 to i32
  %59 = call i32 @SendMessageW(i32 %53, i32 %54, i64 %55, i32 %58)
  br label %60

60:                                               ; preds = %45
  %61 = load i64, i64* %8, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %8, align 8
  br label %38

63:                                               ; preds = %38
  %64 = load i64, i64* @FALSE, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %28
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call %struct.TYPE_7__* @DPA_GetPtr(i32 %70, i64 %71)
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %3, align 8
  br label %73

73:                                               ; preds = %67, %17
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %74
}

declare dso_local i64 @DPA_GetPtrCount(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @DPA_GetPtr(i32, i64) #1

declare dso_local i32 @SendMessageW(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
