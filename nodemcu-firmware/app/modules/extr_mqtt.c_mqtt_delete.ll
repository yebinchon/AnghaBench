; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_delete.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_11__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_11__* }

@.str = private unnamed_addr constant [20 x i8] c"enter mqtt_delete.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mqtt.socket\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"mqtt.socket expected\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"userdata is nil.\0A\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i8* null, align 8
@LUA_GCSTOP = common dso_local global i32 0, align 4
@LUA_GCRESTART = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"leave mqtt_delete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mqtt_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqtt_delete(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call i32 @NODE_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @luaL_checkudata(i32* %6, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %8 = inttoptr i64 %7 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = call i32 @luaL_argcheck(i32* %9, %struct.TYPE_10__* %10, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @NODE_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %250

16:                                               ; preds = %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 13
  %19 = call i32 @os_timer_disarm(i32* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 12
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %58

26:                                               ; preds = %16
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 12
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 12
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = icmp ne %struct.TYPE_11__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 12
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = call i32 @free(%struct.TYPE_11__* %44)
  br label %46

46:                                               ; preds = %38, %26
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 12
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 12
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = call i32 @free(%struct.TYPE_11__* %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 12
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %57, align 8
  br label %58

58:                                               ; preds = %46, %16
  br label %59

59:                                               ; preds = %65, %58
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 11
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 11
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = call i32 @msg_dequeue(i64* %68)
  %70 = call i32 @msg_destroy(i32 %69)
  br label %59

71:                                               ; preds = %59
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 10
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = icmp ne %struct.TYPE_11__* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = call i32 @free(%struct.TYPE_11__* %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 10
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %85, align 8
  br label %86

86:                                               ; preds = %77, %71
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 10
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = icmp ne %struct.TYPE_11__* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 10
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = call i32 @free(%struct.TYPE_11__* %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 10
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %100, align 8
  br label %101

101:                                              ; preds = %92, %86
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 11
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = icmp ne %struct.TYPE_11__* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 11
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = call i32 @free(%struct.TYPE_11__* %111)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 11
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %115, align 8
  br label %116

116:                                              ; preds = %107, %101
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 10
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = icmp ne %struct.TYPE_11__* %120, null
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 10
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = call i32 @free(%struct.TYPE_11__* %126)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 10
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %130, align 8
  br label %131

131:                                              ; preds = %122, %116
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 10
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = icmp ne %struct.TYPE_11__* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 10
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = call i32 @free(%struct.TYPE_11__* %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 10
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %145, align 8
  br label %146

146:                                              ; preds = %137, %131
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 10
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = icmp ne %struct.TYPE_11__* %150, null
  br i1 %151, label %152, label %161

152:                                              ; preds = %146
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 10
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = call i32 @free(%struct.TYPE_11__* %156)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 10
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %160, align 8
  br label %161

161:                                              ; preds = %152, %146
  %162 = load i32*, i32** %3, align 8
  %163 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 9
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @luaL_unref(i32* %162, i32 %163, i8* %166)
  %168 = load i8*, i8** @LUA_NOREF, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 9
  store i8* %168, i8** %170, align 8
  %171 = load i32*, i32** %3, align 8
  %172 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 8
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @luaL_unref(i32* %171, i32 %172, i8* %175)
  %177 = load i8*, i8** @LUA_NOREF, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 8
  store i8* %177, i8** %179, align 8
  %180 = load i32*, i32** %3, align 8
  %181 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 7
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @luaL_unref(i32* %180, i32 %181, i8* %184)
  %186 = load i8*, i8** @LUA_NOREF, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 7
  store i8* %186, i8** %188, align 8
  %189 = load i32*, i32** %3, align 8
  %190 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 6
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @luaL_unref(i32* %189, i32 %190, i8* %193)
  %195 = load i8*, i8** @LUA_NOREF, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 6
  store i8* %195, i8** %197, align 8
  %198 = load i32*, i32** %3, align 8
  %199 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 5
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @luaL_unref(i32* %198, i32 %199, i8* %202)
  %204 = load i8*, i8** @LUA_NOREF, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 5
  store i8* %204, i8** %206, align 8
  %207 = load i32*, i32** %3, align 8
  %208 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 4
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @luaL_unref(i32* %207, i32 %208, i8* %211)
  %213 = load i8*, i8** @LUA_NOREF, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 4
  store i8* %213, i8** %215, align 8
  %216 = load i32*, i32** %3, align 8
  %217 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 3
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @luaL_unref(i32* %216, i32 %217, i8* %220)
  %222 = load i8*, i8** @LUA_NOREF, align 8
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 3
  store i8* %222, i8** %224, align 8
  %225 = load i32*, i32** %3, align 8
  %226 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 2
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @luaL_unref(i32* %225, i32 %226, i8* %229)
  %231 = load i8*, i8** @LUA_NOREF, align 8
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 2
  store i8* %231, i8** %233, align 8
  %234 = load i32*, i32** %3, align 8
  %235 = load i32, i32* @LUA_GCSTOP, align 4
  %236 = call i32 @lua_gc(i32* %234, i32 %235, i32 0)
  %237 = load i32*, i32** %3, align 8
  %238 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @luaL_unref(i32* %237, i32 %238, i8* %241)
  %243 = load i8*, i8** @LUA_NOREF, align 8
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 1
  store i8* %243, i8** %245, align 8
  %246 = load i32*, i32** %3, align 8
  %247 = load i32, i32* @LUA_GCRESTART, align 4
  %248 = call i32 @lua_gc(i32* %246, i32 %247, i32 0)
  %249 = call i32 @NODE_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %250

250:                                              ; preds = %161, %14
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, %struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @msg_destroy(i32) #1

declare dso_local i32 @msg_dequeue(i64*) #1

declare dso_local i32 @luaL_unref(i32*, i32, i8*) #1

declare dso_local i32 @lua_gc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
