; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_http.c_http_callback.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_http.c_http_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@http_callback_registry = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@HTTP_STATUS_GENERIC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8**)* @http_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_callback(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i8* [ %18, %16 ], [ null, %19 ]
  store i8* %21, i8** %7, align 8
  %22 = load i64, i64* @http_callback_registry, align 8
  %23 = load i64, i64* @LUA_NOREF, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %201

25:                                               ; preds = %20
  %26 = call i32* (...) @lua_getstate()
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %29 = load i64, i64* @http_callback_registry, align 8
  %30 = call i32 @lua_rawgeti(i32* %27, i32 %28, i64 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @lua_pushnumber(i32* %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @HTTP_STATUS_GENERIC_ERROR, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %176

37:                                               ; preds = %25
  %38 = load i8*, i8** %4, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %176

40:                                               ; preds = %37
  %41 = load i32*, i32** %8, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @lua_pushstring(i32* %41, i8* %42)
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @lua_newtable(i32* %44)
  %46 = load i8*, i8** %7, align 8
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %59, %40
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 10
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i1 [ false, %47 ], [ %56, %52 ]
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %9, align 8
  br label %47

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 10
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %9, align 8
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %174, %70
  %72 = load i8*, i8** %9, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load i8*, i8** %9, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 13
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i8*, i8** %9, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 10
  br label %86

86:                                               ; preds = %81, %76, %71
  %87 = phi i1 [ false, %76 ], [ false, %71 ], [ %85, %81 ]
  br i1 %87, label %88, label %175

88:                                               ; preds = %86
  %89 = load i8*, i8** %9, align 8
  store i8* %89, i8** %10, align 8
  br label %90

90:                                               ; preds = %102, %88
  %91 = load i8*, i8** %10, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i8*, i8** %10, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 13
  br label %100

100:                                              ; preds = %95, %90
  %101 = phi i1 [ false, %90 ], [ %99, %95 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %10, align 8
  br label %90

105:                                              ; preds = %100
  %106 = load i8*, i8** %9, align 8
  store i8* %106, i8** %11, align 8
  br label %107

107:                                              ; preds = %118, %105
  %108 = load i8*, i8** %11, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 58
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i8*, i8** %11, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = icmp ult i8* %113, %114
  br label %116

116:                                              ; preds = %112, %107
  %117 = phi i1 [ false, %107 ], [ %115, %112 ]
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = load i8*, i8** %11, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %11, align 8
  br label %107

121:                                              ; preds = %116
  %122 = load i8*, i8** %11, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 58
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %175

127:                                              ; preds = %121
  %128 = load i8*, i8** %11, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  store i8* %129, i8** %12, align 8
  br label %130

130:                                              ; preds = %135, %127
  %131 = load i8*, i8** %12, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 32
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i8*, i8** %12, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %12, align 8
  br label %130

138:                                              ; preds = %130
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @luaL_buffinit(i32* %139, i32* %13)
  br label %141

141:                                              ; preds = %145, %138
  %142 = load i8*, i8** %9, align 8
  %143 = load i8*, i8** %11, align 8
  %144 = icmp ult i8* %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = load i8*, i8** %9, align 8
  %147 = load i8, i8* %146, align 1
  %148 = call i32 @tolower(i8 zeroext %147)
  %149 = call i32 @luaL_addchar(i32* %13, i32 %148)
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %9, align 8
  br label %141

152:                                              ; preds = %141
  %153 = call i32 @luaL_pushresult(i32* %13)
  %154 = load i32*, i32** %8, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = trunc i64 %160 to i32
  %162 = call i32 @lua_pushlstring(i32* %154, i8* %155, i32 %161)
  %163 = load i32*, i32** %8, align 8
  %164 = call i32 @lua_settable(i32* %163, i32 -3)
  %165 = load i8*, i8** %10, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  store i8* %166, i8** %9, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 10
  br i1 %170, label %171, label %174

171:                                              ; preds = %152
  %172 = load i8*, i8** %9, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %9, align 8
  br label %174

174:                                              ; preds = %171, %152
  br label %71

175:                                              ; preds = %126, %86
  br label %181

176:                                              ; preds = %37, %25
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 @lua_pushnil(i32* %177)
  %179 = load i32*, i32** %8, align 8
  %180 = call i32 @lua_pushnil(i32* %179)
  br label %181

181:                                              ; preds = %176, %175
  %182 = load i8**, i8*** %6, align 8
  %183 = icmp ne i8** %182, null
  br i1 %183, label %184, label %193

184:                                              ; preds = %181
  %185 = load i8**, i8*** %6, align 8
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = load i8**, i8*** %6, align 8
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @free(i8* %190)
  %192 = load i8**, i8*** %6, align 8
  store i8* null, i8** %192, align 8
  br label %193

193:                                              ; preds = %188, %184, %181
  %194 = load i32*, i32** %8, align 8
  %195 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %196 = load i64, i64* @http_callback_registry, align 8
  %197 = call i32 @luaL_unref(i32* %194, i32 %195, i64 %196)
  %198 = load i64, i64* @LUA_NOREF, align 8
  store i64 %198, i64* @http_callback_registry, align 8
  %199 = load i32*, i32** %8, align 8
  %200 = call i32 @lua_call(i32* %199, i32 3, i32 0)
  br label %201

201:                                              ; preds = %193, %20
  ret void
}

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @luaL_addchar(i32*, i32) #1

declare dso_local i32 @tolower(i8 zeroext) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
