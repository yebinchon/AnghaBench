; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_rotary.c_lrotary_setup.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_rotary.c_lrotary_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32 }

@rotary = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unable to close switch.\00", align 1
@ROTARY_ALL = common dso_local global i32 0, align 4
@data = common dso_local global %struct.TYPE_4__** null, align 8
@lrotary_timer_done = common dso_local global i32 0, align 4
@SWTIMER_RESUME = common dso_local global i32 0, align 4
@CALLBACK_COUNT = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i32 0, align 4
@CLICK_DELAY_US = common dso_local global i32 0, align 4
@LONGPRESS_DELAY_US = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Invalid pin\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Invalid timeout\00", align 1
@tasknumber = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Unable to setup rotary switch.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lrotary_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lrotary_setup(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_checkinteger(i32* %10, i32 1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @rotary, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @MOD_CHECK_ID(i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @rotary_close(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @luaL_error(i32* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %179

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ROTARY_ALL, align 4
  %25 = call i32 @callback_free(i32* %22, i32 %23, i32 %24)
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @data, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %21
  %33 = call i64 @calloc(i32 1, i32 32)
  %34 = inttoptr i64 %33 to %struct.TYPE_4__*
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @data, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %38, align 8
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @data, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %179

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @data, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %5, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = call i32 @memset(%struct.TYPE_4__* %53, i32 0, i32 32)
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32, i32* @lrotary_timer_done, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = bitcast %struct.TYPE_4__* %61 to i8*
  %63 = call i32 @os_timer_setfn(i32* %59, i32 %60, i8* %62)
  %64 = load i32, i32* @lrotary_timer_done, align 4
  %65 = load i32, i32* @SWTIMER_RESUME, align 4
  %66 = call i32 @SWTIMER_REG_CB(i32 %64, i32 %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %79, %47
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @CALLBACK_COUNT, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i32, i32* @LUA_NOREF, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %67

82:                                               ; preds = %67
  %83 = load i32, i32* @CLICK_DELAY_US, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @LONGPRESS_DELAY_US, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @luaL_checkinteger(i32* %89, i32 2)
  store i32 %90, i32* %7, align 4
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @platform_gpio_exists(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %82
  %96 = load i32, i32* %7, align 4
  %97 = icmp sgt i32 %96, 0
  br label %98

98:                                               ; preds = %95, %82
  %99 = phi i1 [ false, %82 ], [ %97, %95 ]
  %100 = zext i1 %99 to i32
  %101 = call i32 @luaL_argcheck(i32* %91, i32 %100, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @luaL_checkinteger(i32* %102, i32 3)
  store i32 %103, i32* %8, align 4
  %104 = load i32*, i32** %3, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @platform_gpio_exists(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load i32, i32* %8, align 4
  %110 = icmp sgt i32 %109, 0
  br label %111

111:                                              ; preds = %108, %98
  %112 = phi i1 [ false, %98 ], [ %110, %108 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @luaL_argcheck(i32* %104, i32 %113, i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @lua_gettop(i32* %115)
  %117 = icmp sge i32 %116, 4
  br i1 %117, label %118, label %132

118:                                              ; preds = %111
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @luaL_checkinteger(i32* %119, i32 4)
  store i32 %120, i32* %9, align 4
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i64 @platform_gpio_exists(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i32, i32* %9, align 4
  %127 = icmp sgt i32 %126, 0
  br label %128

128:                                              ; preds = %125, %118
  %129 = phi i1 [ false, %118 ], [ %127, %125 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @luaL_argcheck(i32* %121, i32 %130, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %133

132:                                              ; preds = %111
  store i32 -1, i32* %9, align 4
  br label %133

133:                                              ; preds = %132, %128
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 @lua_gettop(i32* %134)
  %136 = icmp sge i32 %135, 5
  br i1 %136, label %137, label %150

137:                                              ; preds = %133
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @luaL_checkinteger(i32* %138, i32 5)
  %140 = mul nsw i32 1000, %139
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load i32*, i32** %3, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @luaL_argcheck(i32* %143, i32 %148, i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %150

150:                                              ; preds = %137, %133
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @lua_gettop(i32* %151)
  %153 = icmp sge i32 %152, 6
  br i1 %153, label %154, label %167

154:                                              ; preds = %150
  %155 = load i32*, i32** %3, align 8
  %156 = call i32 @luaL_checkinteger(i32* %155, i32 6)
  %157 = mul nsw i32 1000, %156
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i32*, i32** %3, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i32 @luaL_argcheck(i32* %160, i32 %165, i32 6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %167

167:                                              ; preds = %154, %150
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @tasknumber, align 4
  %173 = call i64 @rotary_setup(i32 %168, i32 %169, i32 %170, i32 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %167
  %176 = load i32*, i32** %3, align 8
  %177 = call i32 @luaL_error(i32* %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 %177, i32* %2, align 4
  br label %179

178:                                              ; preds = %167
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %178, %175, %45, %18
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i64 @rotary_close(i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @callback_free(i32*, i32, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @os_timer_setfn(i32*, i32, i8*) #1

declare dso_local i32 @SWTIMER_REG_CB(i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @platform_gpio_exists(i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @rotary_setup(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
