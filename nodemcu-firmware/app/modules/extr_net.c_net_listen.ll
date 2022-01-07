; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_listen.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32*, %struct.tcp_pcb*, %struct.TYPE_6__, i64 }
%struct.tcp_pcb = type { i32 }
%struct.TYPE_6__ = type { i8* }

@TYPE_TCP_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid user data\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"already listening\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid IP address\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"need callback\00", align 1
@ERR_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"cannot allocate PCB\00", align 1
@SOF_REUSEADDR = common dso_local global i32 0, align 4
@ERR_MEM = common dso_local global i64 0, align 8
@net_accept_cb = common dso_local global i32 0, align 4
@net_udp_recv_cb = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_listen(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.tcp_pcb*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.TYPE_7__* @net_get_udata(i32* %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TYPE_TCP_CLIENT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @luaL_error(i32* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %219

25:                                               ; preds = %16
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @luaL_error(i32* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %2, align 4
  br label %219

33:                                               ; preds = %25
  store i32 2, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @lua_isnumber(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  %42 = call i32 @lua_tointeger(i32* %39, i32 %40)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @lua_isstring(i32* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  store i64 0, i64* %8, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = call i8* @luaL_checklstring(i32* %49, i32 %50, i64* %8)
  store i8* %52, i8** %7, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @ipaddr_aton(i8* %54, i32* %9)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @luaL_error(i32* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 %59, i32* %2, align 4
  br label %219

60:                                               ; preds = %53
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 129
  br i1 %64, label %65, label %97

65:                                               ; preds = %60
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @lua_isfunction(i32* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @lua_islightfunction(i32* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %70, %65
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = call i32 @lua_pushvalue(i32* %76, i32 %77)
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @luaL_unref(i32* %80, i32 %81, i8* %85)
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %89 = call i8* @luaL_ref(i32* %87, i32 %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i8* %89, i8** %92, align 8
  br label %96

93:                                               ; preds = %70
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @luaL_error(i32* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %95, i32* %2, align 4
  br label %219

96:                                               ; preds = %75
  br label %97

97:                                               ; preds = %96, %60
  %98 = load i64, i64* @ERR_OK, align 8
  store i64 %98, i64* %10, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %177 [
    i32 129, label %102
    i32 128, label %154
  ]

102:                                              ; preds = %97
  %103 = call %struct.tcp_pcb* (...) @tcp_new()
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  store %struct.tcp_pcb* %103, %struct.tcp_pcb** %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load %struct.tcp_pcb*, %struct.tcp_pcb** %107, align 8
  %109 = icmp ne %struct.tcp_pcb* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @luaL_error(i32* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 %112, i32* %2, align 4
  br label %219

113:                                              ; preds = %102
  %114 = load i32, i32* @SOF_REUSEADDR, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load %struct.tcp_pcb*, %struct.tcp_pcb** %116, align 8
  %118 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load %struct.tcp_pcb*, %struct.tcp_pcb** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i64 @tcp_bind(%struct.tcp_pcb* %123, i32* %9, i32 %124)
  store i64 %125, i64* %10, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* @ERR_OK, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %113
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 3
  %132 = load %struct.tcp_pcb*, %struct.tcp_pcb** %131, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = call i32 @tcp_arg(%struct.tcp_pcb* %132, %struct.TYPE_7__* %133)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = load %struct.tcp_pcb*, %struct.tcp_pcb** %136, align 8
  %138 = call %struct.tcp_pcb* @tcp_listen(%struct.tcp_pcb* %137)
  store %struct.tcp_pcb* %138, %struct.tcp_pcb** %11, align 8
  %139 = load %struct.tcp_pcb*, %struct.tcp_pcb** %11, align 8
  %140 = icmp ne %struct.tcp_pcb* %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %129
  %142 = load i64, i64* @ERR_MEM, align 8
  store i64 %142, i64* %10, align 8
  br label %152

143:                                              ; preds = %129
  %144 = load %struct.tcp_pcb*, %struct.tcp_pcb** %11, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 3
  store %struct.tcp_pcb* %144, %struct.tcp_pcb** %146, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = load %struct.tcp_pcb*, %struct.tcp_pcb** %148, align 8
  %150 = load i32, i32* @net_accept_cb, align 4
  %151 = call i32 @tcp_accept(%struct.tcp_pcb* %149, i32 %150)
  br label %152

152:                                              ; preds = %143, %141
  br label %153

153:                                              ; preds = %152, %113
  br label %177

154:                                              ; preds = %97
  %155 = call i32* (...) @udp_new()
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  store i32* %155, i32** %157, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %154
  %163 = load i32*, i32** %3, align 8
  %164 = call i32 @luaL_error(i32* %163, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 %164, i32* %2, align 4
  br label %219

165:                                              ; preds = %154
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* @net_udp_recv_cb, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %171 = call i32 @udp_recv(i32* %168, i32 %169, %struct.TYPE_7__* %170)
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = call i64 @udp_bind(i32* %174, i32* %9, i32 %175)
  store i64 %176, i64* %10, align 8
  br label %177

177:                                              ; preds = %97, %165, %153
  %178 = load i64, i64* %10, align 8
  %179 = load i64, i64* @ERR_OK, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %203

181:                                              ; preds = %177
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  switch i32 %184, label %199 [
    i32 129, label %185
    i32 128, label %192
  ]

185:                                              ; preds = %181
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 3
  %188 = load %struct.tcp_pcb*, %struct.tcp_pcb** %187, align 8
  %189 = call i32 @tcp_close(%struct.tcp_pcb* %188)
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 3
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %191, align 8
  br label %199

192:                                              ; preds = %181
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @udp_remove(i32* %195)
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  store i32* null, i32** %198, align 8
  br label %199

199:                                              ; preds = %181, %192, %185
  %200 = load i32*, i32** %3, align 8
  %201 = load i64, i64* %10, align 8
  %202 = call i32 @lwip_lua_checkerr(i32* %200, i64 %201)
  store i32 %202, i32* %2, align 4
  br label %219

203:                                              ; preds = %177
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @LUA_NOREF, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %218

209:                                              ; preds = %203
  %210 = load i32*, i32** %3, align 8
  %211 = call i32 @lua_pushvalue(i32* %210, i32 1)
  %212 = load i32*, i32** %3, align 8
  %213 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %214 = call i8* @luaL_ref(i32* %212, i32 %213)
  %215 = ptrtoint i8* %214 to i64
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %209, %203
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %218, %199, %162, %110, %93, %57, %30, %22
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local %struct.TYPE_7__* @net_get_udata(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @ipaddr_aton(i8*, i32*) #1

declare dso_local i64 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @lua_islightfunction(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i8*) #1

declare dso_local i8* @luaL_ref(i32*, i32) #1

declare dso_local %struct.tcp_pcb* @tcp_new(...) #1

declare dso_local i64 @tcp_bind(%struct.tcp_pcb*, i32*, i32) #1

declare dso_local i32 @tcp_arg(%struct.tcp_pcb*, %struct.TYPE_7__*) #1

declare dso_local %struct.tcp_pcb* @tcp_listen(%struct.tcp_pcb*) #1

declare dso_local i32 @tcp_accept(%struct.tcp_pcb*, i32) #1

declare dso_local i32* @udp_new(...) #1

declare dso_local i32 @udp_recv(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i64 @udp_bind(i32*, i32*, i32) #1

declare dso_local i32 @tcp_close(%struct.tcp_pcb*) #1

declare dso_local i32 @udp_remove(i32*) #1

declare dso_local i32 @lwip_lua_checkerr(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
