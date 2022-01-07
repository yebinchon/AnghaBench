; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_load_lua_script.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_load_lua_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_lua_script = type { i32, i32*, %struct.TYPE_6__, i8*, i8*, i8*, i8*, %struct.obs_lua_script*, %struct.obs_lua_script**, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dstr = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to create new lua state\00", align 1
@startup_script = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Error executing startup script 1: %s\00", align 1
@get_script_path_func = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Error executing startup script 2: %s\00", align 1
@current_lua_script = common dso_local global %struct.obs_lua_script* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Error loading file: %s\00", align 1
@LUA_MULTRET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Error running file: %s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"script_tick\00", align 1
@tick_mutex = common dso_local global i32 0, align 4
@first_tick_script = common dso_local global %struct.obs_lua_script* null, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"script_properties\00", align 1
@LUA_REFNIL = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"script_update\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"script_save\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"script_defaults\00", align 1
@obs_data_t = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Error calling script_defaults: %s\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"script_description\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"script_load\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Error calling script_load: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_lua_script*)* @load_lua_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_lua_script(%struct.obs_lua_script* %0) #0 {
  %2 = alloca %struct.obs_lua_script*, align 8
  %3 = alloca %struct.dstr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.obs_lua_script*, align 8
  %9 = alloca i8*, align 8
  store %struct.obs_lua_script* %0, %struct.obs_lua_script** %2, align 8
  %10 = bitcast %struct.dstr* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  %11 = call i32* (...) @luaL_newstate()
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %16 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %15, i32 0, i32 2
  %17 = call i32 (%struct.TYPE_6__*, i8*, ...) @script_warn(%struct.TYPE_6__* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %255

18:                                               ; preds = %1
  %19 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %20 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @luaL_openlibs(i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @luaopen_ffi(i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @startup_script, align 4
  %28 = call i32 @luaL_dostring(i32* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %32 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %31, i32 0, i32 2
  %33 = load i32*, i32** %6, align 8
  %34 = call i8* @lua_tostring(i32* %33, i32 -1)
  %35 = call i32 (%struct.TYPE_6__*, i8*, ...) @script_warn(%struct.TYPE_6__* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %255

36:                                               ; preds = %18
  %37 = load i32, i32* @get_script_path_func, align 4
  %38 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %39 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %38, i32 0, i32 9
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dstr_printf(%struct.dstr* %3, i32 %37, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds %struct.dstr, %struct.dstr* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @luaL_dostring(i32* %43, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = call i32 @dstr_free(%struct.dstr* %3)
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %36
  %51 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %52 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %51, i32 0, i32 2
  %53 = load i32*, i32** %6, align 8
  %54 = call i8* @lua_tostring(i32* %53, i32 -1)
  %55 = call i32 (%struct.TYPE_6__*, i8*, ...) @script_warn(%struct.TYPE_6__* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %255

56:                                               ; preds = %36
  %57 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  store %struct.obs_lua_script* %57, %struct.obs_lua_script** @current_lua_script, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @add_lua_source_functions(i32* %58)
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @add_hook_functions(i32* %60)
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %64 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @luaL_loadfile(i32* %62, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %56
  %71 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %72 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %71, i32 0, i32 2
  %73 = load i32*, i32** %6, align 8
  %74 = call i8* @lua_tostring(i32* %73, i32 -1)
  %75 = call i32 (%struct.TYPE_6__*, i8*, ...) @script_warn(%struct.TYPE_6__* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  br label %255

76:                                               ; preds = %56
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* @LUA_MULTRET, align 4
  %79 = call i64 @lua_pcall(i32* %77, i32 0, i32 %78, i32 0)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %83 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %82, i32 0, i32 2
  %84 = load i32*, i32** %6, align 8
  %85 = call i8* @lua_tostring(i32* %84, i32 -1)
  %86 = call i32 (%struct.TYPE_6__*, i8*, ...) @script_warn(%struct.TYPE_6__* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  br label %255

87:                                               ; preds = %76
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @lua_gettop(i32* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load i32*, i32** %6, align 8
  %94 = call i64 @lua_isboolean(i32* %93, i32 -1)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @lua_toboolean(i32* %97, i32 -1)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  br label %255

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %92, %87
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @lua_getglobal(i32* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32*, i32** %6, align 8
  %107 = call i64 @lua_isfunction(i32* %106, i32 -1)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %103
  %110 = call i32 @pthread_mutex_lock(i32* @tick_mutex)
  %111 = load %struct.obs_lua_script*, %struct.obs_lua_script** @first_tick_script, align 8
  store %struct.obs_lua_script* %111, %struct.obs_lua_script** %8, align 8
  %112 = load %struct.obs_lua_script*, %struct.obs_lua_script** %8, align 8
  %113 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %114 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %113, i32 0, i32 7
  store %struct.obs_lua_script* %112, %struct.obs_lua_script** %114, align 8
  %115 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %116 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %115, i32 0, i32 8
  store %struct.obs_lua_script** @first_tick_script, %struct.obs_lua_script*** %116, align 8
  %117 = load %struct.obs_lua_script*, %struct.obs_lua_script** %8, align 8
  %118 = icmp ne %struct.obs_lua_script* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %121 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %120, i32 0, i32 7
  %122 = load %struct.obs_lua_script*, %struct.obs_lua_script** %8, align 8
  %123 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %122, i32 0, i32 8
  store %struct.obs_lua_script** %121, %struct.obs_lua_script*** %123, align 8
  br label %124

124:                                              ; preds = %119, %109
  %125 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  store %struct.obs_lua_script* %125, %struct.obs_lua_script** @first_tick_script, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %128 = call i8* @luaL_ref(i32* %126, i32 %127)
  %129 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %130 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %129, i32 0, i32 6
  store i8* %128, i8** %130, align 8
  %131 = call i32 @pthread_mutex_unlock(i32* @tick_mutex)
  br label %132

132:                                              ; preds = %124, %103
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @lua_getglobal(i32* %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %135 = load i32*, i32** %6, align 8
  %136 = call i64 @lua_isfunction(i32* %135, i32 -1)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %141 = call i8* @luaL_ref(i32* %139, i32 %140)
  %142 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %143 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %142, i32 0, i32 5
  store i8* %141, i8** %143, align 8
  br label %148

144:                                              ; preds = %132
  %145 = load i8*, i8** @LUA_REFNIL, align 8
  %146 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %147 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %146, i32 0, i32 5
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %144, %138
  %149 = load i32*, i32** %6, align 8
  %150 = call i32 @lua_getglobal(i32* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %151 = load i32*, i32** %6, align 8
  %152 = call i64 @lua_isfunction(i32* %151, i32 -1)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %157 = call i8* @luaL_ref(i32* %155, i32 %156)
  %158 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %159 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %158, i32 0, i32 4
  store i8* %157, i8** %159, align 8
  br label %164

160:                                              ; preds = %148
  %161 = load i8*, i8** @LUA_REFNIL, align 8
  %162 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %163 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %162, i32 0, i32 4
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %160, %154
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @lua_getglobal(i32* %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %167 = load i32*, i32** %6, align 8
  %168 = call i64 @lua_isfunction(i32* %167, i32 -1)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load i32*, i32** %6, align 8
  %172 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %173 = call i8* @luaL_ref(i32* %171, i32 %172)
  %174 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %175 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %174, i32 0, i32 3
  store i8* %173, i8** %175, align 8
  br label %180

176:                                              ; preds = %164
  %177 = load i8*, i8** @LUA_REFNIL, align 8
  %178 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %179 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %178, i32 0, i32 3
  store i8* %177, i8** %179, align 8
  br label %180

180:                                              ; preds = %176, %170
  %181 = load i32*, i32** %6, align 8
  %182 = call i32 @lua_getglobal(i32* %181, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %183 = load i32*, i32** %6, align 8
  %184 = call i64 @lua_isfunction(i32* %183, i32 -1)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %180
  %187 = load i32, i32* @obs_data_t, align 4
  %188 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %189 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @ls_push_libobs_obj(i32 %187, i32 %191, i32 0)
  %193 = load i32*, i32** %6, align 8
  %194 = call i64 @lua_pcall(i32* %193, i32 1, i32 0, i32 0)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %186
  %197 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %198 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %197, i32 0, i32 2
  %199 = load i32*, i32** %6, align 8
  %200 = call i8* @lua_tostring(i32* %199, i32 -1)
  %201 = call i32 (%struct.TYPE_6__*, i8*, ...) @script_warn(%struct.TYPE_6__* %198, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %196, %186
  br label %203

203:                                              ; preds = %202, %180
  %204 = load i32*, i32** %6, align 8
  %205 = call i32 @lua_getglobal(i32* %204, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %206 = load i32*, i32** %6, align 8
  %207 = call i64 @lua_isfunction(i32* %206, i32 -1)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %228

209:                                              ; preds = %203
  %210 = load i32*, i32** %6, align 8
  %211 = call i64 @lua_pcall(i32* %210, i32 0, i32 1, i32 0)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %209
  %214 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %215 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %214, i32 0, i32 2
  %216 = load i32*, i32** %6, align 8
  %217 = call i8* @lua_tostring(i32* %216, i32 -1)
  %218 = call i32 (%struct.TYPE_6__*, i8*, ...) @script_warn(%struct.TYPE_6__* %215, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %217)
  br label %227

219:                                              ; preds = %209
  %220 = load i32*, i32** %6, align 8
  %221 = call i8* @lua_tostring(i32* %220, i32 -1)
  store i8* %221, i8** %9, align 8
  %222 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %223 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  %225 = load i8*, i8** %9, align 8
  %226 = call i32 @dstr_copy(i32* %224, i8* %225)
  br label %227

227:                                              ; preds = %219, %213
  br label %228

228:                                              ; preds = %227, %203
  %229 = load i32*, i32** %6, align 8
  %230 = call i32 @lua_getglobal(i32* %229, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %231 = load i32*, i32** %6, align 8
  %232 = call i64 @lua_isfunction(i32* %231, i32 -1)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %251

234:                                              ; preds = %228
  %235 = load i32, i32* @obs_data_t, align 4
  %236 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %237 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @ls_push_libobs_obj(i32 %235, i32 %239, i32 0)
  %241 = load i32*, i32** %6, align 8
  %242 = call i64 @lua_pcall(i32* %241, i32 1, i32 0, i32 0)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %234
  %245 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %246 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %245, i32 0, i32 2
  %247 = load i32*, i32** %6, align 8
  %248 = call i8* @lua_tostring(i32* %247, i32 -1)
  %249 = call i32 (%struct.TYPE_6__*, i8*, ...) @script_warn(%struct.TYPE_6__* %246, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* %248)
  br label %250

250:                                              ; preds = %244, %234
  br label %251

251:                                              ; preds = %250, %228
  %252 = load i32*, i32** %6, align 8
  %253 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %254 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %253, i32 0, i32 1
  store i32* %252, i32** %254, align 8
  store i32 1, i32* %4, align 4
  br label %255

255:                                              ; preds = %251, %101, %81, %70, %50, %30, %14
  %256 = load i32*, i32** %6, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %258, label %264

258:                                              ; preds = %255
  %259 = load i32*, i32** %6, align 8
  %260 = call i32 @lua_settop(i32* %259, i32 0)
  %261 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %262 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %261, i32 0, i32 0
  %263 = call i32 @pthread_mutex_unlock(i32* %262)
  br label %264

264:                                              ; preds = %258, %255
  %265 = load i32, i32* %4, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %264
  %268 = load i32*, i32** %6, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load i32*, i32** %6, align 8
  %272 = call i32 @lua_close(i32* %271)
  br label %273

273:                                              ; preds = %270, %267, %264
  store %struct.obs_lua_script* null, %struct.obs_lua_script** @current_lua_script, align 8
  %274 = load i32, i32* %4, align 4
  ret i32 %274
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @luaL_newstate(...) #2

declare dso_local i32 @script_warn(%struct.TYPE_6__*, i8*, ...) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @luaL_openlibs(i32*) #2

declare dso_local i32 @luaopen_ffi(i32*) #2

declare dso_local i32 @luaL_dostring(i32*, i32) #2

declare dso_local i8* @lua_tostring(i32*, i32) #2

declare dso_local i32 @dstr_printf(%struct.dstr*, i32, i32) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

declare dso_local i32 @add_lua_source_functions(i32*) #2

declare dso_local i32 @add_hook_functions(i32*) #2

declare dso_local i64 @luaL_loadfile(i32*, i32) #2

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #2

declare dso_local i32 @lua_gettop(i32*) #2

declare dso_local i64 @lua_isboolean(i32*, i32) #2

declare dso_local i32 @lua_toboolean(i32*, i32) #2

declare dso_local i32 @lua_getglobal(i32*, i8*) #2

declare dso_local i64 @lua_isfunction(i32*, i32) #2

declare dso_local i8* @luaL_ref(i32*, i32) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @ls_push_libobs_obj(i32, i32, i32) #2

declare dso_local i32 @dstr_copy(i32*, i8*) #2

declare dso_local i32 @lua_settop(i32*, i32) #2

declare dso_local i32 @lua_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
