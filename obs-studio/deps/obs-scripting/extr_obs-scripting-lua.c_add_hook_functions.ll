; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_add_hook_functions.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_add_hook_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"_G\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@hook_print = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@hook_error = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"obslua\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"script_log\00", align 1
@lua_script_log = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"timer_remove\00", align 1
@timer_remove = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"timer_add\00", align 1
@timer_add = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"obs_enum_sources\00", align 1
@enum_sources = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"obs_source_enum_filters\00", align 1
@source_enum_filters = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"obs_scene_enum_items\00", align 1
@scene_enum_items = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"source_list_release\00", align 1
@source_list_release = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"sceneitem_list_release\00", align 1
@sceneitem_list_release = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"calldata_source\00", align 1
@calldata_source = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"calldata_sceneitem\00", align 1
@calldata_sceneitem = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"obs_add_main_render_callback\00", align 1
@obs_lua_add_main_render_callback = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"obs_remove_main_render_callback\00", align 1
@obs_lua_remove_main_render_callback = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"obs_add_tick_callback\00", align 1
@obs_lua_add_tick_callback = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"obs_remove_tick_callback\00", align 1
@obs_lua_remove_tick_callback = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [23 x i8] c"signal_handler_connect\00", align 1
@obs_lua_signal_handler_connect = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [26 x i8] c"signal_handler_disconnect\00", align 1
@obs_lua_signal_handler_disconnect = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [30 x i8] c"signal_handler_connect_global\00", align 1
@obs_lua_signal_handler_connect_global = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [33 x i8] c"signal_handler_disconnect_global\00", align 1
@obs_lua_signal_handler_disconnect_global = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [22 x i8] c"obs_hotkey_unregister\00", align 1
@hotkey_unregister = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"obs_hotkey_register_frontend\00", align 1
@hotkey_register_frontend = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [26 x i8] c"obs_properties_add_button\00", align 1
@properties_add_button = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [35 x i8] c"obs_property_set_modified_callback\00", align 1
@property_set_modified_callback = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [24 x i8] c"remove_current_callback\00", align 1
@remove_current_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @add_hook_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_hook_functions(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @lua_getglobal(i32* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %1
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @hook_print, align 4
  %10 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %11, i32 -3)
  br label %13

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @hook_error, align 4
  %19 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %20, i32 -3)
  br label %22

22:                                               ; preds = %14
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @lua_pop(i32* %23, i32 1)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @lua_getglobal(i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @lua_script_log, align 4
  %32 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %30, i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %33, i32 -3)
  br label %35

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @timer_remove, align 4
  %41 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %39, i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %42, i32 -3)
  br label %44

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* @timer_add, align 4
  %50 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %48, i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %51, i32 -3)
  br label %53

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* @enum_sources, align 4
  %59 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %57, i32 %58)
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %60, i32 -3)
  br label %62

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %66 = load i32*, i32** %2, align 8
  %67 = load i32, i32* @source_enum_filters, align 4
  %68 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %66, i32 %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %69, i32 -3)
  br label %71

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %75 = load i32*, i32** %2, align 8
  %76 = load i32, i32* @scene_enum_items, align 4
  %77 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %75, i32 %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %78, i32 -3)
  br label %80

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %84 = load i32*, i32** %2, align 8
  %85 = load i32, i32* @source_list_release, align 4
  %86 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %84, i32 %85)
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %87, i32 -3)
  br label %89

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %93 = load i32*, i32** %2, align 8
  %94 = load i32, i32* @sceneitem_list_release, align 4
  %95 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %93, i32 %94)
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %96, i32 -3)
  br label %98

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %102 = load i32*, i32** %2, align 8
  %103 = load i32, i32* @calldata_source, align 4
  %104 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %102, i32 %103)
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %105, i32 -3)
  br label %107

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107
  %109 = load i32*, i32** %2, align 8
  %110 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %111 = load i32*, i32** %2, align 8
  %112 = load i32, i32* @calldata_sceneitem, align 4
  %113 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %111, i32 %112)
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %114, i32 -3)
  br label %116

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %120 = load i32*, i32** %2, align 8
  %121 = load i32, i32* @obs_lua_add_main_render_callback, align 4
  %122 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %120, i32 %121)
  %123 = load i32*, i32** %2, align 8
  %124 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %123, i32 -3)
  br label %125

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125
  %127 = load i32*, i32** %2, align 8
  %128 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %129 = load i32*, i32** %2, align 8
  %130 = load i32, i32* @obs_lua_remove_main_render_callback, align 4
  %131 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %129, i32 %130)
  %132 = load i32*, i32** %2, align 8
  %133 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %132, i32 -3)
  br label %134

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134
  %136 = load i32*, i32** %2, align 8
  %137 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %138 = load i32*, i32** %2, align 8
  %139 = load i32, i32* @obs_lua_add_tick_callback, align 4
  %140 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %138, i32 %139)
  %141 = load i32*, i32** %2, align 8
  %142 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %141, i32 -3)
  br label %143

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143
  %145 = load i32*, i32** %2, align 8
  %146 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %147 = load i32*, i32** %2, align 8
  %148 = load i32, i32* @obs_lua_remove_tick_callback, align 4
  %149 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %147, i32 %148)
  %150 = load i32*, i32** %2, align 8
  %151 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %150, i32 -3)
  br label %152

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152
  %154 = load i32*, i32** %2, align 8
  %155 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %154, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %156 = load i32*, i32** %2, align 8
  %157 = load i32, i32* @obs_lua_signal_handler_connect, align 4
  %158 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %156, i32 %157)
  %159 = load i32*, i32** %2, align 8
  %160 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %159, i32 -3)
  br label %161

161:                                              ; preds = %153
  br label %162

162:                                              ; preds = %161
  %163 = load i32*, i32** %2, align 8
  %164 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %165 = load i32*, i32** %2, align 8
  %166 = load i32, i32* @obs_lua_signal_handler_disconnect, align 4
  %167 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %165, i32 %166)
  %168 = load i32*, i32** %2, align 8
  %169 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %168, i32 -3)
  br label %170

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170
  %172 = load i32*, i32** %2, align 8
  %173 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %172, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0))
  %174 = load i32*, i32** %2, align 8
  %175 = load i32, i32* @obs_lua_signal_handler_connect_global, align 4
  %176 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %174, i32 %175)
  %177 = load i32*, i32** %2, align 8
  %178 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %177, i32 -3)
  br label %179

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179
  %181 = load i32*, i32** %2, align 8
  %182 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %181, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %183 = load i32*, i32** %2, align 8
  %184 = load i32, i32* @obs_lua_signal_handler_disconnect_global, align 4
  %185 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %183, i32 %184)
  %186 = load i32*, i32** %2, align 8
  %187 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %186, i32 -3)
  br label %188

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188
  %190 = load i32*, i32** %2, align 8
  %191 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %190, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0))
  %192 = load i32*, i32** %2, align 8
  %193 = load i32, i32* @hotkey_unregister, align 4
  %194 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %192, i32 %193)
  %195 = load i32*, i32** %2, align 8
  %196 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %195, i32 -3)
  br label %197

197:                                              ; preds = %189
  br label %198

198:                                              ; preds = %197
  %199 = load i32*, i32** %2, align 8
  %200 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %199, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0))
  %201 = load i32*, i32** %2, align 8
  %202 = load i32, i32* @hotkey_register_frontend, align 4
  %203 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %201, i32 %202)
  %204 = load i32*, i32** %2, align 8
  %205 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %204, i32 -3)
  br label %206

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %206
  %208 = load i32*, i32** %2, align 8
  %209 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %208, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  %210 = load i32*, i32** %2, align 8
  %211 = load i32, i32* @properties_add_button, align 4
  %212 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %210, i32 %211)
  %213 = load i32*, i32** %2, align 8
  %214 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %213, i32 -3)
  br label %215

215:                                              ; preds = %207
  br label %216

216:                                              ; preds = %215
  %217 = load i32*, i32** %2, align 8
  %218 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %217, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0))
  %219 = load i32*, i32** %2, align 8
  %220 = load i32, i32* @property_set_modified_callback, align 4
  %221 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %219, i32 %220)
  %222 = load i32*, i32** %2, align 8
  %223 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %222, i32 -3)
  br label %224

224:                                              ; preds = %216
  br label %225

225:                                              ; preds = %224
  %226 = load i32*, i32** %2, align 8
  %227 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %226, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  %228 = load i32*, i32** %2, align 8
  %229 = load i32, i32* @remove_current_callback, align 4
  %230 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %228, i32 %229)
  %231 = load i32*, i32** %2, align 8
  %232 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %231, i32 -3)
  br label %233

233:                                              ; preds = %225
  %234 = load i32*, i32** %2, align 8
  %235 = call i32 @lua_pop(i32* %234, i32 1)
  ret void
}

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_pushstring(...) #1

declare dso_local i32 @lua_pushcfunction(...) #1

declare dso_local i32 @lua_rawset(...) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
