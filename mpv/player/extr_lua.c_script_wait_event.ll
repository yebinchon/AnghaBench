; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_wait_event.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_wait_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32 }
%struct.TYPE_10__ = type { i32, double, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i32, i8**, i32, i64, i8*, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"eof\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"redirect\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"hook_id\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_wait_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_wait_event(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.script_ctx*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call %struct.script_ctx* @get_ctx(i32* %13)
  store %struct.script_ctx* %14, %struct.script_ctx** %3, align 8
  %15 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @luaL_optnumber(i32* %18, i32 1, i32 undef)
  %20 = call %struct.TYPE_10__* @mpv_wait_event(i32 %17, i32 %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %4, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @lua_newtable(i32* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @mpv_event_name(i32 %26)
  %28 = call i32 @lua_pushstring(i32* %23, i8* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @lua_setfield(i32* %29, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = fcmp une double %33, 0.000000e+00
  br i1 %34, label %35, label %43

35:                                               ; preds = %1
  %36 = load i32*, i32** %2, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load double, double* %38, align 8
  %40 = call i32 @lua_pushnumber(i32* %36, double %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @lua_setfield(i32* %41, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %35, %1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i32*, i32** %2, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @mpv_error_string(i64 %52)
  %54 = call i32 @lua_pushstring(i32* %49, i8* %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @lua_setfield(i32* %55, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %48, %43
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %223 [
    i32 133, label %61
    i32 137, label %86
    i32 135, label %120
    i32 132, label %153
    i32 134, label %202
    i32 136, label %213
  ]

61:                                               ; preds = %57
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %5, align 8
  %65 = load i32*, i32** %2, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @lua_pushstring(i32* %65, i8* %68)
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @lua_setfield(i32* %70, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32*, i32** %2, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @lua_pushstring(i32* %72, i8* %75)
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @lua_setfield(i32* %77, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32*, i32** %2, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @lua_pushstring(i32* %79, i8* %82)
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @lua_setfield(i32* %84, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %224

86:                                               ; preds = %57
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %6, align 8
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @lua_newtable(i32* %90)
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %114, %86
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %92
  %99 = load i32*, i32** %2, align 8
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  %102 = call i32 @lua_pushinteger(i32* %99, i32 %101)
  %103 = load i32*, i32** %2, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 4
  %106 = load i8**, i8*** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @lua_pushstring(i32* %103, i8* %110)
  %112 = load i32*, i32** %2, align 8
  %113 = call i32 @lua_settable(i32* %112, i32 -3)
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %92

117:                                              ; preds = %92
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @lua_setfield(i32* %118, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %224

120:                                              ; preds = %57
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  store %struct.TYPE_9__* %123, %struct.TYPE_9__** %8, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %132 [
    i32 142, label %127
    i32 138, label %128
    i32 140, label %129
    i32 141, label %130
    i32 139, label %131
  ]

127:                                              ; preds = %120
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %133

128:                                              ; preds = %120
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %133

129:                                              ; preds = %120
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %133

130:                                              ; preds = %120
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %133

131:                                              ; preds = %120
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %133

132:                                              ; preds = %120
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %133

133:                                              ; preds = %132, %131, %130, %129, %128, %127
  %134 = load i32*, i32** %2, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @lua_pushstring(i32* %134, i8* %135)
  %137 = load i32*, i32** %2, align 8
  %138 = call i32 @lua_setfield(i32* %137, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 141
  br i1 %142, label %143, label %152

143:                                              ; preds = %133
  %144 = load i32*, i32** %2, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = call i8* @mpv_error_string(i64 %147)
  %149 = call i32 @lua_pushstring(i32* %144, i8* %148)
  %150 = load i32*, i32** %2, align 8
  %151 = call i32 @lua_setfield(i32* %150, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %152

152:                                              ; preds = %143, %133
  br label %224

153:                                              ; preds = %57
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  store %struct.TYPE_9__* %156, %struct.TYPE_9__** %10, align 8
  %157 = load i32*, i32** %2, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 7
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @lua_pushstring(i32* %157, i8* %160)
  %162 = load i32*, i32** %2, align 8
  %163 = call i32 @lua_setfield(i32* %162, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 11
  %166 = load i32, i32* %165, align 8
  switch i32 %166, label %196 [
    i32 129, label %167
    i32 131, label %173
    i32 130, label %181
    i32 128, label %188
  ]

167:                                              ; preds = %153
  %168 = load i32*, i32** %2, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 10
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @pushnode(i32* %168, i32* %171)
  br label %199

173:                                              ; preds = %153
  %174 = load i32*, i32** %2, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 10
  %177 = load i32*, i32** %176, align 8
  %178 = bitcast i32* %177 to double*
  %179 = load double, double* %178, align 8
  %180 = call i32 @lua_pushnumber(i32* %174, double %179)
  br label %199

181:                                              ; preds = %153
  %182 = load i32*, i32** %2, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 10
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @lua_pushboolean(i32* %182, i32 %186)
  br label %199

188:                                              ; preds = %153
  %189 = load i32*, i32** %2, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 10
  %192 = load i32*, i32** %191, align 8
  %193 = bitcast i32* %192 to i8**
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @lua_pushstring(i32* %189, i8* %194)
  br label %199

196:                                              ; preds = %153
  %197 = load i32*, i32** %2, align 8
  %198 = call i32 @lua_pushnil(i32* %197)
  br label %199

199:                                              ; preds = %196, %188, %181, %173, %167
  %200 = load i32*, i32** %2, align 8
  %201 = call i32 @lua_setfield(i32* %200, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %224

202:                                              ; preds = %57
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 3
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  store %struct.TYPE_9__* %205, %struct.TYPE_9__** %11, align 8
  %206 = load i32*, i32** %2, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 8
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @lua_pushinteger(i32* %206, i32 %209)
  %211 = load i32*, i32** %2, align 8
  %212 = call i32 @lua_setfield(i32* %211, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %224

213:                                              ; preds = %57
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  store %struct.TYPE_9__* %216, %struct.TYPE_9__** %12, align 8
  %217 = load i32*, i32** %2, align 8
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 9
  %220 = call i32 @pushnode(i32* %217, i32* %219)
  %221 = load i32*, i32** %2, align 8
  %222 = call i32 @lua_setfield(i32* %221, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %224

223:                                              ; preds = %57
  br label %224

224:                                              ; preds = %223, %213, %202, %199, %152, %117, %61
  ret i32 1
}

declare dso_local %struct.script_ctx* @get_ctx(i32*) #1

declare dso_local %struct.TYPE_10__* @mpv_wait_event(i32, i32) #1

declare dso_local i32 @luaL_optnumber(i32*, i32, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i8* @mpv_event_name(i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushnumber(i32*, double) #1

declare dso_local i8* @mpv_error_string(i64) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @pushnode(i32*, i32*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
