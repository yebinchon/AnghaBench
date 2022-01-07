; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_lcron_create.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_lcron_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cronent_desc = type { i32 }
%struct.TYPE_3__ = type { %struct.cronent_desc, i8* }

@.str = private unnamed_addr constant [11 x i8] c"cron.entry\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@cronent_list = common dso_local global i8** null, align 8
@cronent_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lcron_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcron_create(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cronent_desc, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @luaL_checkstring(i32* %8, i32 1)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @luaL_checkanyfunction(i32* %11, i32 2)
  %13 = load i32*, i32** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @lcron_parsedesc(i32* %13, i8* %14, %struct.cronent_desc* %6)
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.TYPE_3__* @lua_newuserdata(i32* %16, i32 16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %7, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @luaL_getmetatable(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_setmetatable(i32* %20, i32 -2)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_pushvalue(i32* %22, i32 2)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %26 = call i8* @luaL_ref(i32* %24, i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = bitcast %struct.cronent_desc* %30 to i8*
  %32 = bitcast %struct.cronent_desc* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load i8**, i8*** @cronent_list, align 8
  %34 = load i32, i32* @cronent_count, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = trunc i64 %37 to i32
  %39 = call i8* @os_realloc(i8** %33, i32 %38)
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @luaL_error(i32* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %2, align 4
  br label %58

45:                                               ; preds = %1
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_pushvalue(i32* %46, i32 -1)
  %48 = load i8*, i8** %5, align 8
  %49 = bitcast i8* %48 to i8**
  store i8** %49, i8*** @cronent_list, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %52 = call i8* @luaL_ref(i32* %50, i32 %51)
  %53 = load i8**, i8*** @cronent_list, align 8
  %54 = load i32, i32* @cronent_count, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @cronent_count, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  store i8* %52, i8** %57, align 8
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %45, %42
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @luaL_checkanyfunction(i32*, i32) #1

declare dso_local i32 @lcron_parsedesc(i32*, i8*, %struct.cronent_desc*) #1

declare dso_local %struct.TYPE_3__* @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i8* @luaL_ref(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @os_realloc(i8**, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
