; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_sjson_decoder_int.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_sjson_decoder_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i8*, i8*, i8*, i8*, i32, i32, i64, i32*, i32*, i64, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__*, i32, i32, i32, i32*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@DEFAULT_DEPTH = common dso_local global i32 0, align 4
@LUA_TTABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sjson.decoder\00", align 1
@LUA_NOREF = common dso_local global i8* null, align 8
@LUA_REFNIL = common dso_local global i8* null, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"metatable\00", align 1
@LUA_TNIL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"checkpath\00", align 1
@create_new_element = common dso_local global i32 0, align 4
@cleanup_closing_element = common dso_local global i32 0, align 4
@error_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @sjson_decoder_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sjson_decoder_int(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @DEFAULT_DEPTH, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @lua_type(i32* %10, i32 %11)
  %13 = load i64, i64* @LUA_TTABLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @lua_getfield(i32* %16, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @lua_tointeger(i32* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @DEFAULT_DEPTH, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %15
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 4, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 1000
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1000, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @lua_pop(i32* %35, i32 1)
  br label %37

37:                                               ; preds = %34, %2
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @jsonsl_get_size(i32 %39)
  %41 = add i64 96, %40
  %42 = call i64 @lua_newuserdata(i32* %38, i64 %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %6, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @luaL_getmetatable(i32* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_setmetatable(i32* %46, i32 -2)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 1
  %50 = bitcast %struct.TYPE_9__* %49 to %struct.TYPE_8__*
  %51 = load i32, i32* %5, align 4
  %52 = call %struct.TYPE_8__* @jsonsl_init(%struct.TYPE_8__* %50, i32 %51)
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %68, %37
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i8*, i8** @LUA_NOREF, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i8* %60, i8** %67, align 8
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %53

71:                                               ; preds = %53
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %74, align 8
  %75 = load i8*, i8** @LUA_NOREF, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @LUA_REFNIL, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @LUA_NOREF, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @LUA_NOREF, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 12
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @LUA_NOREF, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** @LUA_NOREF, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 11
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 10
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 9
  store i32* null, i32** %96, align 8
  %97 = load i32*, i32** %3, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 8
  store i32* %97, i32** %99, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 7
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 6
  store i32 %104, i32* %108, align 4
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @lua_pushlightuserdata(i32* %109, i32 0)
  %111 = load i32*, i32** %3, align 8
  %112 = call i8* @lua_ref(i32* %111, i32 1)
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @lua_newtable(i32* %115)
  %117 = load i32*, i32** %3, align 8
  %118 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %119 = call i8* @luaL_ref(i32* %117, i32 %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call i64 @lua_type(i32* %122, i32 %123)
  %125 = load i64, i64* @LUA_TTABLE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %177

127:                                              ; preds = %71
  %128 = load i32*, i32** %3, align 8
  %129 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @luaL_unref(i32* %128, i32 %129, i8* %132)
  %134 = load i8*, i8** @LUA_NOREF, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  %137 = load i32*, i32** %3, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @lua_getfield(i32* %137, i32 %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %140 = load i32*, i32** %3, align 8
  %141 = call i8* @lua_ref(i32* %140, i32 1)
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  %144 = load i32*, i32** %3, align 8
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @lua_getfield(i32* %144, i32 %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @lua_pushvalue(i32* %147, i32 -1)
  %149 = load i32*, i32** %3, align 8
  %150 = call i8* @lua_ref(i32* %149, i32 1)
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load i32*, i32** %3, align 8
  %154 = call i64 @lua_type(i32* %153, i32 -1)
  %155 = load i64, i64* @LUA_TNIL, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %174

157:                                              ; preds = %127
  %158 = load i32*, i32** %3, align 8
  %159 = call i32 @lua_getfield(i32* %158, i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %160 = load i32*, i32** %3, align 8
  %161 = call i64 @lua_type(i32* %160, i32 -1)
  %162 = load i64, i64* @LUA_TNIL, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %157
  %165 = load i32*, i32** %3, align 8
  %166 = call i32 @lua_newtable(i32* %165)
  %167 = load i32*, i32** %3, align 8
  %168 = call i8* @lua_ref(i32* %167, i32 1)
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  store i8* %168, i8** %170, align 8
  br label %171

171:                                              ; preds = %164, %157
  %172 = load i32*, i32** %3, align 8
  %173 = call i32 @lua_pop(i32* %172, i32 1)
  br label %174

174:                                              ; preds = %171, %127
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @lua_pop(i32* %175, i32 1)
  br label %177

177:                                              ; preds = %174, %71
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = call i32 @jsonsl_enable_all_callbacks(%struct.TYPE_8__* %180)
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 6
  store i32* null, i32** %183, align 8
  %184 = load i32, i32* @create_new_element, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 5
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* @cleanup_closing_element, align 4
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @error_callback, align 4
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  store %struct.TYPE_9__* %193, %struct.TYPE_9__** %195, align 8
  %196 = load i32, i32* %5, align 4
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  ret i32 1
}

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @lua_newuserdata(i32*, i64) #1

declare dso_local i64 @jsonsl_get_size(i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @jsonsl_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i8* @lua_ref(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i8* @luaL_ref(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @jsonsl_enable_all_callbacks(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
