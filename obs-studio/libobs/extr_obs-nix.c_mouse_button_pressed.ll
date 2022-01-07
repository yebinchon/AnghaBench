; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_mouse_button_pressed.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_mouse_button_pressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i32*, i32* }
%struct.TYPE_14__ = type { i32, i32 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"xcb_query_pointer_reply failed\00", align 1
@XCB_BUTTON_MASK_1 = common dso_local global i32 0, align 4
@XCB_BUTTON_MASK_3 = common dso_local global i32 0, align 4
@XCB_BUTTON_MASK_2 = common dso_local global i32 0, align 4
@XCB_GE_GENERIC = common dso_local global i32 0, align 4
@XINPUT_MOUSE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_18__*, i32)* @mouse_button_pressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mouse_button_pressed(i32* %0, %struct.TYPE_18__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @root_window(%struct.TYPE_18__* %13, i32* %14)
  %16 = call i32 @xcb_query_pointer(i32* %12, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.TYPE_14__* @xcb_query_pointer_reply(i32* %17, i32 %18, %struct.TYPE_14__** %8)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %10, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @LOG_WARNING, align 4
  %24 = call i32 @blog(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %44

25:                                               ; preds = %3
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %42 [
    i32 158, label %30
    i32 147, label %34
    i32 136, label %38
  ]

30:                                               ; preds = %25
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @XCB_BUTTON_MASK_1, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %7, align 4
  br label %43

34:                                               ; preds = %25
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @XCB_BUTTON_MASK_3, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %7, align 4
  br label %43

38:                                               ; preds = %25
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @XCB_BUTTON_MASK_2, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %7, align 4
  br label %43

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %38, %34, %30
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %46 = call i32 @free(%struct.TYPE_14__* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = call i32 @free(%struct.TYPE_14__* %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @xcb_query_pointer(i32*, i32) #1

declare dso_local i32 @root_window(%struct.TYPE_18__*, i32*) #1

declare dso_local %struct.TYPE_14__* @xcb_query_pointer_reply(i32*, i32, %struct.TYPE_14__**) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
