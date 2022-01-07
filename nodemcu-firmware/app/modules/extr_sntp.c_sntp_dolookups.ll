; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sntp.c_sntp_dolookups.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sntp.c_sntp_dolookups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@state = common dso_local global %struct.TYPE_3__* null, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REFNIL = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@server_count = common dso_local global i64 0, align 8
@NTP_DNS_ERR = common dso_local global i32 0, align 4
@sntp_dns_found = common dso_local global i32 0, align 4
@ERR_INPROGRESS = common dso_local global i64 0, align 8
@ERR_ARG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @sntp_dolookups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sntp_dolookups(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @state, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LUA_NOREF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @state, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LUA_REFNIL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %1
  %19 = call i32 (...) @sntp_dosend()
  br label %102

20:                                               ; preds = %12
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @state, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @lua_rawgeti(i32* %21, i32 %22, i32 %26)
  br label %28

28:                                               ; preds = %20, %96
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @lua_objlen(i32* %29, i32 -1)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @state, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = load i64, i64* @server_count, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @lua_rawgeti(i32* %39, i32 -1, i32 1)
  %41 = load i32*, i32** %2, align 8
  %42 = call i8* @luaL_checklstring(i32* %41, i32 -1, i32* %3)
  store i8* %42, i8** %4, align 8
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @NTP_DNS_ERR, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @handle_error(i32* %43, i32 %44, i8* %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @lua_pop(i32* %47, i32 1)
  br label %51

49:                                               ; preds = %35
  %50 = call i32 (...) @sntp_dosend()
  br label %51

51:                                               ; preds = %49, %38
  br label %99

52:                                               ; preds = %28
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @state, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load i32*, i32** %2, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @state, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @lua_rawgeti(i32* %57, i32 -1, i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = call i8* @luaL_checklstring(i32* %62, i32 -1, i32* %3)
  store i8* %63, i8** %5, align 8
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @lua_pop(i32* %64, i32 1)
  %66 = load i32, i32* %3, align 4
  %67 = icmp sgt i32 %66, 128
  br i1 %67, label %71, label %68

68:                                               ; preds = %52
  %69 = load i8*, i8** %5, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68, %52
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* @NTP_DNS_ERR, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @handle_error(i32* %72, i32 %73, i8* %74)
  br label %99

76:                                               ; preds = %68
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 (...) @get_free_server()
  %79 = load i32, i32* @sntp_dns_found, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @state, align 8
  %81 = call i64 @dns_gethostbyname(i8* %77, i32 %78, i32 %79, %struct.TYPE_3__* %80)
  store i64 %81, i64* %6, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @ERR_INPROGRESS, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %99

86:                                               ; preds = %76
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @ERR_ARG, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32*, i32** %2, align 8
  %92 = load i32, i32* @NTP_DNS_ERR, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @handle_error(i32* %91, i32 %92, i8* %93)
  br label %99

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* @server_count, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* @server_count, align 8
  br label %28

99:                                               ; preds = %90, %85, %71, %51
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @lua_pop(i32* %100, i32 1)
  br label %102

102:                                              ; preds = %99, %18
  ret void
}

declare dso_local i32 @sntp_dosend(...) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_objlen(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i32 @handle_error(i32*, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @dns_gethostbyname(i8*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @get_free_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
