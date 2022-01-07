; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_key_pressed.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_key_pressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.keycode_list* }
%struct.keycode_list = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"xcb_query_keymap failed\00", align 1
@OBS_KEY_META = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i64)* @key_pressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_pressed(i32* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.keycode_list*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load %struct.keycode_list*, %struct.keycode_list** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.keycode_list, %struct.keycode_list* %14, i64 %15
  store %struct.keycode_list* %16, %struct.keycode_list** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @xcb_query_keymap(i32* %18)
  %20 = call i32* @xcb_query_keymap_reply(i32* %17, i32 %19, i32** %8)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @LOG_WARNING, align 4
  %25 = call i32 @blog(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %73

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @OBS_KEY_META, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @keycode_pressed(i32* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @keycode_pressed(i32* %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %37, %30
  %45 = phi i1 [ true, %30 ], [ %43, %37 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %10, align 4
  br label %72

47:                                               ; preds = %26
  store i64 0, i64* %11, align 8
  br label %48

48:                                               ; preds = %68, %47
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.keycode_list*, %struct.keycode_list** %7, align 8
  %51 = getelementptr inbounds %struct.keycode_list, %struct.keycode_list* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %49, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.keycode_list*, %struct.keycode_list** %7, align 8
  %58 = getelementptr inbounds %struct.keycode_list, %struct.keycode_list* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @keycode_pressed(i32* %56, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  br label %71

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %48

71:                                               ; preds = %66, %48
  br label %72

72:                                               ; preds = %71, %44
  br label %73

73:                                               ; preds = %72, %23
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @free(i32* %74)
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @free(i32* %76)
  %78 = load i32, i32* %10, align 4
  ret i32 %78
}

declare dso_local i32* @xcb_query_keymap_reply(i32*, i32, i32**) #1

declare dso_local i32 @xcb_query_keymap(i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i64 @keycode_pressed(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
