; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_endpoints.c_handle_post_function.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_endpoints.c_handle_post_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_21__*, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32 }

@COAP_OPTION_URI_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"should never happen.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"/v1/f/\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" match.\0A\00", align 1
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"should be a function\0A\00", align 1
@COAP_RSPCODE_NOT_FOUND = common dso_local global i32 0, align 4
@COAP_CONTENTTYPE_NONE = common dso_local global i32 0, align 4
@MAX_PAYLOAD_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"return string:<MAX_PAYLOAD_SIZE\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@COAP_RSPCODE_CONTENT = common dso_local global i32 0, align 4
@COAP_CONTENTTYPE_TEXT_PLAIN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"/v1/f match.\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"none match.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32*, %struct.TYPE_19__*, %struct.TYPE_19__*, i64, i64)* @handle_post_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_post_function(%struct.TYPE_22__* %0, i32* %1, %struct.TYPE_19__* %2, %struct.TYPE_19__* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %21 = call i32* (...) @lua_getstate()
  store i32* %21, i32** %17, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %23 = load i32, i32* @COAP_OPTION_URI_PATH, align 4
  %24 = call %struct.TYPE_20__* @coap_findOptions(%struct.TYPE_19__* %22, i32 %23, i64* %15)
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %14, align 8
  %25 = icmp ne %struct.TYPE_20__* null, %24
  br i1 %25, label %26, label %224

26:                                               ; preds = %6
  %27 = load i64, i64* %15, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %27, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load i64, i64* %15, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = icmp ne i64 %35, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i32 @NODE_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %226

45:                                               ; preds = %34, %26
  %46 = load i64, i64* %15, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  %53 = icmp eq i64 %46, %52
  br i1 %53, label %54, label %221

54:                                               ; preds = %45
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  store %struct.TYPE_21__* %59, %struct.TYPE_21__** %18, align 8
  br label %60

60:                                               ; preds = %219, %76, %54
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %62 = icmp ne %struct.TYPE_21__* null, %61
  br i1 %62, label %63, label %220

63:                                               ; preds = %60
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %65 = load i64, i64* %15, align 8
  %66 = sub nsw i64 %65, 1
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @strlen(i64 %73)
  %75 = icmp ne i64 %70, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %78, align 8
  store %struct.TYPE_21__* %79, %struct.TYPE_21__** %18, align 8
  br label %60

80:                                               ; preds = %63
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %85 = load i64, i64* %15, align 8
  %86 = sub nsw i64 %85, 1
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %92 = load i64, i64* %15, align 8
  %93 = sub nsw i64 %92, 1
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @memcmp(i64 %83, i32 %90, i64 %97)
  %99 = icmp eq i64 0, %98
  br i1 %99, label %100, label %215

100:                                              ; preds = %80
  %101 = call i32 @NODE_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @NODE_DBG(i8* %105)
  %107 = call i32 @NODE_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @strlen(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %214

113:                                              ; preds = %100
  %114 = load i32*, i32** %17, align 8
  %115 = call i32 @lua_gettop(i32* %114)
  store i32 %115, i32* %16, align 4
  %116 = load i32*, i32** %17, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @lua_getglobal(i32* %116, i64 %119)
  %121 = load i32*, i32** %17, align 8
  %122 = call i64 @lua_type(i32* %121, i32 -1)
  %123 = load i64, i64* @LUA_TFUNCTION, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %113
  %126 = call i32 @NODE_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i32*, i32** %17, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @lua_settop(i32* %127, i32 %128)
  %130 = load i32*, i32** %9, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* %13, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i32, i32* @COAP_RSPCODE_NOT_FOUND, align 4
  %137 = load i32, i32* @COAP_CONTENTTYPE_NONE, align 4
  %138 = call i32 @coap_make_response(i32* %130, %struct.TYPE_19__* %131, i8* null, i64 0, i64 %132, i64 %133, i32* %135, i32 %136, i32 %137)
  store i32 %138, i32* %7, align 4
  br label %236

139:                                              ; preds = %113
  %140 = load i32*, i32** %17, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @lua_pushlstring(i32* %140, i32 %144, i32 %148)
  %150 = load i32*, i32** %17, align 8
  %151 = call i32 @lua_call(i32* %150, i32 1, i32 1)
  %152 = load i32*, i32** %17, align 8
  %153 = call i32 @lua_isnil(i32* %152, i32 -1)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %199, label %155

155:                                              ; preds = %139
  %156 = load i32*, i32** %17, align 8
  %157 = call i64 @lua_isstring(i32* %156, i32 -1)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %198

159:                                              ; preds = %155
  store i64 0, i64* %19, align 8
  %160 = load i32*, i32** %17, align 8
  %161 = call i8* @luaL_checklstring(i32* %160, i32 -1, i64* %19)
  store i8* %161, i8** %20, align 8
  %162 = load i64, i64* %19, align 8
  %163 = load i64, i64* @MAX_PAYLOAD_SIZE, align 8
  %164 = icmp ugt i64 %162, %163
  br i1 %164, label %165, label %180

165:                                              ; preds = %159
  %166 = load i32*, i32** %17, align 8
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @lua_settop(i32* %166, i32 %167)
  %169 = load i32*, i32** %17, align 8
  %170 = call i32 @luaL_error(i32* %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %171 = load i32*, i32** %9, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %173 = load i64, i64* %12, align 8
  %174 = load i64, i64* %13, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = load i32, i32* @COAP_RSPCODE_NOT_FOUND, align 4
  %178 = load i32, i32* @COAP_CONTENTTYPE_NONE, align 4
  %179 = call i32 @coap_make_response(i32* %171, %struct.TYPE_19__* %172, i8* null, i64 0, i64 %173, i64 %174, i32* %176, i32 %177, i32 %178)
  store i32 %179, i32* %7, align 4
  br label %236

180:                                              ; preds = %159
  %181 = load i8*, i8** %20, align 8
  %182 = call i32 @NODE_DBG(i8* %181)
  %183 = call i32 @NODE_DBG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %184 = load i32*, i32** %17, align 8
  %185 = load i32, i32* %16, align 4
  %186 = call i32 @lua_settop(i32* %184, i32 %185)
  %187 = load i32*, i32** %9, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %189 = load i8*, i8** %20, align 8
  %190 = load i64, i64* %19, align 8
  %191 = load i64, i64* %12, align 8
  %192 = load i64, i64* %13, align 8
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = load i32, i32* @COAP_RSPCODE_CONTENT, align 4
  %196 = load i32, i32* @COAP_CONTENTTYPE_TEXT_PLAIN, align 4
  %197 = call i32 @coap_make_response(i32* %187, %struct.TYPE_19__* %188, i8* %189, i64 %190, i64 %191, i64 %192, i32* %194, i32 %195, i32 %196)
  store i32 %197, i32* %7, align 4
  br label %236

198:                                              ; preds = %155
  br label %212

199:                                              ; preds = %139
  %200 = load i32*, i32** %17, align 8
  %201 = load i32, i32* %16, align 4
  %202 = call i32 @lua_settop(i32* %200, i32 %201)
  %203 = load i32*, i32** %9, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %205 = load i64, i64* %12, align 8
  %206 = load i64, i64* %13, align 8
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  %209 = load i32, i32* @COAP_RSPCODE_CONTENT, align 4
  %210 = load i32, i32* @COAP_CONTENTTYPE_TEXT_PLAIN, align 4
  %211 = call i32 @coap_make_response(i32* %203, %struct.TYPE_19__* %204, i8* null, i64 0, i64 %205, i64 %206, i32* %208, i32 %209, i32 %210)
  store i32 %211, i32* %7, align 4
  br label %236

212:                                              ; preds = %198
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213, %100
  br label %219

215:                                              ; preds = %80
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %217, align 8
  store %struct.TYPE_21__* %218, %struct.TYPE_21__** %18, align 8
  br label %219

219:                                              ; preds = %215, %214
  br label %60

220:                                              ; preds = %60
  br label %223

221:                                              ; preds = %45
  %222 = call i32 @NODE_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %226

223:                                              ; preds = %220
  br label %224

224:                                              ; preds = %223, %6
  %225 = call i32 @NODE_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %221, %43
  %227 = load i32*, i32** %9, align 8
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %229 = load i64, i64* %12, align 8
  %230 = load i64, i64* %13, align 8
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load i32, i32* @COAP_RSPCODE_NOT_FOUND, align 4
  %234 = load i32, i32* @COAP_CONTENTTYPE_NONE, align 4
  %235 = call i32 @coap_make_response(i32* %227, %struct.TYPE_19__* %228, i8* null, i64 0, i64 %229, i64 %230, i32* %232, i32 %233, i32 %234)
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %226, %199, %180, %165, %125
  %237 = load i32, i32* %7, align 4
  ret i32 %237
}

declare dso_local i32* @lua_getstate(...) #1

declare dso_local %struct.TYPE_20__* @coap_findOptions(%struct.TYPE_19__*, i32, i64*) #1

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @memcmp(i64, i32, i64) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_getglobal(i32*, i64) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @coap_make_response(i32*, %struct.TYPE_19__*, i8*, i64, i64, i64, i32*, i32, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i32, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
