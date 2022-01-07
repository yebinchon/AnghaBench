; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-frontend.c_add_lua_frontend_funcs.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-frontend.c_add_lua_frontend_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"obslua\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"obs_frontend_get_scene_names\00", align 1
@get_scene_names = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"obs_frontend_get_scenes\00", align 1
@get_scenes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"obs_frontend_get_current_scene\00", align 1
@get_current_scene = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"obs_frontend_set_current_scene\00", align 1
@set_current_scene = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"obs_frontend_get_transitions\00", align 1
@get_transitions = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"obs_frontend_get_current_transition\00", align 1
@get_current_transition = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"obs_frontend_set_current_transition\00", align 1
@set_current_transition = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"obs_frontend_get_scene_collections\00", align 1
@get_scene_collections = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"obs_frontend_get_current_scene_collection\00", align 1
@get_current_scene_collection = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"obs_frontend_set_current_scene_collection\00", align 1
@set_current_scene_collection = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"obs_frontend_get_profiles\00", align 1
@get_profiles = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"obs_frontend_get_current_profile\00", align 1
@get_current_profile = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"obs_frontend_set_current_profile\00", align 1
@set_current_profile = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"obs_frontend_remove_event_callback\00", align 1
@remove_event_callback = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"obs_frontend_add_event_callback\00", align 1
@add_event_callback = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [34 x i8] c"obs_frontend_remove_save_callback\00", align 1
@remove_save_callback = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"obs_frontend_add_save_callback\00", align 1
@add_save_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_lua_frontend_funcs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @lua_getglobal(i32* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %1
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @get_scene_names, align 4
  %10 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %11, i32 -3)
  br label %13

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @get_scenes, align 4
  %19 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %20, i32 -3)
  br label %22

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @get_current_scene, align 4
  %28 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %26, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %29, i32 -3)
  br label %31

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @set_current_scene, align 4
  %37 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %35, i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %38, i32 -3)
  br label %40

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @get_transitions, align 4
  %46 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %44, i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %47, i32 -3)
  br label %49

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @get_current_transition, align 4
  %55 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %53, i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %56, i32 -3)
  br label %58

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* @set_current_transition, align 4
  %64 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %62, i32 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %65, i32 -3)
  br label %67

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* @get_scene_collections, align 4
  %73 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %71, i32 %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %74, i32 -3)
  br label %76

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %80 = load i32*, i32** %2, align 8
  %81 = load i32, i32* @get_current_scene_collection, align 4
  %82 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %80, i32 %81)
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %83, i32 -3)
  br label %85

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %89 = load i32*, i32** %2, align 8
  %90 = load i32, i32* @set_current_scene_collection, align 4
  %91 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %89, i32 %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %92, i32 -3)
  br label %94

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %98 = load i32*, i32** %2, align 8
  %99 = load i32, i32* @get_profiles, align 4
  %100 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %98, i32 %99)
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %101, i32 -3)
  br label %103

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %107 = load i32*, i32** %2, align 8
  %108 = load i32, i32* @get_current_profile, align 4
  %109 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %107, i32 %108)
  %110 = load i32*, i32** %2, align 8
  %111 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %110, i32 -3)
  br label %112

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %116 = load i32*, i32** %2, align 8
  %117 = load i32, i32* @set_current_profile, align 4
  %118 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %116, i32 %117)
  %119 = load i32*, i32** %2, align 8
  %120 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %119, i32 -3)
  br label %121

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121
  %123 = load i32*, i32** %2, align 8
  %124 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  %125 = load i32*, i32** %2, align 8
  %126 = load i32, i32* @remove_event_callback, align 4
  %127 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %125, i32 %126)
  %128 = load i32*, i32** %2, align 8
  %129 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %128, i32 -3)
  br label %130

130:                                              ; preds = %122
  br label %131

131:                                              ; preds = %130
  %132 = load i32*, i32** %2, align 8
  %133 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %134 = load i32*, i32** %2, align 8
  %135 = load i32, i32* @add_event_callback, align 4
  %136 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %134, i32 %135)
  %137 = load i32*, i32** %2, align 8
  %138 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %137, i32 -3)
  br label %139

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139
  %141 = load i32*, i32** %2, align 8
  %142 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %141, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  %143 = load i32*, i32** %2, align 8
  %144 = load i32, i32* @remove_save_callback, align 4
  %145 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %143, i32 %144)
  %146 = load i32*, i32** %2, align 8
  %147 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %146, i32 -3)
  br label %148

148:                                              ; preds = %140
  br label %149

149:                                              ; preds = %148
  %150 = load i32*, i32** %2, align 8
  %151 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @lua_pushstring to i32 (i32*, i8*, ...)*)(i32* %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %152 = load i32*, i32** %2, align 8
  %153 = load i32, i32* @add_save_callback, align 4
  %154 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pushcfunction to i32 (i32*, i32, ...)*)(i32* %152, i32 %153)
  %155 = load i32*, i32** %2, align 8
  %156 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_rawset to i32 (i32*, i32, ...)*)(i32* %155, i32 -3)
  br label %157

157:                                              ; preds = %149
  %158 = load i32*, i32** %2, align 8
  %159 = call i32 @lua_pop(i32* %158, i32 1)
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
