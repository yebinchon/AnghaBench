; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_normal.c_end_visual_mode.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_normal.c_end_visual_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i8* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_10__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@VIsual_active = common dso_local global i32 0, align 4
@VIsual_mode = common dso_local global i8* null, align 8
@curbuf = common dso_local global %struct.TYPE_9__* null, align 8
@VIsual = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_8__* null, align 8
@mode_displayed = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@clear_cmdline = common dso_local global i32 0, align 4
@clip_star = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@mouse_dragging = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @end_visual_mode() #0 {
  %1 = load i32, i32* @FALSE, align 4
  store i32 %1, i32* @VIsual_active, align 4
  %2 = load i8*, i8** @VIsual_mode, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curbuf, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  store i8* %2, i8** %5, align 8
  %6 = load i32, i32* @VIsual, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curbuf, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32 %6, i32* %9, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curbuf, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curwin, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = bitcast %struct.TYPE_6__* %12 to i8*
  %16 = bitcast %struct.TYPE_6__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curwin, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curbuf, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i64, i64* @mode_displayed, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %0
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* @clear_cmdline, align 4
  br label %27

27:                                               ; preds = %25, %0
  %28 = call i32 (...) @adjust_cursor_eol()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @adjust_cursor_eol(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
