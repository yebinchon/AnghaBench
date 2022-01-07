; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_sjson_encoder_make_next_chunk.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_sjson_encoder_make_next_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i8*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LUA_NOREF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*)* @sjson_encoder_make_next_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sjson_encoder_make_next_chunk(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %232

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @luaL_buffinit(i32* %14, %struct.TYPE_12__* %5)
  br label %16

16:                                               ; preds = %223, %185, %90, %13
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ false, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %224

28:                                               ; preds = %26
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i64 %34
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %6, align 8
  store i32 0, i32* %7, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %115

40:                                               ; preds = %28
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @luaL_addchar(%struct.TYPE_12__* %5, i8 signext 91)
  br label %47

47:                                               ; preds = %45, %40
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = shl i64 %54, 1
  %56 = icmp eq i64 %51, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = call i32 @luaL_addchar(%struct.TYPE_12__* %5, i8 signext 93)
  store i32 1, i32* %7, align 4
  br label %110

59:                                               ; preds = %47
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @luaL_addchar(%struct.TYPE_12__* %5, i8 signext 44)
  br label %72

72:                                               ; preds = %70, %65
  br label %109

73:                                               ; preds = %59
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @lua_rawgeti(i32* %74, i32 %75, i32 %78)
  %80 = load i32*, i32** %3, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 1
  %85 = add nsw i32 %84, 1
  %86 = call i32 @lua_rawgeti(i32* %80, i32 -1, i32 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = call i64 @sjson_encoder_next_value_is_table(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %73
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = call i32 @enc_push_stack(i32* %91, %struct.TYPE_14__* %92, i32 -1)
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @lua_pop(i32* %94, i32 2)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  br label %16

100:                                              ; preds = %73
  %101 = load i32*, i32** %3, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = call i32 @encode_lua_object(i32* %101, %struct.TYPE_14__* %102, i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @lua_remove(i32* %104, i32 -2)
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @lua_remove(i32* %106, i32 -2)
  %108 = call i32 @luaL_addvalue(%struct.TYPE_12__* %5)
  br label %109

109:                                              ; preds = %100, %72
  br label %110

110:                                              ; preds = %109, %57
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  br label %216

115:                                              ; preds = %28
  %116 = load i32*, i32** %3, align 8
  %117 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @lua_rawgeti(i32* %116, i32 %117, i32 %120)
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @lua_rawgeti(i32* %122, i32 %123, i32 %126)
  %128 = load i32*, i32** %3, align 8
  %129 = call i64 @lua_next(i32* %128, i32 -2)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %207

131:                                              ; preds = %115
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 1
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %131
  %138 = load i32*, i32** %3, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @lua_unref(i32* %138, i32 %141)
  %143 = load i32, i32* @LUA_NOREF, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 8
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 @lua_pushvalue(i32* %146, i32 -2)
  %148 = load i32*, i32** %3, align 8
  %149 = call i8* @lua_ref(i32* %148, i32 1)
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %137, %131
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %181

159:                                              ; preds = %153
  %160 = load i32*, i32** %3, align 8
  %161 = call i32 @lua_pushvalue(i32* %160, i32 -2)
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 @lua_tostring(i32* %162, i32 -1)
  %164 = load i32*, i32** %3, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %172 = call i32 @encode_lua_object(i32* %164, %struct.TYPE_14__* %165, i32 -1, i8* %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %173 = load i32*, i32** %3, align 8
  %174 = call i32 @lua_remove(i32* %173, i32 -2)
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @lua_remove(i32* %175, i32 -2)
  %177 = load i32*, i32** %3, align 8
  %178 = call i32 @lua_remove(i32* %177, i32 -2)
  %179 = load i32*, i32** %3, align 8
  %180 = call i32 @lua_remove(i32* %179, i32 -2)
  br label %205

181:                                              ; preds = %153
  %182 = load i32*, i32** %3, align 8
  %183 = call i64 @sjson_encoder_next_value_is_table(i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %181
  %186 = load i32*, i32** %3, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %188 = call i32 @enc_push_stack(i32* %186, %struct.TYPE_14__* %187, i32 -1)
  %189 = load i32*, i32** %3, align 8
  %190 = call i32 @lua_pop(i32* %189, i32 3)
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 8
  br label %16

195:                                              ; preds = %181
  %196 = load i32*, i32** %3, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %198 = call i32 @encode_lua_object(i32* %196, %struct.TYPE_14__* %197, i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %199 = load i32*, i32** %3, align 8
  %200 = call i32 @lua_remove(i32* %199, i32 -2)
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 @lua_remove(i32* %201, i32 -2)
  %203 = load i32*, i32** %3, align 8
  %204 = call i32 @lua_remove(i32* %203, i32 -2)
  br label %205

205:                                              ; preds = %195, %159
  %206 = call i32 @luaL_addvalue(%struct.TYPE_12__* %5)
  br label %211

207:                                              ; preds = %115
  %208 = load i32*, i32** %3, align 8
  %209 = call i32 @lua_pop(i32* %208, i32 1)
  %210 = call i32 @luaL_addchar(%struct.TYPE_12__* %5, i8 signext 125)
  store i32 1, i32* %7, align 4
  br label %211

211:                                              ; preds = %207, %205
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 8
  br label %216

216:                                              ; preds = %211, %110
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load i32*, i32** %3, align 8
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %222 = call i32 @enc_pop_stack(i32* %220, %struct.TYPE_14__* %221)
  br label %223

223:                                              ; preds = %219, %216
  br label %16

224:                                              ; preds = %26
  %225 = call i32 @luaL_pushresult(%struct.TYPE_12__* %5)
  %226 = load i32*, i32** %3, align 8
  %227 = call i8* @lua_ref(i32* %226, i32 1)
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 2
  store i8* %227, i8** %229, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  store i64 0, i64* %231, align 8
  br label %232

232:                                              ; preds = %224, %12
  ret void
}

declare dso_local i32 @luaL_buffinit(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @luaL_addchar(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i64 @sjson_encoder_next_value_is_table(i32*) #1

declare dso_local i32 @enc_push_stack(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @encode_lua_object(i32*, %struct.TYPE_14__*, i32, i8*, i8*) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @luaL_addvalue(%struct.TYPE_12__*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_unref(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i8* @lua_ref(i32*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @enc_pop_stack(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @luaL_pushresult(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
