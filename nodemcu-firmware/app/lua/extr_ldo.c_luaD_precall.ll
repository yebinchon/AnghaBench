; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldo.c_luaD_precall.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldo.c_luaD_precall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, i64, i64, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__*, i32 }
%struct.TYPE_31__ = type { i64, i64, i32, i32 }
%struct.TYPE_33__ = type { i64, i64, i64, i32, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_32__ }
%struct.TYPE_27__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_30__*)* }

@LUA_MASKCALL = common dso_local global i32 0, align 4
@LUA_HOOKCALL = common dso_local global i32 0, align 4
@PCRLUA = common dso_local global i32 0, align 4
@LUA_MINSTACK = common dso_local global i64 0, align 8
@PCRYIELD = common dso_local global i32 0, align 4
@PCRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaD_precall(%struct.TYPE_30__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_33__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @ttisfunction(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @ttislightfunction(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @tryfuncTM(%struct.TYPE_30__* %25, i64 %26)
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %24, %20, %3
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @savestack(%struct.TYPE_30__* %29, i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @ttisfunction(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i64, i64* %6, align 8
  %37 = call %struct.TYPE_28__* @clvalue(i64 %36)
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  store %struct.TYPE_32__* %38, %struct.TYPE_32__** %9, align 8
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %48 = icmp ne %struct.TYPE_32__* %47, null
  br i1 %48, label %49, label %188

49:                                               ; preds = %39
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %188, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %56, align 8
  store %struct.TYPE_31__* %57, %struct.TYPE_31__** %13, align 8
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @luaD_checkstack(%struct.TYPE_30__* %58, i64 %61)
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i8* @restorestack(%struct.TYPE_30__* %63, i32 %64)
  %66 = ptrtoint i8* %65 to i64
  store i64 %66, i64* %6, align 8
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %92, label %71

71:                                               ; preds = %54
  %72 = load i64, i64* %6, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %12, align 8
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = icmp sgt i64 %76, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %71
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %83, %71
  br label %108

92:                                               ; preds = %54
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = sub nsw i64 %95, %96
  %98 = call i32 @cast_int(i64 %97)
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i64 @adjust_varargs(%struct.TYPE_30__* %100, %struct.TYPE_31__* %101, i32 %102)
  store i64 %103, i64* %12, align 8
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i8* @restorestack(%struct.TYPE_30__* %104, i32 %105)
  %107 = ptrtoint i8* %106 to i64
  store i64 %107, i64* %6, align 8
  br label %108

108:                                              ; preds = %92, %91
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %110 = call %struct.TYPE_33__* @inc_ci(%struct.TYPE_30__* %109)
  store %struct.TYPE_33__* %110, %struct.TYPE_33__** %10, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 1
  store i64 %114, i64* %118, align 8
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp sle i64 %130, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @lua_assert(i32 %135)
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 4
  store i64 0, i64* %143, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %11, align 8
  br label %150

150:                                              ; preds = %159, %108
  %151 = load i64, i64* %11, align 8
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp slt i64 %151, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i64, i64* %11, align 8
  %158 = call i32 @setnilvalue(i64 %157)
  br label %159

159:                                              ; preds = %156
  %160 = load i64, i64* %11, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %11, align 8
  br label %150

162:                                              ; preds = %150
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @LUA_MASKCALL, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %162
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %180 = load i32, i32* @LUA_HOOKCALL, align 4
  %181 = call i32 @luaD_callhook(%struct.TYPE_30__* %179, i32 %180, i32 -1)
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %174, %162
  %187 = load i32, i32* @PCRLUA, align 4
  store i32 %187, i32* %4, align 4
  br label %278

188:                                              ; preds = %49, %39
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %190 = load i64, i64* @LUA_MINSTACK, align 8
  %191 = call i32 @luaD_checkstack(%struct.TYPE_30__* %189, i64 %190)
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %193 = call %struct.TYPE_33__* @inc_ci(%struct.TYPE_30__* %192)
  store %struct.TYPE_33__* %193, %struct.TYPE_33__** %15, align 8
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %195 = load i32, i32* %8, align 4
  %196 = call i8* @restorestack(%struct.TYPE_30__* %194, i32 %195)
  %197 = ptrtoint i8* %196 to i64
  %198 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 1
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i32 0, i32 1
  store i64 %203, i64* %205, align 8
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 1
  store i64 %203, i64* %207, align 8
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @LUA_MINSTACK, align 8
  %212 = add nsw i64 %210, %211
  %213 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %213, i32 0, i32 2
  store i64 %212, i64* %214, align 8
  %215 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp sle i64 %217, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 @lua_assert(i32 %222)
  %224 = load i32, i32* %7, align 4
  %225 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %226 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 8
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @LUA_MASKCALL, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %188
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %235 = load i32, i32* @LUA_HOOKCALL, align 4
  %236 = call i32 @luaD_callhook(%struct.TYPE_30__* %234, i32 %235, i32 -1)
  br label %237

237:                                              ; preds = %233, %188
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %239 = call i32 @lua_unlock(%struct.TYPE_30__* %238)
  %240 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = call i64 @ttisfunction(i64 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %237
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %247 = call %struct.TYPE_27__* @curr_func(%struct.TYPE_30__* %246)
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %248, i32 0, i32 0
  %250 = load i32 (%struct.TYPE_30__*)*, i32 (%struct.TYPE_30__*)** %249, align 8
  %251 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %252 = call i32 %250(%struct.TYPE_30__* %251)
  store i32 %252, i32* %16, align 4
  br label %261

253:                                              ; preds = %237
  %254 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %255 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = call i64 @fvalue(i64 %256)
  %258 = inttoptr i64 %257 to i32 (%struct.TYPE_30__*)*
  %259 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %260 = call i32 %258(%struct.TYPE_30__* %259)
  store i32 %260, i32* %16, align 4
  br label %261

261:                                              ; preds = %253, %245
  %262 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %263 = call i32 @lua_lock(%struct.TYPE_30__* %262)
  %264 = load i32, i32* %16, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = load i32, i32* @PCRYIELD, align 4
  store i32 %267, i32* %4, align 4
  br label %278

268:                                              ; preds = %261
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* %16, align 4
  %274 = sext i32 %273 to i64
  %275 = sub nsw i64 %272, %274
  %276 = call i32 @luaD_poscall(%struct.TYPE_30__* %269, i64 %275)
  %277 = load i32, i32* @PCRC, align 4
  store i32 %277, i32* %4, align 4
  br label %278

278:                                              ; preds = %268, %266, %186
  %279 = load i32, i32* %4, align 4
  ret i32 %279
}

declare dso_local i64 @ttisfunction(i64) #1

declare dso_local i32 @ttislightfunction(i64) #1

declare dso_local i64 @tryfuncTM(%struct.TYPE_30__*, i64) #1

declare dso_local i32 @savestack(%struct.TYPE_30__*, i64) #1

declare dso_local %struct.TYPE_28__* @clvalue(i64) #1

declare dso_local i32 @luaD_checkstack(%struct.TYPE_30__*, i64) #1

declare dso_local i8* @restorestack(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @cast_int(i64) #1

declare dso_local i64 @adjust_varargs(%struct.TYPE_30__*, %struct.TYPE_31__*, i32) #1

declare dso_local %struct.TYPE_33__* @inc_ci(%struct.TYPE_30__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @setnilvalue(i64) #1

declare dso_local i32 @luaD_callhook(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @lua_unlock(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_27__* @curr_func(%struct.TYPE_30__*) #1

declare dso_local i64 @fvalue(i64) #1

declare dso_local i32 @lua_lock(%struct.TYPE_30__*) #1

declare dso_local i32 @luaD_poscall(%struct.TYPE_30__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
