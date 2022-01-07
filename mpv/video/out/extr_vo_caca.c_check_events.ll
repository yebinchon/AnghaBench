; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_caca.c_check_events.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_caca.c_check_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, %struct.priv* }
%struct.priv = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@CACA_EVENT_ANY = common dso_local global i32 0, align 4
@MP_KEY_CLOSE_WIN = common dso_local global i32 0, align 4
@MP_MBTN_BASE = common dso_local global i64 0, align 8
@MP_KEY_STATE_DOWN = common dso_local global i32 0, align 4
@MP_KEY_STATE_UP = common dso_local global i32 0, align 4
@keysym_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @check_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_events(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %8 = load %struct.vo*, %struct.vo** %2, align 8
  %9 = getelementptr inbounds %struct.vo, %struct.vo* %8, i32 0, i32 1
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %3, align 8
  br label %11

11:                                               ; preds = %169, %1
  %12 = load %struct.priv*, %struct.priv** %3, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CACA_EVENT_ANY, align 4
  %16 = call i64 @caca_get_event(i32 %14, i32 %15, %struct.TYPE_9__* %4, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %170

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %169 [
    i32 128, label %21
    i32 129, label %28
    i32 132, label %34
    i32 131, label %47
    i32 130, label %63
    i32 133, label %79
  ]

21:                                               ; preds = %18
  %22 = load %struct.priv*, %struct.priv** %3, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @caca_refresh_display(i32 %24)
  %26 = load %struct.vo*, %struct.vo** %2, align 8
  %27 = call i32 @resize(%struct.vo* %26)
  br label %169

28:                                               ; preds = %18
  %29 = load %struct.vo*, %struct.vo** %2, align 8
  %30 = getelementptr inbounds %struct.vo, %struct.vo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MP_KEY_CLOSE_WIN, align 4
  %33 = call i32 @mp_input_put_key(i32 %31, i32 %32)
  br label %169

34:                                               ; preds = %18
  %35 = load %struct.vo*, %struct.vo** %2, align 8
  %36 = getelementptr inbounds %struct.vo, %struct.vo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @mp_input_set_mouse_pos(i32 %37, i32 %41, i32 %45)
  br label %169

47:                                               ; preds = %18
  %48 = load %struct.vo*, %struct.vo** %2, align 8
  %49 = getelementptr inbounds %struct.vo, %struct.vo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* @MP_MBTN_BASE, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %51, %55
  %57 = sub nsw i64 %56, 1
  %58 = load i32, i32* @MP_KEY_STATE_DOWN, align 4
  %59 = sext i32 %58 to i64
  %60 = or i64 %57, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @mp_input_put_key(i32 %50, i32 %61)
  br label %169

63:                                               ; preds = %18
  %64 = load %struct.vo*, %struct.vo** %2, align 8
  %65 = getelementptr inbounds %struct.vo, %struct.vo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* @MP_MBTN_BASE, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %67, %71
  %73 = sub nsw i64 %72, 1
  %74 = load i32, i32* @MP_KEY_STATE_UP, align 4
  %75 = sext i32 %74 to i64
  %76 = or i64 %73, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @mp_input_put_key(i32 %66, i32 %77)
  br label %169

79:                                               ; preds = %18
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @keysym_map, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @lookup_keymap_table(i32 %84, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load %struct.vo*, %struct.vo** %2, align 8
  %91 = getelementptr inbounds %struct.vo, %struct.vo* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @mp_input_put_key(i32 %92, i32 %93)
  br label %168

95:                                               ; preds = %79
  %96 = load i32, i32* %5, align 4
  switch i32 %96, label %157 [
    i32 100, label %97
    i32 68, label %97
    i32 97, label %112
    i32 65, label %112
    i32 104, label %127
    i32 72, label %127
    i32 99, label %142
    i32 67, label %142
  ]

97:                                               ; preds = %95, %95
  %98 = load %struct.priv*, %struct.priv** %3, align 8
  %99 = getelementptr inbounds %struct.priv, %struct.priv* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @caca_get_dither_algorithm_list(i32 %100)
  %102 = load %struct.priv*, %struct.priv** %3, align 8
  %103 = getelementptr inbounds %struct.priv, %struct.priv* %102, i32 0, i32 4
  %104 = call i32 @set_next_str(i32 %101, i32* %103, i8** %7)
  %105 = load %struct.priv*, %struct.priv** %3, align 8
  %106 = getelementptr inbounds %struct.priv, %struct.priv* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.priv*, %struct.priv** %3, align 8
  %109 = getelementptr inbounds %struct.priv, %struct.priv* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @caca_set_dither_algorithm(i32 %107, i32 %110)
  br label %167

112:                                              ; preds = %95, %95
  %113 = load %struct.priv*, %struct.priv** %3, align 8
  %114 = getelementptr inbounds %struct.priv, %struct.priv* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @caca_get_dither_antialias_list(i32 %115)
  %117 = load %struct.priv*, %struct.priv** %3, align 8
  %118 = getelementptr inbounds %struct.priv, %struct.priv* %117, i32 0, i32 3
  %119 = call i32 @set_next_str(i32 %116, i32* %118, i8** %7)
  %120 = load %struct.priv*, %struct.priv** %3, align 8
  %121 = getelementptr inbounds %struct.priv, %struct.priv* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.priv*, %struct.priv** %3, align 8
  %124 = getelementptr inbounds %struct.priv, %struct.priv* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @caca_set_dither_antialias(i32 %122, i32 %125)
  br label %167

127:                                              ; preds = %95, %95
  %128 = load %struct.priv*, %struct.priv** %3, align 8
  %129 = getelementptr inbounds %struct.priv, %struct.priv* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @caca_get_dither_charset_list(i32 %130)
  %132 = load %struct.priv*, %struct.priv** %3, align 8
  %133 = getelementptr inbounds %struct.priv, %struct.priv* %132, i32 0, i32 2
  %134 = call i32 @set_next_str(i32 %131, i32* %133, i8** %7)
  %135 = load %struct.priv*, %struct.priv** %3, align 8
  %136 = getelementptr inbounds %struct.priv, %struct.priv* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.priv*, %struct.priv** %3, align 8
  %139 = getelementptr inbounds %struct.priv, %struct.priv* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @caca_set_dither_charset(i32 %137, i32 %140)
  br label %167

142:                                              ; preds = %95, %95
  %143 = load %struct.priv*, %struct.priv** %3, align 8
  %144 = getelementptr inbounds %struct.priv, %struct.priv* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @caca_get_dither_color_list(i32 %145)
  %147 = load %struct.priv*, %struct.priv** %3, align 8
  %148 = getelementptr inbounds %struct.priv, %struct.priv* %147, i32 0, i32 0
  %149 = call i32 @set_next_str(i32 %146, i32* %148, i8** %7)
  %150 = load %struct.priv*, %struct.priv** %3, align 8
  %151 = getelementptr inbounds %struct.priv, %struct.priv* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.priv*, %struct.priv** %3, align 8
  %154 = getelementptr inbounds %struct.priv, %struct.priv* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @caca_set_dither_color(i32 %152, i32 %155)
  br label %167

157:                                              ; preds = %95
  %158 = load i32, i32* %5, align 4
  %159 = icmp sle i32 %158, 255
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load %struct.vo*, %struct.vo** %2, align 8
  %162 = getelementptr inbounds %struct.vo, %struct.vo* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @mp_input_put_key(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %160, %157
  br label %167

167:                                              ; preds = %166, %142, %127, %112, %97
  br label %168

168:                                              ; preds = %167, %89
  br label %169

169:                                              ; preds = %168, %18, %63, %47, %34, %28, %21
  br label %11

170:                                              ; preds = %11
  ret void
}

declare dso_local i64 @caca_get_event(i32, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @caca_refresh_display(i32) #1

declare dso_local i32 @resize(%struct.vo*) #1

declare dso_local i32 @mp_input_put_key(i32, i32) #1

declare dso_local i32 @mp_input_set_mouse_pos(i32, i32, i32) #1

declare dso_local i32 @lookup_keymap_table(i32, i32) #1

declare dso_local i32 @set_next_str(i32, i32*, i8**) #1

declare dso_local i32 @caca_get_dither_algorithm_list(i32) #1

declare dso_local i32 @caca_set_dither_algorithm(i32, i32) #1

declare dso_local i32 @caca_get_dither_antialias_list(i32) #1

declare dso_local i32 @caca_set_dither_antialias(i32, i32) #1

declare dso_local i32 @caca_get_dither_charset_list(i32) #1

declare dso_local i32 @caca_set_dither_charset(i32, i32) #1

declare dso_local i32 @caca_get_dither_color_list(i32) #1

declare dso_local i32 @caca_set_dither_color(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
