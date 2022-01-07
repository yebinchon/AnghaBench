; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_on.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"enter mqtt_socket_on.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mqtt.socket\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"mqtt.socket expected\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"userdata is nil.\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"wrong arg type\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"puback\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"suback\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"unsuback\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"method not supported\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"leave mqtt_socket_on.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mqtt_socket_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqtt_socket_on(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = call i32 @NODE_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @luaL_checkudata(i32* %8, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %10 = inttoptr i64 %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = call i32 @luaL_argcheck(i32* %11, %struct.TYPE_3__* %12, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @NODE_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %176

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @luaL_checklstring(i32* %19, i32 2, i64* %5)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @luaL_error(i32* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 %25, i32* %2, align 4
  br label %176

26:                                               ; preds = %18
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @luaL_checkanyfunction(i32* %27, i32 3)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_pushvalue(i32* %29, i32 3)
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %31, 7
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 6
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @luaL_unref(i32* %38, i32 %39, i8* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %46 = call i8* @luaL_ref(i32* %44, i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  br label %174

49:                                               ; preds = %33, %26
  %50 = load i64, i64* %5, align 8
  %51 = icmp eq i64 %50, 7
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @luaL_unref(i32* %57, i32 %58, i8* %61)
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %65 = call i8* @luaL_ref(i32* %63, i32 %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  br label %173

68:                                               ; preds = %52, %49
  %69 = load i64, i64* %5, align 8
  %70 = icmp eq i64 %69, 7
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @luaL_unref(i32* %76, i32 %77, i8* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %84 = call i8* @luaL_ref(i32* %82, i32 %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  br label %172

87:                                               ; preds = %71, %68
  %88 = load i64, i64* %5, align 8
  %89 = icmp eq i64 %88, 8
  br i1 %89, label %90, label %106

90:                                               ; preds = %87
  %91 = load i8*, i8** %6, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @luaL_unref(i32* %95, i32 %96, i8* %99)
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %103 = call i8* @luaL_ref(i32* %101, i32 %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  br label %171

106:                                              ; preds = %90, %87
  %107 = load i64, i64* %5, align 8
  %108 = icmp eq i64 %107, 6
  br i1 %108, label %109, label %125

109:                                              ; preds = %106
  %110 = load i8*, i8** %6, align 8
  %111 = call i64 @strcmp(i8* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = load i32*, i32** %3, align 8
  %115 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @luaL_unref(i32* %114, i32 %115, i8* %118)
  %120 = load i32*, i32** %3, align 8
  %121 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %122 = call i8* @luaL_ref(i32* %120, i32 %121)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  br label %170

125:                                              ; preds = %109, %106
  %126 = load i64, i64* %5, align 8
  %127 = icmp eq i64 %126, 6
  br i1 %127, label %128, label %144

128:                                              ; preds = %125
  %129 = load i8*, i8** %6, align 8
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = load i32*, i32** %3, align 8
  %134 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @luaL_unref(i32* %133, i32 %134, i8* %137)
  %139 = load i32*, i32** %3, align 8
  %140 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %141 = call i8* @luaL_ref(i32* %139, i32 %140)
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  br label %169

144:                                              ; preds = %128, %125
  %145 = load i64, i64* %5, align 8
  %146 = icmp eq i64 %145, 8
  br i1 %146, label %147, label %163

147:                                              ; preds = %144
  %148 = load i8*, i8** %6, align 8
  %149 = call i64 @strcmp(i8* %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %147
  %152 = load i32*, i32** %3, align 8
  %153 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @luaL_unref(i32* %152, i32 %153, i8* %156)
  %158 = load i32*, i32** %3, align 8
  %159 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %160 = call i8* @luaL_ref(i32* %158, i32 %159)
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  br label %168

163:                                              ; preds = %147, %144
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @lua_pop(i32* %164, i32 1)
  %166 = load i32*, i32** %3, align 8
  %167 = call i32 @luaL_error(i32* %166, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  store i32 %167, i32* %2, align 4
  br label %176

168:                                              ; preds = %151
  br label %169

169:                                              ; preds = %168, %132
  br label %170

170:                                              ; preds = %169, %113
  br label %171

171:                                              ; preds = %170, %94
  br label %172

172:                                              ; preds = %171, %75
  br label %173

173:                                              ; preds = %172, %56
  br label %174

174:                                              ; preds = %173, %37
  %175 = call i32 @NODE_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %174, %163, %23, %16
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, %struct.TYPE_3__*, i32, i8*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checkanyfunction(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @luaL_unref(i32*, i32, i8*) #1

declare dso_local i8* @luaL_ref(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
