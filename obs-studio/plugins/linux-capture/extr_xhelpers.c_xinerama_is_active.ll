; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xhelpers.c_xinerama_is_active.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xhelpers.c_xinerama_is_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@xcb_xinerama_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xinerama_is_active(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_6__* @xcb_get_extension_data(i32* %10, i32* @xcb_xinerama_id)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %34

16:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @xcb_xinerama_is_active_unchecked(i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.TYPE_5__* @xcb_xinerama_is_active_reply(i32* %19, i32 %20, i32* null)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %6, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %16
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = call i32 @free(%struct.TYPE_5__* %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.TYPE_6__* @xcb_get_extension_data(i32*, i32*) #1

declare dso_local i32 @xcb_xinerama_is_active_unchecked(i32*) #1

declare dso_local %struct.TYPE_5__* @xcb_xinerama_is_active_reply(i32*, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
