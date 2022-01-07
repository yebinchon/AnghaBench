; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_publish.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.espconn = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"enter mqtt_socket_publish.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mqtt.socket\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"mqtt.socket expected\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"userdata is nil.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"mud->pesp_conn is NULL.\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"not connected\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"need topic\00", align 1
@MQTT_BUF_SIZE = common dso_local global i32 0, align 4
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@MQTT_MSG_TYPE_PUBLISH = common dso_local global i32 0, align 4
@ESPCONN_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"publish, queue size: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"leave mqtt_socket_publish.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mqtt_socket_publish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqtt_socket_publish(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.espconn*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %18 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.espconn* null, %struct.espconn** %4, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @luaL_checkudata(i32* %19, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %22 = inttoptr i64 %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %5, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @luaL_argcheck(i32* %23, %struct.TYPE_5__* %24, i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = icmp eq %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_pushboolean(i32* %33, i32 0)
  store i32 1, i32* %2, align 4
  br label %157

35:                                               ; preds = %1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @lua_pushboolean(i32* %42, i32 0)
  store i32 1, i32* %2, align 4
  br label %157

44:                                               ; preds = %35
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @luaL_error(i32* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 %51, i32* %2, align 4
  br label %157

52:                                               ; preds = %44
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i8* @luaL_checklstring(i32* %53, i32 %54, i64* %6)
  store i8* %55, i8** %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @luaL_error(i32* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 %62, i32* %2, align 4
  br label %157

63:                                               ; preds = %52
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i8* @luaL_checklstring(i32* %64, i32 %65, i64* %6)
  store i8* %66, i8** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @luaL_checkinteger(i32* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @luaL_checkinteger(i32* %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @MQTT_BUF_SIZE, align 4
  %80 = zext i32 %79 to i64
  %81 = call i8* @llvm.stacksave()
  store i8* %81, i8** %13, align 8
  %82 = alloca i32, i64 %80, align 16
  store i64 %80, i64* %14, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* @MQTT_BUF_SIZE, align 4
  %87 = call i32 @mqtt_msg_init(i32* %85, i32* %82, i32 %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i8*, i8** %9, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32* @mqtt_msg_publish(i32* %90, i8* %91, i8* %92, i64 %93, i32 %94, i32 %95, i32* %8)
  store i32* %96, i32** %15, align 8
  %97 = load i32*, i32** %3, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @lua_type(i32* %97, i32 %98)
  %100 = load i64, i64* @LUA_TFUNCTION, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %63
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @lua_type(i32* %103, i32 %104)
  %106 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %102, %63
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @lua_pushvalue(i32* %109, i32 %110)
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @luaL_unref(i32* %112, i32 %113, i32 %116)
  %118 = load i32*, i32** %3, align 8
  %119 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %120 = call i32 @luaL_ref(i32* %118, i32 %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %108, %102
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32*, i32** %15, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @MQTT_MSG_TYPE_PUBLISH, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32* @msg_enqueue(i32* %126, i32* %127, i32 %128, i32 %129, i32 %130)
  store i32* %131, i32** %16, align 8
  %132 = load i64, i64* @ESPCONN_OK, align 8
  store i64 %132, i64* %17, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = call i64 @mqtt_send_if_possible(i32* %135)
  store i64 %136, i64* %17, align 8
  %137 = load i32*, i32** %16, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %123
  %140 = load i64, i64* %17, align 8
  %141 = load i64, i64* @ESPCONN_OK, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139, %123
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @lua_pushboolean(i32* %144, i32 0)
  br label %149

146:                                              ; preds = %139
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @lua_pushboolean(i32* %147, i32 1)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = call i32 @msg_size(i32* %152)
  %154 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %153)
  %155 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  %156 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %156)
  br label %157

157:                                              ; preds = %149, %60, %49, %40, %31
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, %struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mqtt_msg_init(i32*, i32*, i32) #1

declare dso_local i32* @mqtt_msg_publish(i32*, i8*, i8*, i64, i32, i32, i32*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i32* @msg_enqueue(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @mqtt_send_if_possible(i32*) #1

declare dso_local i32 @msg_size(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
