; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sntp.c_sntp_handle_result.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sntp.c_sntp_handle_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@state = common dso_local global %struct.TYPE_4__* null, align 8
@server_count = common dso_local global i64 0, align 8
@NTP_TIMEOUT_ERR = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REFNIL = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"delay_us\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"root_delay_us\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"root_dispersion_us\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"root_maxerr_us\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"stratum\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"leap\00", align 1
@pending_LI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"pending_leap\00", align 1
@PLL_A = common dso_local global i32 0, align 4
@PLL_B = common dso_local global i32 0, align 4
@pll_increment = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @sntp_handle_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sntp_handle_result(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1000000, i32* %3, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  store i64 0, i64* @server_count, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @NTP_TIMEOUT_ERR, align 4
  %16 = call i32 @handle_error(i32* %14, i32 %15, i32* null)
  br label %167

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LUA_NOREF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LUA_REFNIL, align 8
  %28 = icmp ne i64 %26, %27
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi i1 [ false, %17 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %159

40:                                               ; preds = %29
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @lua_rawgeti(i32* %41, i32 %42, i64 %45)
  %47 = call i32 (...) @system_get_time()
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %47, %51
  store i32 %52, i32* %5, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 32
  store i32 %57, i32* %6, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul i32 %61, 1000000
  %63 = lshr i32 %62, 32
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %69, %40
  %67 = load i32, i32* %7, align 4
  %68 = icmp sge i32 %67, 1000000
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, 1000000
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %66

74:                                               ; preds = %66
  %75 = load i32*, i32** %2, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @lua_pushnumber(i32* %75, i32 %76)
  %78 = load i32*, i32** %2, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @lua_pushnumber(i32* %78, i32 %79)
  %81 = load i32*, i32** %2, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 8
  %85 = call i32 @ipaddr_ntoa(i32* %84)
  %86 = call i32 @lua_pushstring(i32* %81, i32 %85)
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 @lua_newtable(i32* %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %74
  %95 = load i32*, i32** %2, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @FRAC16_TO_US(i32 %99)
  %101 = call i32 @lua_pushnumber(i32* %95, i32 %100)
  %102 = load i32*, i32** %2, align 8
  %103 = call i32 @lua_setfield(i32* %102, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %94, %74
  %105 = load i32*, i32** %2, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @FRAC16_TO_US(i32 %109)
  %111 = call i32 @lua_pushnumber(i32* %105, i32 %110)
  %112 = load i32*, i32** %2, align 8
  %113 = call i32 @lua_setfield(i32* %112, i32 -2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32*, i32** %2, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @FRAC16_TO_US(i32 %118)
  %120 = call i32 @lua_pushnumber(i32* %114, i32 %119)
  %121 = load i32*, i32** %2, align 8
  %122 = call i32 @lua_setfield(i32* %121, i32 -2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32*, i32** %2, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = sdiv i32 %131, 2
  %133 = add nsw i32 %127, %132
  %134 = call i32 @FRAC16_TO_US(i32 %133)
  %135 = call i32 @lua_pushnumber(i32* %123, i32 %134)
  %136 = load i32*, i32** %2, align 8
  %137 = call i32 @lua_setfield(i32* %136, i32 -2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32*, i32** %2, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @lua_pushnumber(i32* %138, i32 %142)
  %144 = load i32*, i32** %2, align 8
  %145 = call i32 @lua_setfield(i32* %144, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %146 = load i32*, i32** %2, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @lua_pushnumber(i32* %146, i32 %150)
  %152 = load i32*, i32** %2, align 8
  %153 = call i32 @lua_setfield(i32* %152, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %154 = load i32*, i32** %2, align 8
  %155 = load i32, i32* @pending_LI, align 4
  %156 = call i32 @lua_pushnumber(i32* %154, i32 %155)
  %157 = load i32*, i32** %2, align 8
  %158 = call i32 @lua_setfield(i32* %157, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %159

159:                                              ; preds = %104, %29
  %160 = load i32*, i32** %2, align 8
  %161 = call i32 @cleanup(i32* %160)
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32*, i32** %2, align 8
  %166 = call i32 @lua_call(i32* %165, i32 4, i32 0)
  br label %167

167:                                              ; preds = %13, %164, %159
  ret void
}

declare dso_local i32 @handle_error(i32*, i32, i32*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @system_get_time(...) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @ipaddr_ntoa(i32*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @FRAC16_TO_US(i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @cleanup(i32*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
