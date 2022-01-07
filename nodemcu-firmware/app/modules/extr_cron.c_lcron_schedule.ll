; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_lcron_schedule.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_lcron_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.cronent_desc }
%struct.cronent_desc = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"cron.entry\00", align 1
@cronent_list = common dso_local global i32* null, align 8
@cronent_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lcron_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcron_schedule(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cronent_desc, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_4__* @luaL_checkudata(i32* %9, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @luaL_checkstring(i32* %11, i32 2)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @lcron_parsedesc(i32* %14, i8* %15, %struct.cronent_desc* %6)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = bitcast %struct.cronent_desc* %18 to i8*
  %20 = bitcast %struct.cronent_desc* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = call i64 @lcron_findindex(i32* %21, %struct.TYPE_4__* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %52

26:                                               ; preds = %1
  %27 = load i32*, i32** @cronent_list, align 8
  %28 = load i32, i32* @cronent_count, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i8* @os_realloc(i32* %27, i32 %32)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @luaL_error(i32* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %2, align 4
  br label %53

39:                                               ; preds = %26
  %40 = load i8*, i8** %8, align 8
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** @cronent_list, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @lua_pushvalue(i32* %42, i32 1)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %46 = call i32 @lua_ref(i32* %44, i32 %45)
  %47 = load i32*, i32** @cronent_list, align 8
  %48 = load i32, i32* @cronent_count, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @cronent_count, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %46, i32* %51, align 4
  br label %52

52:                                               ; preds = %39, %1
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_4__* @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i64 @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lcron_parsedesc(i32*, i8*, %struct.cronent_desc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @lcron_findindex(i32*, %struct.TYPE_4__*) #1

declare dso_local i8* @os_realloc(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_ref(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
