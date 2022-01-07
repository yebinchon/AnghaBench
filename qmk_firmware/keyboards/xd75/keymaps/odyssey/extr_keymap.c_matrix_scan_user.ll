; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/odyssey/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/odyssey/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rgb = common dso_local global i32 0, align 4
@rc = common dso_local global i64 0, align 8
@speed = common dso_local global i64 0, align 8
@t = common dso_local global i32 0, align 4
@led = common dso_local global i32* null, align 8
@col = common dso_local global i32 0, align 4
@right = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @rgb, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %112

6:                                                ; preds = %0
  %7 = load i32, i32* @rgb, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %38

9:                                                ; preds = %6
  %10 = load i64, i64* @rc, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load i64, i64* @speed, align 8
  store i64 %13, i64* @rc, align 8
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %28, %12
  %15 = load i32, i32* %1, align 4
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32, i32* @t, align 4
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %18, %19
  %21 = srem i32 %20, 6
  %22 = mul nsw i32 42, %21
  %23 = load i32*, i32** @led, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @sethsv(i32 %22, i32 255, i32 255, i32* %26)
  br label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %14

31:                                               ; preds = %14
  %32 = call i32 (...) @rgblight_set()
  %33 = load i32, i32* @t, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @t, align 4
  %35 = load i32, i32* @t, align 4
  %36 = srem i32 %35, 6
  store i32 %36, i32* @t, align 4
  br label %37

37:                                               ; preds = %31, %9
  br label %109

38:                                               ; preds = %6
  %39 = load i32, i32* @rgb, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %108

41:                                               ; preds = %38
  %42 = load i64, i64* @rc, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %107

44:                                               ; preds = %41
  %45 = load i64, i64* @speed, align 8
  store i64 %45, i64* @rc, align 8
  %46 = load i32, i32* @col, align 4
  %47 = add nsw i32 %46, 1
  %48 = srem i32 %47, 36
  store i32 %48, i32* @col, align 4
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %90, %44
  %50 = load i32, i32* %2, align 4
  %51 = icmp slt i32 %50, 6
  br i1 %51, label %52, label %93

52:                                               ; preds = %49
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @t, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = load i32, i32* @col, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sdiv i32 %58, 6
  %60 = srem i32 %59, 6
  %61 = mul nsw i32 42, %60
  %62 = load i32*, i32** @led, align 8
  %63 = load i32, i32* @right, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @t, align 4
  br label %70

67:                                               ; preds = %56
  %68 = load i32, i32* @t, align 4
  %69 = sub nsw i32 5, %68
  br label %70

70:                                               ; preds = %67, %65
  %71 = phi i32 [ %66, %65 ], [ %69, %67 ]
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %62, i64 %72
  %74 = call i32 @sethsv(i32 %61, i32 255, i32 255, i32* %73)
  br label %89

75:                                               ; preds = %52
  %76 = load i32*, i32** @led, align 8
  %77 = load i32, i32* @right, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %2, align 4
  br label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %2, align 4
  %83 = sub nsw i32 5, %82
  br label %84

84:                                               ; preds = %81, %79
  %85 = phi i32 [ %80, %79 ], [ %83, %81 ]
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %76, i64 %86
  %88 = call i32 @sethsv(i32 0, i32 0, i32 0, i32* %87)
  br label %89

89:                                               ; preds = %84, %70
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %2, align 4
  br label %49

93:                                               ; preds = %49
  %94 = call i32 (...) @rgblight_set()
  %95 = load i32, i32* @t, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @t, align 4
  %97 = load i32, i32* @t, align 4
  %98 = srem i32 %97, 6
  store i32 %98, i32* @t, align 4
  %99 = load i32, i32* @t, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load i32, i32* @right, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  store i32 %105, i32* @right, align 4
  br label %106

106:                                              ; preds = %101, %93
  br label %107

107:                                              ; preds = %106, %41
  br label %108

108:                                              ; preds = %107, %38
  br label %109

109:                                              ; preds = %108, %37
  %110 = load i64, i64* @rc, align 8
  %111 = add nsw i64 %110, -1
  store i64 %111, i64* @rc, align 8
  br label %112

112:                                              ; preds = %109, %5
  ret void
}

declare dso_local i32 @sethsv(i32, i32, i32, i32*) #1

declare dso_local i32 @rgblight_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
