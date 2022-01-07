; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_gtk_set_dnd_targets.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_gtk_set_dnd_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@N_DND_TARGETS = common dso_local global i32 0, align 4
@clip_html = common dso_local global i32 0, align 4
@dnd_targets = common dso_local global %struct.TYPE_5__* null, align 8
@TARGET_HTML = common dso_local global i64 0, align 8
@gui = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@GTK_DEST_DEFAULT_ALL = common dso_local global i32 0, align 4
@GDK_ACTION_COPY = common dso_local global i32 0, align 4
@GDK_ACTION_MOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_gtk_set_dnd_targets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %6 = load i32, i32* @N_DND_TARGETS, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @N_DND_TARGETS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca %struct.TYPE_5__, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %42, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @N_DND_TARGETS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load i32, i32* @clip_html, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dnd_targets, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TARGET_HTML, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %3, align 4
  br label %41

30:                                               ; preds = %18, %15
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dnd_targets, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = bitcast %struct.TYPE_5__* %34 to i8*
  %40 = bitcast %struct.TYPE_5__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 8, i1 false)
  br label %41

41:                                               ; preds = %30, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %11

45:                                               ; preds = %11
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 0), align 4
  %47 = call i32 @gtk_drag_dest_unset(i32 %46)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 0), align 4
  %49 = load i32, i32* @GTK_DEST_DEFAULT_ALL, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @GDK_ACTION_COPY, align 4
  %52 = load i32, i32* @GDK_ACTION_MOVE, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @gtk_drag_dest_set(i32 %48, i32 %49, %struct.TYPE_5__* %10, i32 %50, i32 %53)
  %55 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %55)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gtk_drag_dest_unset(i32) #3

declare dso_local i32 @gtk_drag_dest_set(i32, i32, %struct.TYPE_5__*, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
