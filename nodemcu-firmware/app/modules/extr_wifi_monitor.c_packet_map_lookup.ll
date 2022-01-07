; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi_monitor.c_packet_map_lookup.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi_monitor.c_packet_map_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.RxControl = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"wifi.packet\00", align 1
@FRAME_TYPE_MANAGEMENT = common dso_local global i64 0, align 8
@LUA_TNUMBER = common dso_local global i64 0, align 8
@packet_function = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @packet_map_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_map_lookup(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.RxControl*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_7__* @luaL_checkudata(i32* %10, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to %struct.RxControl*
  store %struct.RxControl* %15, %struct.RxControl** %5, align 8
  %16 = load %struct.RxControl*, %struct.RxControl** %5, align 8
  %17 = getelementptr inbounds %struct.RxControl, %struct.RxControl* %16, i64 1
  %18 = bitcast %struct.RxControl* %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  store i32* %26, i32** %7, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 1
  %29 = bitcast %struct.TYPE_8__* %28 to i8*
  %30 = load i32*, i32** %7, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = icmp ugt i8* %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

34:                                               ; preds = %1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FRAME_TYPE_MANAGEMENT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %84

42:                                               ; preds = %34
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @lua_type(i32* %43, i32 2)
  %45 = load i64, i64* @LUA_TNUMBER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @luaL_checkinteger(i32* %48, i32 2)
  store i32 %49, i32* %8, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @push_field_value_int(i32* %50, %struct.TYPE_8__* %51, i32* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %84

57:                                               ; preds = %47
  br label %83

58:                                               ; preds = %42
  %59 = load i32*, i32** %3, align 8
  %60 = call i8* @luaL_checkstring(i32* %59, i32 2)
  store i8* %60, i8** %9, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i64 @push_field_value_string(i32* %61, i32* %64, i32* %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %84

70:                                               ; preds = %58
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* @packet_function, align 4
  %73 = call i32 @LROT_TABLEREF(i32 %72)
  %74 = call i32 @lua_pushrotable(i32* %71, i32 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @lua_getfield(i32* %75, i32 -1, i8* %76)
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @lua_isnil(i32* %78, i32 -1)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %70
  store i32 1, i32* %2, align 4
  br label %84

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %57
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %81, %69, %56, %41, %33
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_7__* @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i64 @push_field_value_int(i32*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i64 @push_field_value_string(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @lua_pushrotable(i32*, i32) #1

declare dso_local i32 @LROT_TABLEREF(i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
