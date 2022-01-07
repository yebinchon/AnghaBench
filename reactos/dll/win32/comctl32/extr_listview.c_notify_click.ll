; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_notify_click.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_notify_click.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"code=%d, lvht=%s\0A\00", align 1
@LVIF_PARAM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NM_RCLICK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64, %struct.TYPE_14__*)* @notify_click to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notify_click(%struct.TYPE_15__* %0, i64 %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = call i32 @debuglvhittestinfo(%struct.TYPE_14__* %15)
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %16)
  %18 = call i32 @ZeroMemory(%struct.TYPE_12__* %7, i32 16)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @LVIF_PARAM, align 4
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i64 @LISTVIEW_GetItemT(%struct.TYPE_15__* %38, %struct.TYPE_13__* %8, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %3
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = bitcast %struct.TYPE_12__* %7 to i32*
  %50 = call i32 @notify_hdr(%struct.TYPE_15__* %47, i64 %48, i32* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @IsWindow(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %46
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @NM_RCLICK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  br label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @TRUE, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi i32 [ %62, %58 ], [ %64, %63 ]
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %65, %46
  %69 = phi i1 [ false, %46 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  ret i32 %70
}

declare dso_local i32 @TRACE(i8*, i64, i32) #1

declare dso_local i32 @debuglvhittestinfo(%struct.TYPE_14__*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @LISTVIEW_GetItemT(%struct.TYPE_15__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @notify_hdr(%struct.TYPE_15__*, i64, i32*) #1

declare dso_local i64 @IsWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
