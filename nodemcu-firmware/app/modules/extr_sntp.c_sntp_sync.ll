; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sntp.c_sntp_sync.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sntp.c_sntp_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i8*, i8* }
%struct.netif = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@state = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"sync in progress\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@server_count = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"need <128 hostname\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%d.nodemcu.pool.ntp.org\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sntp_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sntp_sync(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.netif*, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @set_repeat_mode(i32* %12, i32 0)
  store i8* null, i8** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @luaL_error(i32* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  br label %185

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @state_init(i32* %20)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %4, align 8
  br label %165

27:                                               ; No predecessors!
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_isnoneornil(i32* %29, i32 2)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_pushvalue(i32* %33, i32 2)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %37 = call i8* @luaL_ref(i32* %35, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %32, %28
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @lua_isnoneornil(i32* %41, i32 3)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @lua_pushvalue(i32* %45, i32 3)
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %49 = call i8* @luaL_ref(i32* %47, i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %44, %40
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @lua_isnoneornil(i32* %53, i32 1)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %52
  store i64 0, i64* @server_count, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i64 @lua_istable(i32* %57, i32 1)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @lua_pushvalue(i32* %61, i32 1)
  br label %84

63:                                               ; preds = %56
  %64 = load i32*, i32** %3, align 8
  %65 = call i8* @luaL_checklstring(i32* %64, i32 1, i64* %6)
  store i8* %65, i8** %7, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp ugt i64 %66, 128
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** %7, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %71
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %165

73:                                               ; No predecessors!
  br label %74

74:                                               ; preds = %73, %68
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @lua_newtable(i32* %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @lua_pushnumber(i32* %77, i32 1)
  %79 = load i32*, i32** %3, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @lua_pushstring(i32* %79, i8* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @lua_settable(i32* %82, i32 -3)
  br label %84

84:                                               ; preds = %74, %60
  br label %144

85:                                               ; preds = %52
  %86 = load i64, i64* @server_count, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %143

88:                                               ; preds = %85
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @lua_newtable(i32* %89)
  %91 = call i64 @eagle_lwip_getif(i32 0)
  %92 = inttoptr i64 %91 to %struct.netif*
  store %struct.netif* %92, %struct.netif** %8, align 8
  %93 = load %struct.netif*, %struct.netif** %8, align 8
  %94 = getelementptr inbounds %struct.netif, %struct.netif* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = icmp ne %struct.TYPE_6__* %95, null
  br i1 %96, label %97, label %121

97:                                               ; preds = %88
  %98 = load %struct.netif*, %struct.netif** %8, align 8
  %99 = getelementptr inbounds %struct.netif, %struct.netif* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %97
  %106 = load %struct.netif*, %struct.netif** %8, align 8
  %107 = getelementptr inbounds %struct.netif, %struct.netif* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = bitcast %struct.TYPE_7__* %9 to i8*
  %111 = bitcast %struct.TYPE_7__* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 8, i1 false)
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @lua_pushnumber(i32* %112, i32 1)
  %114 = load i32*, i32** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @inet_ntoa(i64 %116)
  %118 = call i32 @lua_pushstring(i32* %114, i8* %117)
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @lua_settable(i32* %119, i32 -3)
  br label %142

121:                                              ; preds = %97, %88
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %138, %121
  %123 = load i32, i32* %10, align 4
  %124 = icmp slt i32 %123, 4
  br i1 %124, label %125, label %141

125:                                              ; preds = %122
  %126 = load i32*, i32** %3, align 8
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  %129 = call i32 @lua_pushnumber(i32* %126, i32 %128)
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @sprintf(i8* %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = load i32*, i32** %3, align 8
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %135 = call i32 @lua_pushstring(i32* %133, i8* %134)
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @lua_settable(i32* %136, i32 -3)
  br label %138

138:                                              ; preds = %125
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %122

141:                                              ; preds = %122
  br label %142

142:                                              ; preds = %141, %105
  br label %143

143:                                              ; preds = %142, %85
  br label %144

144:                                              ; preds = %143, %84
  %145 = load i32*, i32** %3, align 8
  %146 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @luaL_unref(i32* %145, i32 %146, i8* %149)
  %151 = load i32*, i32** %3, align 8
  %152 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %153 = call i8* @luaL_ref(i32* %151, i32 %152)
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @sntp_dolookups(i32* %156)
  %158 = load i32*, i32** %3, align 8
  %159 = call i32 @lua_isnoneornil(i32* %158, i32 4)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %144
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 @set_repeat_mode(i32* %162, i32 1)
  br label %164

164:                                              ; preds = %161, %144
  store i32 0, i32* %2, align 4
  br label %185

165:                                              ; preds = %72, %25
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %167 = icmp ne %struct.TYPE_8__* %166, null
  br i1 %167, label %168, label %181

168:                                              ; preds = %165
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @udp_remove(i64 %176)
  br label %178

178:                                              ; preds = %173, %168
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %180 = call i32 @free(%struct.TYPE_8__* %179)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @state, align 8
  br label %181

181:                                              ; preds = %178, %165
  %182 = load i32*, i32** %3, align 8
  %183 = load i8*, i8** %4, align 8
  %184 = call i32 @luaL_error(i32* %182, i8* %183)
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %181, %164, %16
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @set_repeat_mode(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i8* @state_init(i32*) #1

declare dso_local i32 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i8* @luaL_ref(i32*, i32) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i64 @eagle_lwip_getif(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @inet_ntoa(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i8*) #1

declare dso_local i32 @sntp_dolookups(i32*) #1

declare dso_local i32 @udp_remove(i64) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
