; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pcm.c_pcm_drv_play.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pcm.c_pcm_drv_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@PCM_RATE_8K = common dso_local global i32 0, align 4
@cfg = common dso_local global %struct.TYPE_2__* null, align 8
@PCM_RATE_1K = common dso_local global i64 0, align 8
@PCM_RATE_16K = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"invalid bit rate\00", align 1
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@pcm_start_play_task = common dso_local global i32 0, align 4
@pud = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pcm_drv_play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_drv_play(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 (...) @GET_PUD()
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @PCM_RATE_8K, align 4
  %6 = call i64 @luaL_optinteger(i32* %4, i32 2, i32 %5)
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCM_RATE_1K, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCM_RATE_16K, align 8
  %20 = icmp sle i64 %18, %19
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi i1 [ false, %1 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @luaL_argcheck(i32* %9, i32 %23, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LUA_NOREF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_pushvalue(i32* %31, i32 1)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %35 = call i64 @luaL_ref(i32* %33, i32 %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %30, %21
  %39 = load i32, i32* @pcm_start_play_task, align 4
  %40 = load i64, i64* @pud, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @task_post_low(i32 %39, i32 %41)
  ret i32 0
}

declare dso_local i32 @GET_PUD(...) #1

declare dso_local i64 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @luaL_ref(i32*, i32) #1

declare dso_local i32 @task_post_low(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
