; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_lights.c_set_key_led.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_lights.c_set_key_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@set_key_led.base = internal global i32 5, align 4
@active_key_pos = common dso_local global i32* null, align 8
@_PC = common dso_local global i32* null, align 8
@led_dim = common dso_local global i32 0, align 4
@_LC = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_key_led(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 5
  br i1 %19, label %20, label %41

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = srem i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @set_key_led.base, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  br label %39

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @set_key_led.base, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* @set_key_led.base, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  %37 = sub nsw i32 %34, %36
  %38 = add nsw i32 %33, %37
  br label %39

39:                                               ; preds = %30, %24
  %40 = phi i32 [ %29, %24 ], [ %38, %30 ]
  store i32 %40, i32* %7, align 4
  br label %62

41:                                               ; preds = %2
  %42 = load i32, i32* %5, align 4
  %43 = srem i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @set_key_led.base, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* @set_key_led.base, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  %52 = sub nsw i32 %49, %51
  %53 = add nsw i32 %48, %52
  br label %60

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @set_key_led.base, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  br label %60

60:                                               ; preds = %54, %45
  %61 = phi i32 [ %53, %45 ], [ %59, %54 ]
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %39
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load i32*, i32** @active_key_pos, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 1, i32* %72, align 4
  %73 = load i32*, i32** @_PC, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** @_PC, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** @_PC, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @led_dim, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @SET_LED_RGB(i32 %75, i32 %78, i32 %81, i32 %82, i32 %83)
  br label %114

85:                                               ; preds = %62
  %86 = load i32*, i32** @active_key_pos, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 0, i32* %89, align 4
  %90 = load i32**, i32*** @_LC, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32**, i32*** @_LC, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32**, i32*** @_LC, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @led_dim, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @SET_LED_RGB(i32 %96, i32 %103, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %85, %68
  ret void
}

declare dso_local i32 @SET_LED_RGB(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
