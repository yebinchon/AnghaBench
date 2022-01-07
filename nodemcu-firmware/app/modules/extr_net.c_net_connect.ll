; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_connect.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_16__*, %struct.TYPE_14__, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32 }

@TYPE_TCP_CLIENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"invalid user data\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"already connected\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"specify port\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"not a function\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"cannot allocate PCB\00", align 1
@net_err_cb = common dso_local global i32 0, align 4
@net_tcp_recv_cb = common dso_local global i32 0, align 4
@net_sent_cb = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i64 0, align 8
@ERR_OK = common dso_local global i64 0, align 8
@ERR_INPROGRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_connect(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.TYPE_15__* @net_get_udata(i32* %11)
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %4, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TYPE_TCP_CLIENT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @luaL_error(i32* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %2, align 4
  br label %181

24:                                               ; preds = %15
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @luaL_error(i32* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %2, align 4
  br label %181

32:                                               ; preds = %24
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @luaL_checkinteger(i32* %33, i32 2)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @luaL_error(i32* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %39, i32* %2, align 4
  br label %181

40:                                               ; preds = %32
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @lua_isstring(i32* %41, i32 3)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  store i64 0, i64* %7, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = call i8* @luaL_checklstring(i32* %45, i32 3, i64* %7)
  store i8* %46, i8** %6, align 8
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @lua_gettop(i32* %48)
  %50 = icmp sgt i32 %49, 3
  br i1 %50, label %51, label %80

51:                                               ; preds = %47
  %52 = load i32*, i32** %3, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i64 @lua_isfunction(i32* %53, i32 4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32*, i32** %3, align 8
  %58 = call i64 @lua_islightfunction(i32* %57, i32 4)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %56, %51
  %61 = phi i1 [ true, %51 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @luaL_argcheck(i32* %52, i32 %62, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @lua_pushvalue(i32* %64, i32 4)
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @luaL_unref(i32* %66, i32 %67, i64 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %75 = call i8* @luaL_ref(i32* %73, i32 %74)
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  store i64 %76, i64* %79, align 8
  br label %80

80:                                               ; preds = %60, %47
  %81 = call %struct.TYPE_16__* (...) @tcp_new()
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = icmp ne %struct.TYPE_16__* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @luaL_error(i32* %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 %90, i32* %2, align 4
  br label %181

91:                                               ; preds = %80
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = call i32 @tcp_arg(%struct.TYPE_16__* %94, %struct.TYPE_15__* %95)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = load i32, i32* @net_err_cb, align 4
  %101 = call i32 @tcp_err(%struct.TYPE_16__* %99, i32 %100)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = load i32, i32* @net_tcp_recv_cb, align 4
  %106 = call i32 @tcp_recv(%struct.TYPE_16__* %104, i32 %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = load i32, i32* @net_sent_cb, align 4
  %111 = call i32 @tcp_sent(%struct.TYPE_16__* %109, i32 %110)
  %112 = load i64, i64* %5, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  store i64 %112, i64* %116, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  store i32 0, i32* %9, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @LUA_NOREF, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %91
  store i32 1, i32* %9, align 4
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @lua_pushvalue(i32* %128, i32 1)
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %132 = call i8* @luaL_ref(i32* %130, i32 %131)
  %133 = ptrtoint i8* %132 to i64
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %127, %91
  %137 = load i8*, i8** %6, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = call i64 @dns_gethostbyname(i8* %137, i32* %8, i32 (i8*, i32*, %struct.TYPE_15__*)* @net_dns_cb, %struct.TYPE_15__* %138)
  store i64 %139, i64* %10, align 8
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* @ERR_OK, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load i8*, i8** %6, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %146 = call i32 @net_dns_cb(i8* %144, i32* %8, %struct.TYPE_15__* %145)
  br label %180

147:                                              ; preds = %136
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* @ERR_INPROGRESS, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %179

151:                                              ; preds = %147
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %154, align 8
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %151
  %160 = load i32*, i32** %3, align 8
  %161 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @luaL_unref(i32* %160, i32 %161, i64 %164)
  %166 = load i64, i64* @LUA_NOREF, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %159, %151
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = call i32 @tcp_abort(%struct.TYPE_16__* %172)
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %175, align 8
  %176 = load i32*, i32** %3, align 8
  %177 = load i64, i64* %10, align 8
  %178 = call i32 @lwip_lua_checkerr(i32* %176, i64 %177)
  store i32 %178, i32* %2, align 4
  br label %181

179:                                              ; preds = %147
  br label %180

180:                                              ; preds = %179, %143
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %169, %88, %37, %29, %21
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.TYPE_15__* @net_get_udata(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @lua_islightfunction(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

declare dso_local i8* @luaL_ref(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @tcp_new(...) #1

declare dso_local i32 @tcp_arg(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @tcp_err(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @tcp_recv(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @tcp_sent(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @dns_gethostbyname(i8*, i32*, i32 (i8*, i32*, %struct.TYPE_15__*)*, %struct.TYPE_15__*) #1

declare dso_local i32 @net_dns_cb(i8*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @tcp_abort(%struct.TYPE_16__*) #1

declare dso_local i32 @lwip_lua_checkerr(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
