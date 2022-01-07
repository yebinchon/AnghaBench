; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_set_mode.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }

@state = common dso_local global %struct.TYPE_4__* null, align 8
@LIBRARY_NOT_INITIALIZED_ERROR_MSG = common dso_local global i32 0, align 4
@ws2812_effects_set_mode.opts = internal constant [18 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"blink\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"gradient\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"gradient_rgb\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"random_color\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"rainbow\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"rainbow_cycle\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"flicker\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"fire\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"fire_soft\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"fire_intense\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"halloween\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"circus_combustus\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"larson_scanner\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"cycle\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"color_wipe\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"random_dot\00", align 1
@EFFECT_PARAM_INVALID = common dso_local global i32 0, align 4
@LUA_TNONE = common dso_local global i32 0, align 4
@LUA_TNIL = common dso_local global i32 0, align 4
@LUA_TNUMBER = common dso_local global i32 0, align 4
@LUA_TSTRING = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [59 x i8] c"must be at least two colors and same size as buffer colors\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"string expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ws2812_effects_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws2812_effects_set_mode(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @LIBRARY_NOT_INITIALIZED_ERROR_MSG, align 4
  %18 = call i32 @luaL_argcheck(i32* %13, i32 %16, i32 1, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @luaL_checkoption(i32* %19, i32 1, i32* null, i8** getelementptr inbounds ([18 x i8*], [18 x i8*]* @ws2812_effects_set_mode.opts, i64 0, i64 0))
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @EFFECT_PARAM_INVALID, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_type(i32* %25, i32 2)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @LUA_TNONE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @LUA_TNIL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %1
  br label %44

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @LUA_TNUMBER, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @EFFECT_PARAM_INVALID, align 4
  %42 = call i32 @luaL_optinteger(i32* %40, i32 2, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %34
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %194 [
    i32 128, label %50
    i32 144, label %54
    i32 136, label %56
    i32 135, label %95
    i32 130, label %134
    i32 132, label %136
    i32 131, label %138
    i32 137, label %148
    i32 140, label %152
    i32 138, label %152
    i32 139, label %152
    i32 134, label %169
    i32 143, label %171
    i32 133, label %173
    i32 141, label %175
    i32 142, label %184
    i32 129, label %188
  ]

50:                                               ; preds = %44
  %51 = call i32 (...) @ws2812_effects_fill_color()
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 250, i32* %53, align 4
  br label %194

54:                                               ; preds = %44
  %55 = call i32 (...) @ws2812_effects_mode_blink()
  br label %194

56:                                               ; preds = %44
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @LUA_TSTRING, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %56
  %61 = load i32*, i32** %3, align 8
  %62 = call i8* @lua_tolstring(i32* %61, i32 2, i64* %7)
  store i8* %62, i8** %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = udiv i64 %63, %68
  %70 = icmp ult i64 %69, 2
  br i1 %70, label %80, label %71

71:                                               ; preds = %60
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = urem i64 %72, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71, %60
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @luaL_argerror(i32* %81, i32 2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %71
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @ws2812_effects_gradient(i8* %84, i64 %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = call i32 @ws2812_write(%struct.TYPE_3__* %89)
  br label %94

91:                                               ; preds = %56
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @luaL_argerror(i32* %92, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %83
  br label %194

95:                                               ; preds = %44
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @LUA_TSTRING, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %130

99:                                               ; preds = %95
  %100 = load i32*, i32** %3, align 8
  %101 = call i8* @lua_tolstring(i32* %100, i32 2, i64* %9)
  store i8* %101, i8** %10, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = udiv i64 %102, %107
  %109 = icmp ult i64 %108, 2
  br i1 %109, label %119, label %110

110:                                              ; preds = %99
  %111 = load i64, i64* %9, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = urem i64 %111, %116
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %110, %99
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @luaL_argerror(i32* %120, i32 2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %110
  %123 = load i8*, i8** %10, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @ws2812_effects_gradient_rgb(i8* %123, i64 %124)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = call i32 @ws2812_write(%struct.TYPE_3__* %128)
  br label %133

130:                                              ; preds = %95
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @luaL_argerror(i32* %131, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %122
  br label %194

134:                                              ; preds = %44
  %135 = call i32 (...) @ws2812_effects_mode_random_color()
  br label %194

136:                                              ; preds = %44
  %137 = call i32 (...) @ws2812_effects_mode_rainbow()
  br label %194

138:                                              ; preds = %44
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @EFFECT_PARAM_INVALID, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i32, i32* %5, align 4
  br label %145

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ 1, %144 ]
  %147 = call i32 @ws2812_effects_mode_rainbow_cycle(i32 %146)
  br label %194

148:                                              ; preds = %44
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  br label %194

152:                                              ; preds = %44, %44, %44
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 215, i32* %156, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 255, i32* %160, align 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 2
  store i32 40, i32* %164, align 4
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 3
  store i32 0, i32* %168, align 4
  br label %194

169:                                              ; preds = %44
  %170 = call i32 (...) @ws2812_effects_mode_halloween()
  br label %194

171:                                              ; preds = %44
  %172 = call i32 (...) @ws2812_effects_mode_circus_combustus()
  br label %194

173:                                              ; preds = %44
  %174 = call i32 (...) @ws2812_effects_mode_larson_scanner()
  br label %194

175:                                              ; preds = %44
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @EFFECT_PARAM_INVALID, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load i32, i32* %5, align 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %179, %175
  br label %194

184:                                              ; preds = %44
  store i32 0, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = call i32 @ws2812_effects_fill_buffer(i32 %185)
  %187 = call i32 (...) @ws2812_effects_mode_color_wipe()
  br label %194

188:                                              ; preds = %44
  %189 = load i32, i32* %5, align 4
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  store i32 0, i32* %12, align 4
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @ws2812_effects_fill_buffer(i32 %192)
  br label %194

194:                                              ; preds = %44, %188, %184, %183, %173, %171, %169, %152, %148, %145, %136, %134, %133, %94, %54, %50
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i32) #1

declare dso_local i32 @luaL_checkoption(i32*, i32, i32*, i8**) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @ws2812_effects_fill_color(...) #1

declare dso_local i32 @ws2812_effects_mode_blink(...) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @ws2812_effects_gradient(i8*, i64) #1

declare dso_local i32 @ws2812_write(%struct.TYPE_3__*) #1

declare dso_local i32 @ws2812_effects_gradient_rgb(i8*, i64) #1

declare dso_local i32 @ws2812_effects_mode_random_color(...) #1

declare dso_local i32 @ws2812_effects_mode_rainbow(...) #1

declare dso_local i32 @ws2812_effects_mode_rainbow_cycle(i32) #1

declare dso_local i32 @ws2812_effects_mode_halloween(...) #1

declare dso_local i32 @ws2812_effects_mode_circus_combustus(...) #1

declare dso_local i32 @ws2812_effects_mode_larson_scanner(...) #1

declare dso_local i32 @ws2812_effects_fill_buffer(i32) #1

declare dso_local i32 @ws2812_effects_mode_color_wipe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
