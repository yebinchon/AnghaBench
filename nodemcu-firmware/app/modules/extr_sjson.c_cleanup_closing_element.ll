; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_cleanup_closing_element.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_cleanup_closing_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.jsonsl_state_st = type { i32, i32, i32, i8*, i64, i64 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"L%d: cc action %d state->type %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"buf (%d - %d): '%.*s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"at: '%s'\0A\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Special flags = 0x%x\0A\00", align 1
@JSONSL_SPECIALf_TRUE = common dso_local global i32 0, align 4
@JSONSL_SPECIALf_FALSE = common dso_local global i32 0, align 4
@JSONSL_SPECIALf_NUMERIC = common dso_local global i32 0, align 4
@JSONSL_SPECIALf_NULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Outputting null\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, %struct.jsonsl_state_st*, i8*)* @cleanup_closing_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_closing_element(%struct.TYPE_7__* %0, i32 %1, %struct.jsonsl_state_st* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jsonsl_state_st*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.jsonsl_state_st* %2, %struct.jsonsl_state_st** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %9, align 8
  %14 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %15 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %19 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @jsonsl_strtype(i32 %20)
  %22 = call i32 (i8*, ...) @DBG_PRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %21)
  %23 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %24 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %27 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %30 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %33 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %38 = call i32 @get_state_buffer(%struct.TYPE_8__* %36, %struct.jsonsl_state_st* %37)
  %39 = call i32 (i8*, ...) @DBG_PRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %25, i64 %28, i64 %35, i32 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 (i8*, ...) @DBG_PRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %43 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %284 [
    i32 132, label %45
    i32 128, label %55
    i32 129, label %104
    i32 130, label %231
    i32 131, label %231
  ]

45:                                               ; preds = %4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %48 = call i32 @push_string(%struct.TYPE_8__* %46, %struct.jsonsl_state_st* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @lua_ref(i32 %51, i32 1)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %284

55:                                               ; preds = %4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %60 = call i8* (...) @get_parent_object_ref()
  %61 = call i32 @lua_rawgeti(i32 %58, i32 %59, i8* %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** @LUA_NOREF, align 8
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (...) @get_parent_object_used_count_pre_inc()
  %72 = call i32 @lua_pushnumber(i32 %70, i32 %71)
  br label %92

73:                                               ; preds = %55
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @lua_rawgeti(i32 %76, i32 %77, i8* %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @lua_unref(i32 %84, i8* %87)
  %89 = load i8*, i8** @LUA_NOREF, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %73, %67
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %94 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %95 = call i32 @push_string(%struct.TYPE_8__* %93, %struct.jsonsl_state_st* %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @lua_settable(i32 %98, i32 -3)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @lua_pop(i32 %102, i32 1)
  br label %284

104:                                              ; preds = %4
  %105 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %106 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i8*, ...) @DBG_PRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %110 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @JSONSL_SPECIALf_TRUE, align 4
  %113 = load i32, i32* @JSONSL_SPECIALf_FALSE, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @JSONSL_SPECIALf_NUMERIC, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @JSONSL_SPECIALf_NULL, align 4
  %118 = or i32 %116, %117
  %119 = and i32 %111, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %230

121:                                              ; preds = %104
  %122 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %123 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @JSONSL_SPECIALf_TRUE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %121
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @lua_pushboolean(i32 %131, i32 1)
  br label %176

133:                                              ; preds = %121
  %134 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %135 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @JSONSL_SPECIALf_FALSE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @lua_pushboolean(i32 %143, i32 0)
  br label %175

145:                                              ; preds = %133
  %146 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %147 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @JSONSL_SPECIALf_NULL, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %145
  %153 = call i32 (i8*, ...) @DBG_PRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @lua_rawgeti(i32 %156, i32 %157, i8* %160)
  br label %174

162:                                              ; preds = %145
  %163 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %164 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @JSONSL_SPECIALf_NUMERIC, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %171 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %172 = call i32 @push_number(%struct.TYPE_8__* %170, %struct.jsonsl_state_st* %171)
  br label %173

173:                                              ; preds = %169, %162
  br label %174

174:                                              ; preds = %173, %152
  br label %175

175:                                              ; preds = %174, %140
  br label %176

176:                                              ; preds = %175, %128
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %181 = call i8* (...) @get_parent_object_ref()
  %182 = call i32 @lua_rawgeti(i32 %179, i32 %180, i8* %181)
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i8*, i8** @LUA_NOREF, align 8
  %187 = icmp eq i8* %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %176
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (...) @get_parent_object_used_count_pre_inc()
  %193 = call i32 @lua_pushnumber(i32 %191, i32 %192)
  br label %213

194:                                              ; preds = %176
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @lua_rawgeti(i32 %197, i32 %198, i8* %201)
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @lua_unref(i32 %205, i8* %208)
  %210 = load i8*, i8** @LUA_NOREF, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  store i8* %210, i8** %212, align 8
  br label %213

213:                                              ; preds = %194, %188
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @lua_pushvalue(i32 %216, i32 -3)
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @lua_remove(i32 %220, i32 -4)
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @lua_settable(i32 %224, i32 -3)
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @lua_pop(i32 %228, i32 1)
  br label %230

230:                                              ; preds = %213, %104
  br label %284

231:                                              ; preds = %4, %4
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %236 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %235, i32 0, i32 3
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @lua_unref(i32 %234, i8* %237)
  %239 = load i8*, i8** @LUA_NOREF, align 8
  %240 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %241 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %240, i32 0, i32 3
  store i8* %239, i8** %241, align 8
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  %244 = load i8*, i8** %243, align 8
  %245 = load i8*, i8** @LUA_NOREF, align 8
  %246 = icmp ne i8* %244, %245
  br i1 %246, label %247, label %275

247:                                              ; preds = %231
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @lua_rawgeti(i32 %250, i32 %251, i8* %254)
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %260 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @lua_pushnumber(i32 %258, i32 %261)
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @lua_pushnil(i32 %265)
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @lua_settable(i32 %269, i32 -3)
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @lua_pop(i32 %273, i32 1)
  br label %275

275:                                              ; preds = %247, %231
  %276 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %7, align 8
  %277 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 3
  store i32 1, i32* %282, align 8
  br label %283

283:                                              ; preds = %280, %275
  br label %284

284:                                              ; preds = %4, %283, %230, %92, %45
  ret void
}

declare dso_local i32 @DBG_PRINTF(i8*, ...) #1

declare dso_local i32 @jsonsl_strtype(i32) #1

declare dso_local i32 @get_state_buffer(%struct.TYPE_8__*, %struct.jsonsl_state_st*) #1

declare dso_local i32 @push_string(%struct.TYPE_8__*, %struct.jsonsl_state_st*) #1

declare dso_local i8* @lua_ref(i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32, i32, i8*) #1

declare dso_local i8* @get_parent_object_ref(...) #1

declare dso_local i32 @lua_pushnumber(i32, i32) #1

declare dso_local i32 @get_parent_object_used_count_pre_inc(...) #1

declare dso_local i32 @lua_unref(i32, i8*) #1

declare dso_local i32 @lua_settable(i32, i32) #1

declare dso_local i32 @lua_pop(i32, i32) #1

declare dso_local i32 @lua_pushboolean(i32, i32) #1

declare dso_local i32 @push_number(%struct.TYPE_8__*, %struct.jsonsl_state_st*) #1

declare dso_local i32 @lua_pushvalue(i32, i32) #1

declare dso_local i32 @lua_remove(i32, i32) #1

declare dso_local i32 @lua_pushnil(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
