; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/plaid/keymaps/default/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/plaid/keymaps/default/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@led_config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@LEDMODE_MODS = common dso_local global i64 0, align 8
@LEDMODE_ENTER = common dso_local global i64 0, align 8
@LED_RED = common dso_local global i32 0, align 4
@LED_GREEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"mode just switched to qwerty and this is a huge string\0A\00", align 1
@_QWERTY = common dso_local global i32 0, align 4
@_COLEMAK = common dso_local global i32 0, align 4
@_DVORAK = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@_PLOVER = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@LEDMODE_ON = common dso_local global i8* null, align 8
@LEDMODE_OFF = common dso_local global i8* null, align 8
@LEDMODE_BLINKIN = common dso_local global i8* null, align 8
@LEDMODE_KEY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 0), align 8
  %7 = load i64, i64* @LEDMODE_MODS, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 0), align 8
  %11 = load i64, i64* @LEDMODE_ENTER, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i32, i32* @LED_RED, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 0), align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = call i32 @led_keypress_update(i32 %14, i64 %15, i32 %16, %struct.TYPE_8__* %17)
  br label %19

19:                                               ; preds = %13, %9, %2
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 1), align 8
  %21 = load i64, i64* @LEDMODE_MODS, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 1), align 8
  %25 = load i64, i64* @LEDMODE_ENTER, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @LED_GREEN, align 4
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 1), align 8
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = call i32 @led_keypress_update(i32 %28, i64 %29, i32 %30, %struct.TYPE_8__* %31)
  br label %33

33:                                               ; preds = %27, %23, %19
  %34 = load i32, i32* %4, align 4
  switch i32 %34, label %186 [
    i32 128, label %35
    i32 142, label %46
    i32 141, label %56
    i32 129, label %66
    i32 140, label %90
    i32 138, label %100
    i32 137, label %125
    i32 136, label %150
    i32 135, label %154
    i32 134, label %158
    i32 133, label %163
    i32 132, label %168
    i32 131, label %173
    i32 130, label %178
    i32 139, label %182
  ]

35:                                               ; preds = %33
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = call i32 @print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @_QWERTY, align 4
  %44 = call i32 @set_single_persistent_default_layer(i32 %43)
  br label %45

45:                                               ; preds = %41, %35
  store i32 0, i32* %3, align 4
  br label %187

46:                                               ; preds = %33
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @_COLEMAK, align 4
  %54 = call i32 @set_single_persistent_default_layer(i32 %53)
  br label %55

55:                                               ; preds = %52, %46
  store i32 0, i32* %3, align 4
  br label %187

56:                                               ; preds = %33
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @_DVORAK, align 4
  %64 = call i32 @set_single_persistent_default_layer(i32 %63)
  br label %65

65:                                               ; preds = %62, %56
  store i32 0, i32* %3, align 4
  br label %187

66:                                               ; preds = %33
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  %73 = load i32, i32* @_RAISE, align 4
  %74 = call i32 @layer_off(i32 %73)
  %75 = load i32, i32* @_LOWER, align 4
  %76 = call i32 @layer_off(i32 %75)
  %77 = load i32, i32* @_ADJUST, align 4
  %78 = call i32 @layer_off(i32 %77)
  %79 = load i32, i32* @_PLOVER, align 4
  %80 = call i32 @layer_on(i32 %79)
  %81 = call i32 (...) @eeconfig_is_enabled()
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %72
  %84 = call i32 (...) @eeconfig_init()
  br label %85

85:                                               ; preds = %83, %72
  %86 = call i32 (...) @eeconfig_read_keymap()
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @keymap_config, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @keymap_config, i32 0, i32 0), align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @keymap_config, i32 0, i32 1), align 4
  %88 = call i32 @eeconfig_update_keymap(i32 %87)
  br label %89

89:                                               ; preds = %85, %66
  store i32 0, i32* %3, align 4
  br label %187

90:                                               ; preds = %33
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* @_PLOVER, align 4
  %98 = call i32 @layer_off(i32 %97)
  br label %99

99:                                               ; preds = %96, %90
  store i32 0, i32* %3, align 4
  br label %187

100:                                              ; preds = %33
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 0), align 8
  %108 = inttoptr i64 %107 to i8*
  %109 = load i8*, i8** @LEDMODE_ON, align 8
  %110 = icmp eq i8* %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i8*, i8** @LEDMODE_OFF, align 8
  %113 = ptrtoint i8* %112 to i64
  store i64 %113, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 0), align 8
  %114 = load i32, i32* @LED_RED, align 4
  %115 = call i32 @writePinLow(i32 %114)
  br label %121

116:                                              ; preds = %106
  %117 = load i8*, i8** @LEDMODE_ON, align 8
  %118 = ptrtoint i8* %117 to i64
  store i64 %118, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 0), align 8
  %119 = load i32, i32* @LED_RED, align 4
  %120 = call i32 @writePinHigh(i32 %119)
  br label %121

121:                                              ; preds = %116, %111
  br label %122

122:                                              ; preds = %121, %100
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 2), align 8
  %124 = call i32 @eeconfig_update_user(i32 %123)
  store i32 0, i32* %3, align 4
  br label %187

125:                                              ; preds = %33
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %125
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 1), align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = load i8*, i8** @LEDMODE_ON, align 8
  %135 = icmp eq i8* %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load i8*, i8** @LEDMODE_OFF, align 8
  %138 = ptrtoint i8* %137 to i64
  store i64 %138, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 1), align 8
  %139 = load i32, i32* @LED_GREEN, align 4
  %140 = call i32 @writePinLow(i32 %139)
  br label %146

141:                                              ; preds = %131
  %142 = load i8*, i8** @LEDMODE_ON, align 8
  %143 = ptrtoint i8* %142 to i64
  store i64 %143, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 1), align 8
  %144 = load i32, i32* @LED_GREEN, align 4
  %145 = call i32 @writePinHigh(i32 %144)
  br label %146

146:                                              ; preds = %141, %136
  br label %147

147:                                              ; preds = %146, %125
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 2), align 8
  %149 = call i32 @eeconfig_update_user(i32 %148)
  store i32 0, i32* %3, align 4
  br label %187

150:                                              ; preds = %33
  %151 = load i64, i64* @LEDMODE_MODS, align 8
  store i64 %151, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 0), align 8
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 2), align 8
  %153 = call i32 @eeconfig_update_user(i32 %152)
  store i32 0, i32* %3, align 4
  br label %187

154:                                              ; preds = %33
  %155 = load i64, i64* @LEDMODE_MODS, align 8
  store i64 %155, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 1), align 8
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 2), align 8
  %157 = call i32 @eeconfig_update_user(i32 %156)
  store i32 0, i32* %3, align 4
  br label %187

158:                                              ; preds = %33
  %159 = load i8*, i8** @LEDMODE_BLINKIN, align 8
  %160 = ptrtoint i8* %159 to i64
  store i64 %160, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 0), align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 2), align 8
  %162 = call i32 @eeconfig_update_user(i32 %161)
  store i32 0, i32* %3, align 4
  br label %187

163:                                              ; preds = %33
  %164 = load i8*, i8** @LEDMODE_BLINKIN, align 8
  %165 = ptrtoint i8* %164 to i64
  store i64 %165, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 1), align 8
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 2), align 8
  %167 = call i32 @eeconfig_update_user(i32 %166)
  store i32 0, i32* %3, align 4
  br label %187

168:                                              ; preds = %33
  %169 = load i8*, i8** @LEDMODE_KEY, align 8
  %170 = ptrtoint i8* %169 to i64
  store i64 %170, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 0), align 8
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 2), align 8
  %172 = call i32 @eeconfig_update_user(i32 %171)
  store i32 0, i32* %3, align 4
  br label %187

173:                                              ; preds = %33
  %174 = load i8*, i8** @LEDMODE_KEY, align 8
  %175 = ptrtoint i8* %174 to i64
  store i64 %175, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 1), align 8
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 2), align 8
  %177 = call i32 @eeconfig_update_user(i32 %176)
  store i32 0, i32* %3, align 4
  br label %187

178:                                              ; preds = %33
  %179 = load i64, i64* @LEDMODE_ENTER, align 8
  store i64 %179, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 0), align 8
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 2), align 8
  %181 = call i32 @eeconfig_update_user(i32 %180)
  store i32 0, i32* %3, align 4
  br label %187

182:                                              ; preds = %33
  %183 = load i64, i64* @LEDMODE_ENTER, align 8
  store i64 %183, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 1), align 8
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @led_config, i32 0, i32 2), align 8
  %185 = call i32 @eeconfig_update_user(i32 %184)
  store i32 0, i32* %3, align 4
  br label %187

186:                                              ; preds = %33
  store i32 1, i32* %3, align 4
  br label %187

187:                                              ; preds = %186, %182, %178, %173, %168, %163, %158, %154, %150, %147, %122, %99, %89, %65, %55, %45
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @led_keypress_update(i32, i64, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_read_keymap(...) #1

declare dso_local i32 @eeconfig_update_keymap(i32) #1

declare dso_local i32 @writePinLow(i32) #1

declare dso_local i32 @writePinHigh(i32) #1

declare dso_local i32 @eeconfig_update_user(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
