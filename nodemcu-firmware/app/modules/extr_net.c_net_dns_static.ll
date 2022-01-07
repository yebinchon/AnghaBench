; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_dns_static.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_dns_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"wrong domain\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"wrong callback\00", align 1
@ERR_OK = common dso_local global i64 0, align 8
@ERR_INPROGRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @net_dns_static to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_dns_static(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @luaL_checklstring(i32* %11, i32 1, i64* %4)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = icmp ugt i64 %16, 128
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @luaL_error(i32* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %62

21:                                               ; preds = %15, %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @luaL_checkanyfunction(i32* %22, i32 2)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_pushvalue(i32* %24, i32 2)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %28 = call i32 @luaL_ref(i32* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @LUA_NOREF, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @luaL_error(i32* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %2, align 4
  br label %62

35:                                               ; preds = %21
  %36 = call i32* @calloc(i32 1, i32 4)
  store i32* %36, i32** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @dns_gethostbyname(i8* %40, i32* %8, i32 (i8*, i32*, i32*)* @net_dns_static_cb, i32* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @ERR_OK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load i8*, i8** %5, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @net_dns_static_cb(i8* %47, i32* %8, i32* %48)
  store i32 0, i32* %2, align 4
  br label %62

50:                                               ; preds = %35
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @ERR_INPROGRESS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %62

55:                                               ; preds = %50
  %56 = load i32*, i32** %3, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @lwip_lua_checkerr(i32* %56, i64 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @free(i32* %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %55, %54, %46, %32, %18
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checkanyfunction(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i64 @dns_gethostbyname(i8*, i32*, i32 (i8*, i32*, i32*)*, i32*) #1

declare dso_local i32 @net_dns_static_cb(i8*, i32*, i32*) #1

declare dso_local i32 @lwip_lua_checkerr(i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
