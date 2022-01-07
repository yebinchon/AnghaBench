; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_on.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@TYPE_TCP_SERVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid user data\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"need callback name\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"connection\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"disconnection\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"reconnection\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dns\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"receive\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"sent\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid callback name\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"invalid callback function\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_on(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_5__* @net_get_udata(i32* %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TYPE_TCP_SERVER, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @luaL_error(i32* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %2, align 4
  br label %128

20:                                               ; preds = %11
  store i32* null, i32** %5, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i8* @luaL_checkstring(i32* %21, i32 2)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @luaL_error(i32* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %2, align 4
  br label %128

28:                                               ; preds = %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %82 [
    i32 129, label %32
    i32 128, label %57
  ]

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* %39, i32** %5, align 8
  br label %85

40:                                               ; preds = %32
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32* %47, i32** %5, align 8
  br label %85

48:                                               ; preds = %40
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32* %55, i32** %5, align 8
  br label %85

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %28, %56
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  store i32* %64, i32** %5, align 8
  br label %85

65:                                               ; preds = %57
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %66)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  store i32* %72, i32** %5, align 8
  br label %85

73:                                               ; preds = %65
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %74)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 5
  store i32* %80, i32** %5, align 8
  br label %85

81:                                               ; preds = %73
  br label %85

82:                                               ; preds = %28
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @luaL_error(i32* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %84, i32* %2, align 4
  br label %128

85:                                               ; preds = %81, %77, %69, %61, %52, %44, %36
  %86 = load i32*, i32** %5, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @luaL_error(i32* %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i32 %90, i32* %2, align 4
  br label %128

91:                                               ; preds = %85
  %92 = load i32*, i32** %3, align 8
  %93 = call i64 @lua_isfunction(i32* %92, i32 3)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32*, i32** %3, align 8
  %97 = call i64 @lua_islightfunction(i32* %96, i32 3)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %95, %91
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @lua_pushvalue(i32* %100, i32 3)
  %102 = load i32*, i32** %3, align 8
  %103 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @luaL_unref(i32* %102, i32 %103, i32 %105)
  %107 = load i32*, i32** %3, align 8
  %108 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %109 = call i32 @luaL_ref(i32* %107, i32 %108)
  %110 = load i32*, i32** %5, align 8
  store i32 %109, i32* %110, align 4
  br label %127

111:                                              ; preds = %95
  %112 = load i32*, i32** %3, align 8
  %113 = call i64 @lua_isnil(i32* %112, i32 3)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i32*, i32** %3, align 8
  %117 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @luaL_unref(i32* %116, i32 %117, i32 %119)
  %121 = load i32, i32* @LUA_NOREF, align 4
  %122 = load i32*, i32** %5, align 8
  store i32 %121, i32* %122, align 4
  br label %126

123:                                              ; preds = %111
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @luaL_error(i32* %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  store i32 %125, i32* %2, align 4
  br label %128

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %99
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %123, %88, %82, %25, %17
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.TYPE_5__* @net_get_udata(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @lua_islightfunction(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
