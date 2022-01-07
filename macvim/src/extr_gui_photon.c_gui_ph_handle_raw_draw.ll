; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_ph_handle_raw_draw.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_ph_handle_raw_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }

@is_ignore_draw = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@PtBasic = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*)* @gui_ph_handle_raw_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gui_ph_handle_raw_draw(i32* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %8 = load i64, i64* @is_ignore_draw, align 8
  %9 = load i64, i64* @TRUE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %79

12:                                               ; preds = %2
  %13 = load i32, i32* @PtBasic, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = call i32 @PtSuperClassDraw(i32 %13, i32* %14, %struct.TYPE_15__* %15)
  %17 = call i32 @PgGetTranslation(%struct.TYPE_17__* %7)
  %18 = call i32 (...) @PgClearTranslation()
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @PtWidgetOffset(i32* %19, %struct.TYPE_17__* %6)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gui, i32 0, i32 0), align 4
  %22 = call i32 @PtWidgetPos(i32 %21, i32* null)
  %23 = call i32 @PhTranslatePoint(%struct.TYPE_17__* %6, i32 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = icmp ne %struct.TYPE_15__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %12
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %4, align 8
  br label %32

32:                                               ; preds = %28, %12
  br label %33

33:                                               ; preds = %36, %32
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = icmp ne %struct.TYPE_15__* %34, null
  br i1 %35, label %36, label %77

36:                                               ; preds = %33
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %5, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %42, %44
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %49, %51
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %56, %60
  %62 = add nsw i64 %61, 1
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %66, %70
  %72 = add nsw i64 %71, 1
  %73 = call i32 @gui_redraw(i64 %45, i64 %52, i64 %62, i64 %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %4, align 8
  br label %33

77:                                               ; preds = %33
  %78 = call i32 @PgSetTranslation(%struct.TYPE_17__* %7, i32 0)
  br label %79

79:                                               ; preds = %77, %11
  ret void
}

declare dso_local i32 @PtSuperClassDraw(i32, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @PgGetTranslation(%struct.TYPE_17__*) #1

declare dso_local i32 @PgClearTranslation(...) #1

declare dso_local i32 @PtWidgetOffset(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @PhTranslatePoint(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @PtWidgetPos(i32, i32*) #1

declare dso_local i32 @gui_redraw(i64, i64, i64, i64) #1

declare dso_local i32 @PgSetTranslation(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
