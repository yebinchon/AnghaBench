; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_pushnode.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_pushnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_9__*, i32* }

@.str = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ARRAY\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MAP\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"UNKNOWN_TYPE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*)* @pushnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushnode(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @luaL_checkstack(i32* %7, i32 6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %140 [
    i32 128, label %12
    i32 132, label %19
    i32 134, label %26
    i32 129, label %33
    i32 133, label %36
    i32 131, label %43
    i32 130, label %79
    i32 135, label %125
  ]

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @lua_pushstring(i32* %13, i32 %17)
  br label %148

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @lua_pushnumber(i32* %20, i32 %24)
  br label %148

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @lua_pushnumber(i32* %27, i32 %31)
  br label %148

33:                                               ; preds = %2
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_pushnil(i32* %34)
  br label %148

36:                                               ; preds = %2
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @lua_pushboolean(i32* %37, i32 %41)
  br label %148

43:                                               ; preds = %2
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @lua_newtable(i32* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %48 = call i32 @lua_getfield(i32* %46, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @lua_setmetatable(i32* %49, i32 -2)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %75, %43
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %52, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %51
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %69
  call void @pushnode(i32* %61, %struct.TYPE_9__* %70)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 @lua_rawseti(i32* %71, i32 -2, i32 %73)
  br label %75

75:                                               ; preds = %60
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %51

78:                                               ; preds = %51
  br label %148

79:                                               ; preds = %2
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @lua_newtable(i32* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %84 = call i32 @lua_getfield(i32* %82, i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @lua_setmetatable(i32* %85, i32 -2)
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %121, %79
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %88, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %87
  %97 = load i32*, i32** %3, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @lua_pushstring(i32* %97, i32 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  call void @pushnode(i32* %109, %struct.TYPE_9__* %118)
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @lua_rawset(i32* %119, i32 -3)
  br label %121

121:                                              ; preds = %96
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %87

124:                                              ; preds = %87
  br label %148

125:                                              ; preds = %2
  %126 = load i32*, i32** %3, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @lua_pushlstring(i32* %126, i32 %132, i32 %138)
  br label %148

140:                                              ; preds = %2
  %141 = load i32*, i32** %3, align 8
  %142 = call i32 @lua_newtable(i32* %141)
  %143 = load i32*, i32** %3, align 8
  %144 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %145 = call i32 @lua_getfield(i32* %143, i32 %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 @lua_setmetatable(i32* %146, i32 -2)
  br label %148

148:                                              ; preds = %140, %125, %124, %78, %36, %33, %26, %19, %12
  ret void
}

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
