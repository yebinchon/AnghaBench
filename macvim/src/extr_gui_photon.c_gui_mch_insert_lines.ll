; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_insert_lines.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_insert_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i32, i64 }

@gui = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@gui_ph_raw_offset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_insert_lines(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 3), align 8
  %8 = call i8* @FILL_X(i64 %7)
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i8* @FILL_Y(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 2), align 8
  %16 = add nsw i64 %15, 1
  %17 = call i8* @FILL_X(i64 %16)
  %18 = getelementptr i8, i8* %17, i64 -1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 0), align 8
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %21, %22
  %24 = add nsw i32 %23, 1
  %25 = call i8* @FILL_Y(i32 %24)
  %26 = getelementptr i8, i8* %25, i64 -1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 4), align 8
  %30 = call i32 @PtWidgetOffset(i32 %29, i32* @gui_ph_raw_offset)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 4), align 8
  %32 = call i32 @PtWidgetPos(i32 %31, i32* null)
  %33 = call i32 @PhTranslatePoint(i32* @gui_ph_raw_offset, i32 %32)
  %34 = call i32 @PhTranslateRect(%struct.TYPE_11__* %5, i32* @gui_ph_raw_offset)
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 1), align 4
  %38 = mul nsw i32 %36, %37
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = call i32 (...) @PgFlush()
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 4), align 8
  %42 = call i32 @PtFindDisjoint(i32 %41)
  %43 = call i32 @PtWidgetRid(i32 %42)
  %44 = call i32 @PhBlit(i32 %43, %struct.TYPE_11__* %5, %struct.TYPE_12__* %6)
  %45 = load i32, i32* %3, align 4
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 3), align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %47, %48
  %50 = sub nsw i32 %49, 1
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 2), align 8
  %52 = call i32 @gui_clear_block(i32 %45, i64 %46, i32 %50, i64 %51)
  ret void
}

declare dso_local i8* @FILL_X(i64) #1

declare dso_local i8* @FILL_Y(i32) #1

declare dso_local i32 @PtWidgetOffset(i32, i32*) #1

declare dso_local i32 @PhTranslatePoint(i32*, i32) #1

declare dso_local i32 @PtWidgetPos(i32, i32*) #1

declare dso_local i32 @PhTranslateRect(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @PgFlush(...) #1

declare dso_local i32 @PhBlit(i32, %struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @PtWidgetRid(i32) #1

declare dso_local i32 @PtFindDisjoint(i32) #1

declare dso_local i32 @gui_clear_block(i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
