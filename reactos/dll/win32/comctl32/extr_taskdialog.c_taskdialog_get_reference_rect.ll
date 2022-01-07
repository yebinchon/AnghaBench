; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_taskdialog.c_taskdialog_get_reference_rect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_taskdialog.c_taskdialog_get_reference_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskdialog_template_desc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }

@MONITOR_DEFAULTTOPRIMARY = common dso_local global i32 0, align 4
@TDF_POSITION_RELATIVE_TO_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.taskdialog_template_desc*, %struct.TYPE_8__*)* @taskdialog_get_reference_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taskdialog_get_reference_rect(%struct.taskdialog_template_desc* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.taskdialog_template_desc*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 4
  store %struct.taskdialog_template_desc* %0, %struct.taskdialog_template_desc** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %3, align 8
  %8 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %3, align 8
  %15 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  br label %21

19:                                               ; preds = %2
  %20 = call i64 (...) @GetActiveWindow()
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i64 [ %18, %13 ], [ %20, %19 ]
  %23 = load i32, i32* @MONITOR_DEFAULTTOPRIMARY, align 4
  %24 = call i32 @MonitorFromWindow(i64 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 20, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @GetMonitorInfoW(i32 %26, %struct.TYPE_9__* %6)
  %28 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %3, align 8
  %29 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TDF_POSITION_RELATIVE_TO_WINDOW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %21
  %37 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %3, align 8
  %38 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %3, align 8
  %45 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = call i32 @GetWindowRect(i64 %48, %struct.TYPE_8__* %49)
  br label %56

51:                                               ; preds = %36, %21
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %54 = bitcast %struct.TYPE_8__* %52 to i8*
  %55 = bitcast %struct.TYPE_8__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 16, i1 false)
  br label %56

56:                                               ; preds = %51, %43
  %57 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %3, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = call i32 @pixels_to_dialogunits(%struct.taskdialog_template_desc* %57, i32* %59, i32* %61)
  %63 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %3, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = call i32 @pixels_to_dialogunits(%struct.taskdialog_template_desc* %63, i32* %65, i32* %67)
  %69 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = call i32 @pixels_to_dialogunits(%struct.taskdialog_template_desc* %69, i32* %71, i32* %73)
  %75 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = call i32 @pixels_to_dialogunits(%struct.taskdialog_template_desc* %75, i32* %77, i32* %79)
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub i32 %83, %86
  ret i32 %87
}

declare dso_local i32 @MonitorFromWindow(i64, i32) #1

declare dso_local i64 @GetActiveWindow(...) #1

declare dso_local i32 @GetMonitorInfoW(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @GetWindowRect(i64, %struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pixels_to_dialogunits(%struct.taskdialog_template_desc*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
