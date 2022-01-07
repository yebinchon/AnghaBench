; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_feed_key.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_feed_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32, double, %struct.input_opts* }
%struct.input_opts = type { double, i32 }

@MP_KEY_MODIFIER_MASK = common dso_local global i32 0, align 4
@MP_INPUT_RELEASE_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"release all\0A\00", align 1
@MP_KEY_MOUSE_LEAVE = common dso_local global i32 0, align 4
@MP_KEY_MOUSE_ENTER = common dso_local global i32 0, align 4
@MP_KEY_STATE_DOWN = common dso_local global i32 0, align 4
@MP_MBTN_LEFT = common dso_local global i32 0, align 4
@MP_MBTN_RIGHT = common dso_local global i32 0, align 4
@MP_MBTN_BASE = common dso_local global i32 0, align 4
@MP_MBTN_DBL_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_ctx*, i32, double, i32)* @mp_input_feed_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_input_feed_key(%struct.input_ctx* %0, i32 %1, double %2, i32 %3) #0 {
  %5 = alloca %struct.input_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.input_opts*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store %struct.input_ctx* %0, %struct.input_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %13, i32 0, i32 2
  %15 = load %struct.input_opts*, %struct.input_opts** %14, align 8
  store %struct.input_opts* %15, %struct.input_opts** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @mp_normalize_keycode(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MP_KEY_MODIFIER_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MP_INPUT_RELEASE_ALL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %27 = call i32 @MP_TRACE(%struct.input_ctx* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %29 = call i32 @release_down_cmd(%struct.input_ctx* %28, i32 0)
  br label %139

30:                                               ; preds = %4
  %31 = load %struct.input_opts*, %struct.input_opts** %9, align 8
  %32 = getelementptr inbounds %struct.input_opts, %struct.input_opts* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @MP_KEY_IS_MOUSE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %139

43:                                               ; preds = %39, %35, %30
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @MP_KEY_MOUSE_LEAVE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @MP_KEY_MOUSE_ENTER, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47, %43
  %52 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %53 = call i32 @update_mouse_section(%struct.input_ctx* %52)
  %54 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %55 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @get_cmd_from_keys(%struct.input_ctx* %55, i32* null, i32 %56)
  %58 = call i32 @mp_input_queue_cmd(%struct.input_ctx* %54, i32 %57)
  br label %139

59:                                               ; preds = %47
  %60 = call double (...) @mp_time_sec()
  store double %60, double* %11, align 8
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %59
  %64 = load %struct.input_opts*, %struct.input_opts** %9, align 8
  %65 = getelementptr inbounds %struct.input_opts, %struct.input_opts* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = fcmp une double %66, 0.000000e+00
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @MP_KEY_IS_MOUSE_BTN_DBL(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %139

73:                                               ; preds = %68, %63, %59
  store i32 1, i32* %12, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @MP_KEY_IS_WHEEL(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @process_wheel(%struct.input_ctx* %78, i32 %79, double* %7, i32* %12)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %139

83:                                               ; preds = %77, %73
  %84 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load double, double* %7, align 8
  %87 = fptosi double %86 to i32
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @interpret_key(%struct.input_ctx* %84, i32 %85, i32 %87, i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @MP_KEY_STATE_DOWN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %139

94:                                               ; preds = %83
  %95 = load i32, i32* @MP_KEY_STATE_DOWN, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %100 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %94
  %105 = load double, double* %11, align 8
  %106 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %107 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %106, i32 0, i32 1
  %108 = load double, double* %107, align 8
  %109 = fsub double %105, %108
  %110 = load %struct.input_opts*, %struct.input_opts** %9, align 8
  %111 = getelementptr inbounds %struct.input_opts, %struct.input_opts* %110, i32 0, i32 0
  %112 = load double, double* %111, align 8
  %113 = fdiv double %112, 1.000000e+03
  %114 = fcmp olt double %109, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %104
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @MP_MBTN_LEFT, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @MP_MBTN_RIGHT, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @MP_MBTN_BASE, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load i32, i32* @MP_MBTN_DBL_BASE, align 4
  %129 = add nsw i32 %127, %128
  %130 = call i32 @interpret_key(%struct.input_ctx* %124, i32 %129, i32 1, i32 1)
  br label %131

131:                                              ; preds = %123, %119, %115
  br label %132

132:                                              ; preds = %131, %104, %94
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %135 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load double, double* %11, align 8
  %137 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %138 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %137, i32 0, i32 1
  store double %136, double* %138, align 8
  br label %139

139:                                              ; preds = %25, %42, %51, %72, %82, %132, %83
  ret void
}

declare dso_local i32 @mp_normalize_keycode(i32) #1

declare dso_local i32 @MP_TRACE(%struct.input_ctx*, i8*) #1

declare dso_local i32 @release_down_cmd(%struct.input_ctx*, i32) #1

declare dso_local i64 @MP_KEY_IS_MOUSE(i32) #1

declare dso_local i32 @update_mouse_section(%struct.input_ctx*) #1

declare dso_local i32 @mp_input_queue_cmd(%struct.input_ctx*, i32) #1

declare dso_local i32 @get_cmd_from_keys(%struct.input_ctx*, i32*, i32) #1

declare dso_local double @mp_time_sec(...) #1

declare dso_local i64 @MP_KEY_IS_MOUSE_BTN_DBL(i32) #1

declare dso_local i64 @MP_KEY_IS_WHEEL(i32) #1

declare dso_local i32 @process_wheel(%struct.input_ctx*, i32, double*, i32*) #1

declare dso_local i32 @interpret_key(%struct.input_ctx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
