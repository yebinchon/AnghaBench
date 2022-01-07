; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_ucis.c_process_ucis.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_ucis.c_process_ucis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@qk_ucis_state = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@UCIS_MAX_SYMBOL_LENGTH = common dso_local global i64 0, align 8
@KC_BSPC = common dso_local global i64 0, align 8
@KC_ESC = common dso_local global i64 0, align 8
@KC_SPC = common dso_local global i64 0, align 8
@KC_ENT = common dso_local global i64 0, align 8
@UNICODE_TYPE_DELAY = common dso_local global i32 0, align 4
@ucis_symbol_table = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_ucis(i64 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qk_ucis_state, i32 0, i32 0), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %134

11:                                               ; preds = %2
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qk_ucis_state, i32 0, i32 1), align 8
  %13 = load i64, i64* @UCIS_MAX_SYMBOL_LENGTH, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @KC_BSPC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @KC_ESC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @KC_SPC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @KC_ENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %134

32:                                               ; preds = %27, %23, %19, %15, %11
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %134

39:                                               ; preds = %32
  %40 = load i64, i64* %4, align 8
  %41 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qk_ucis_state, i32 0, i32 2), align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qk_ucis_state, i32 0, i32 1), align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %40, i64* %43, align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qk_ucis_state, i32 0, i32 1), align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qk_ucis_state, i32 0, i32 1), align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @KC_BSPC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %39
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qk_ucis_state, i32 0, i32 1), align 8
  %51 = icmp uge i64 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qk_ucis_state, i32 0, i32 1), align 8
  %54 = sub i64 %53, 2
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qk_ucis_state, i32 0, i32 1), align 8
  store i32 1, i32* %3, align 4
  br label %134

55:                                               ; preds = %49
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qk_ucis_state, i32 0, i32 1), align 8
  %57 = add i64 %56, -1
  store i64 %57, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qk_ucis_state, i32 0, i32 1), align 8
  store i32 0, i32* %3, align 4
  br label %134

58:                                               ; preds = %39
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @KC_ENT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @KC_SPC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @KC_ESC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %133

70:                                               ; preds = %66, %62, %58
  store i32 0, i32* %7, align 4
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qk_ucis_state, i32 0, i32 1), align 8
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %82, %70
  %73 = load i64, i64* %6, align 8
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i64, i64* @KC_BSPC, align 8
  %77 = call i32 @register_code(i64 %76)
  %78 = load i64, i64* @KC_BSPC, align 8
  %79 = call i32 @unregister_code(i64 %78)
  %80 = load i32, i32* @UNICODE_TYPE_DELAY, align 4
  %81 = call i32 @wait_ms(i32 %80)
  br label %82

82:                                               ; preds = %75
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %6, align 8
  br label %72

85:                                               ; preds = %72
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* @KC_ESC, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qk_ucis_state, i32 0, i32 0), align 8
  %90 = call i32 (...) @qk_ucis_cancel()
  store i32 0, i32* %3, align 4
  br label %134

91:                                               ; preds = %85
  %92 = call i32 (...) @unicode_input_start()
  store i64 0, i64* %6, align 8
  br label %93

93:                                               ; preds = %117, %91
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ucis_symbol_table, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %93
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ucis_symbol_table, align 8
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @is_uni_seq(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %100
  store i32 1, i32* %7, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ucis_symbol_table, align 8
  %110 = load i64, i64* %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 2
  %115 = call i32 @register_ucis(i64 %114)
  br label %120

116:                                              ; preds = %100
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %6, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %6, align 8
  br label %93

120:                                              ; preds = %108, %93
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = call i32 (...) @qk_ucis_symbol_fallback()
  br label %125

125:                                              ; preds = %123, %120
  %126 = call i32 (...) @unicode_input_finish()
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i64, i64* %6, align 8
  %131 = call i32 @qk_ucis_success(i64 %130)
  br label %132

132:                                              ; preds = %129, %125
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qk_ucis_state, i32 0, i32 0), align 8
  store i32 0, i32* %3, align 4
  br label %134

133:                                              ; preds = %66
  store i32 1, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %132, %89, %55, %52, %38, %31, %10
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @register_code(i64) #1

declare dso_local i32 @unregister_code(i64) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @qk_ucis_cancel(...) #1

declare dso_local i32 @unicode_input_start(...) #1

declare dso_local i64 @is_uni_seq(i64) #1

declare dso_local i32 @register_ucis(i64) #1

declare dso_local i32 @qk_ucis_symbol_fallback(...) #1

declare dso_local i32 @unicode_input_finish(...) #1

declare dso_local i32 @qk_ucis_success(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
