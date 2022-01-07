; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_create_new_element.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_create_new_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i32, i32 }
%struct.jsonsl_state_st = type { i32, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"L%d: new action %d @ %d state->type %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"buf: '%s' ('%.10s')\0A\00", align 1
@LUA_NOREF = common dso_local global i8* null, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Adding array element\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Adding hash element\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"checkpath\00", align 1
@LUA_TNIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Unhandled type %c\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Unhandled type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, %struct.jsonsl_state_st*, i8*)* @create_new_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_new_element(%struct.TYPE_6__* %0, i32 %1, %struct.jsonsl_state_st* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jsonsl_state_st*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.jsonsl_state_st* %2, %struct.jsonsl_state_st** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %15 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %19 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %22 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @jsonsl_strtype(i32 %23)
  %25 = call i32 (i8*, ...) @DBG_PRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %20, i32 %24)
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %29 = call i32 @get_state_buffer(%struct.TYPE_7__* %27, %struct.jsonsl_state_st* %28)
  %30 = call i32 (i8*, ...) @DBG_PRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %29)
  %31 = load i8*, i8** @LUA_NOREF, align 8
  %32 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %33 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %35 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %208 [
    i32 129, label %37
    i32 128, label %37
    i32 132, label %37
    i32 131, label %38
    i32 130, label %38
  ]

37:                                               ; preds = %4, %4, %4
  br label %217

38:                                               ; preds = %4, %4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = call i32 @create_table(%struct.TYPE_7__* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @lua_ref(i32 %43, i32 1)
  %45 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %46 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %48 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %47, i32 0, i32 4
  store i32 0, i32* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %53 = call i8* (...) @get_parent_object_ref()
  %54 = call i32 @lua_rawgeti(i32 %51, i32 %52, i8* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** @LUA_NOREF, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %38
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (...) @get_parent_object_used_count_pre_inc()
  %65 = call i32 @lua_pushnumber(i32 %63, i32 %64)
  %66 = call i32 (i8*, ...) @DBG_PRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %87

67:                                               ; preds = %38
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @lua_rawgeti(i32 %70, i32 %71, i8* %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @lua_unref(i32 %78, i8* %81)
  %83 = load i8*, i8** @LUA_NOREF, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = call i32 (i8*, ...) @DBG_PRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %67, %60
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** @LUA_NOREF, align 8
  %92 = icmp ne i8* %90, %91
  br i1 %92, label %93, label %127

93:                                               ; preds = %87
  %94 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %95 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %127

98:                                               ; preds = %93
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @lua_rawgeti(i32 %101, i32 %102, i8* %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %111 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @lua_pushnumber(i32 %109, i32 %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @lua_pushvalue(i32 %117, i32 -3)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @lua_settable(i32 %121, i32 -3)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @lua_pop(i32 %125, i32 1)
  br label %127

127:                                              ; preds = %98, %93, %87
  store i32 1, i32* %10, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** @LUA_NOREF, align 8
  %132 = icmp ne i8* %130, %131
  br i1 %132, label %133, label %182

133:                                              ; preds = %127
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @lua_rawgeti(i32 %136, i32 %137, i8* %140)
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @lua_getfield(i32 %144, i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @lua_type(i32 %148, i32 -1)
  %150 = load i32, i32* @LUA_TNIL, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %177

152:                                              ; preds = %133
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %157 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %158 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @lua_rawgeti(i32 %155, i32 %156, i8* %159)
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @lua_rawgeti(i32 %163, i32 %164, i8* %167)
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @lua_call(i32 %171, i32 2, i32 1)
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @lua_toboolean(i32 %175, i32 -1)
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %152, %133
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @lua_pop(i32 %180, i32 2)
  br label %182

182:                                              ; preds = %177, %127
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %202

185:                                              ; preds = %182
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %190 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %191 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %190, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @lua_rawgeti(i32 %188, i32 %189, i8* %192)
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @lua_settable(i32 %196, i32 -3)
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @lua_pop(i32 %200, i32 1)
  br label %207

202:                                              ; preds = %182
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @lua_pop(i32 %205, i32 2)
  br label %207

207:                                              ; preds = %202, %185
  br label %217

208:                                              ; preds = %4
  %209 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %210 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i8*, ...) @DBG_PRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %211)
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @luaL_error(i32 %215, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %217

217:                                              ; preds = %208, %207, %37
  %218 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %219 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 8
  ret void
}

declare dso_local i32 @DBG_PRINTF(i8*, ...) #1

declare dso_local i32 @jsonsl_strtype(i32) #1

declare dso_local i32 @get_state_buffer(%struct.TYPE_7__*, %struct.jsonsl_state_st*) #1

declare dso_local i32 @create_table(%struct.TYPE_7__*) #1

declare dso_local i8* @lua_ref(i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32, i32, i8*) #1

declare dso_local i8* @get_parent_object_ref(...) #1

declare dso_local i32 @lua_pushnumber(i32, i32) #1

declare dso_local i32 @get_parent_object_used_count_pre_inc(...) #1

declare dso_local i32 @lua_unref(i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32, i32) #1

declare dso_local i32 @lua_settable(i32, i32) #1

declare dso_local i32 @lua_pop(i32, i32) #1

declare dso_local i32 @lua_getfield(i32, i32, i8*) #1

declare dso_local i32 @lua_type(i32, i32) #1

declare dso_local i32 @lua_call(i32, i32, i32) #1

declare dso_local i32 @lua_toboolean(i32, i32) #1

declare dso_local i32 @luaL_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
