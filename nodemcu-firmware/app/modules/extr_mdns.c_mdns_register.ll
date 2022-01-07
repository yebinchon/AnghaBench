; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mdns.c_mdns_register.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mdns.c_mdns_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodemcu_mdns_info = type { i8*, i32, i8**, i8*, i8* }
%struct.ip_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"http\00", align 1
@LUA_TTABLE = common dso_local global i32 0, align 4
@LUA_TSTRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@SOFTAP_IF = common dso_local global i32 0, align 4
@STATION_IF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"No network connection\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Unable to start mDns daemon\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mdns_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdns_register(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.nodemcu_mdns_info, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ip_info, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = call i32 @memset(%struct.nodemcu_mdns_info* %4, i32 0, i32 40)
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @luaL_checkstring(i32* %13, i32 1)
  %15 = getelementptr inbounds %struct.nodemcu_mdns_info, %struct.nodemcu_mdns_info* %4, i32 0, i32 4
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.nodemcu_mdns_info, %struct.nodemcu_mdns_info* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.nodemcu_mdns_info, %struct.nodemcu_mdns_info* %4, i32 0, i32 1
  store i32 80, i32* %17, align 8
  %18 = getelementptr inbounds %struct.nodemcu_mdns_info, %struct.nodemcu_mdns_info* %4, i32 0, i32 4
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.nodemcu_mdns_info, %struct.nodemcu_mdns_info* %4, i32 0, i32 3
  store i8* %19, i8** %20, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_gettop(i32* %21)
  %23 = icmp sge i32 %22, 2
  br i1 %23, label %24, label %102

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @LUA_TTABLE, align 4
  %27 = call i32 @luaL_checktype(i32* %25, i32 2, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_pushnil(i32* %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %98, %24
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @lua_next(i32* %31, i32 2)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 1
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %101

40:                                               ; preds = %38
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @LUA_TSTRING, align 4
  %43 = call i32 @luaL_checktype(i32* %41, i32 -2, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i8* @luaL_checkstring(i32* %44, i32 -2)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @luaL_checknumber(i32* %50, i32 -1)
  %52 = getelementptr inbounds %struct.nodemcu_mdns_info, %struct.nodemcu_mdns_info* %4, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  br label %98

53:                                               ; preds = %40
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32*, i32** %3, align 8
  %59 = call i8* @luaL_checkstring(i32* %58, i32 -1)
  %60 = getelementptr inbounds %struct.nodemcu_mdns_info, %struct.nodemcu_mdns_info* %4, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  br label %97

61:                                               ; preds = %53
  %62 = load i8*, i8** %6, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32*, i32** %3, align 8
  %67 = call i8* @luaL_checkstring(i32* %66, i32 -1)
  %68 = getelementptr inbounds %struct.nodemcu_mdns_info, %struct.nodemcu_mdns_info* %4, i32 0, i32 3
  store i8* %67, i8** %68, align 8
  br label %96

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = call i8* @luaL_checkstring(i32* %73, i32 -1)
  store i8* %74, i8** %8, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = add nsw i32 %75, %77
  %79 = add nsw i32 %78, 1
  %80 = call i8* @alloca(i32 %79)
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @strcpy(i8* %81, i8* %82)
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @strcat(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @strcat(i8* %86, i8* %87)
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds %struct.nodemcu_mdns_info, %struct.nodemcu_mdns_info* %4, i32 0, i32 2
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8*, i8** %91, i64 %94
  store i8* %89, i8** %95, align 8
  br label %96

96:                                               ; preds = %69, %65
  br label %97

97:                                               ; preds = %96, %57
  br label %98

98:                                               ; preds = %97, %49
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @lua_pop(i32* %99, i32 1)
  br label %30

101:                                              ; preds = %38
  br label %102

102:                                              ; preds = %101, %1
  %103 = call i32 (...) @wifi_get_opmode()
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @SOFTAP_IF, align 4
  br label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @STATION_IF, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = call i32 @wifi_get_ip_info(i32 %111, %struct.ip_info* %10)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %10, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114, %110
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @luaL_error(i32* %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 %121, i32* %2, align 4
  br label %133

122:                                              ; preds = %114
  %123 = load i32*, i32** %3, align 8
  %124 = call i32 @mdns_close(i32* %123)
  %125 = call i32 @nodemcu_mdns_init(%struct.nodemcu_mdns_info* %4)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @mdns_close(i32* %128)
  %130 = load i32*, i32** %3, align 8
  %131 = call i32 @luaL_error(i32* %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i32 %131, i32* %2, align 4
  br label %133

132:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %127, %119
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @memset(%struct.nodemcu_mdns_info*, i32, i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @luaL_checknumber(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @wifi_get_opmode(...) #1

declare dso_local i32 @wifi_get_ip_info(i32, %struct.ip_info*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @mdns_close(i32*) #1

declare dso_local i32 @nodemcu_mdns_init(%struct.nodemcu_mdns_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
