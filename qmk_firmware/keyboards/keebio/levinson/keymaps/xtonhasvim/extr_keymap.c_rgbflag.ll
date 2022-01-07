; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/levinson/keymaps/xtonhasvim/extr_keymap.c_rgbflag.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/levinson/keymaps/xtonhasvim/extr_keymap.c_rgbflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8* }

@user_rgb_mode = common dso_local global i64 0, align 8
@shadowed_led = common dso_local global %struct.TYPE_4__* null, align 8
@led = common dso_local global %struct.TYPE_4__* null, align 8
@RGBLED_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgbflag(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i64, i64* @user_rgb_mode, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shadowed_led, align 8
  br label %21

19:                                               ; preds = %6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi %struct.TYPE_4__* [ %18, %17 ], [ %20, %19 ]
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %13, align 8
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %84, %21
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @RGBLED_NUM, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %87

27:                                               ; preds = %23
  %28 = load i32, i32* %14, align 4
  switch i32 %28, label %67 [
    i32 10, label %29
    i32 11, label %29
    i32 0, label %48
    i32 1, label %48
  ]

29:                                               ; preds = %27, %27
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i8* %30, i8** %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i8* %36, i8** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i8* %42, i8** %47, align 8
  br label %83

48:                                               ; preds = %27, %27
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i8* %49, i8** %54, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i8* %55, i8** %60, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i8* %61, i8** %66, align 8
  br label %83

67:                                               ; preds = %27
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i8* null, i8** %72, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i8* null, i8** %77, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i8* null, i8** %82, align 8
  br label %83

83:                                               ; preds = %67, %48, %29
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %23

87:                                               ; preds = %23
  %88 = call i32 (...) @rgblight_set()
  ret void
}

declare dso_local i32 @rgblight_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
