; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-lua.c_get_or_create_cache.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-lua.c_get_or_create_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.lwan_lua_priv = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Creating cache for this thread\00", align 1
@state_create = common dso_local global i32 0, align 4
@state_destroy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Could not create cache\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache* (%struct.lwan_lua_priv*)* @get_or_create_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache* @get_or_create_cache(%struct.lwan_lua_priv* %0) #0 {
  %2 = alloca %struct.lwan_lua_priv*, align 8
  %3 = alloca %struct.cache*, align 8
  store %struct.lwan_lua_priv* %0, %struct.lwan_lua_priv** %2, align 8
  %4 = load %struct.lwan_lua_priv*, %struct.lwan_lua_priv** %2, align 8
  %5 = getelementptr inbounds %struct.lwan_lua_priv, %struct.lwan_lua_priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.cache* @pthread_getspecific(i32 %6)
  store %struct.cache* %7, %struct.cache** %3, align 8
  %8 = load %struct.cache*, %struct.cache** %3, align 8
  %9 = icmp ne %struct.cache* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @UNLIKELY(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %1
  %15 = call i32 @lwan_status_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @state_create, align 4
  %17 = load i32, i32* @state_destroy, align 4
  %18 = load %struct.lwan_lua_priv*, %struct.lwan_lua_priv** %2, align 8
  %19 = load %struct.lwan_lua_priv*, %struct.lwan_lua_priv** %2, align 8
  %20 = getelementptr inbounds %struct.lwan_lua_priv, %struct.lwan_lua_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.cache* @cache_create(i32 %16, i32 %17, %struct.lwan_lua_priv* %18, i32 %21)
  store %struct.cache* %22, %struct.cache** %3, align 8
  %23 = load %struct.cache*, %struct.cache** %3, align 8
  %24 = icmp ne %struct.cache* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @UNLIKELY(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %14
  %30 = call i32 @lwan_status_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %14
  %32 = load %struct.lwan_lua_priv*, %struct.lwan_lua_priv** %2, align 8
  %33 = getelementptr inbounds %struct.lwan_lua_priv, %struct.lwan_lua_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cache*, %struct.cache** %3, align 8
  %36 = call i32 @pthread_setspecific(i32 %34, %struct.cache* %35)
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.cache*, %struct.cache** %3, align 8
  ret %struct.cache* %38
}

declare dso_local %struct.cache* @pthread_getspecific(i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @lwan_status_debug(i8*) #1

declare dso_local %struct.cache* @cache_create(i32, i32, %struct.lwan_lua_priv*, i32) #1

declare dso_local i32 @lwan_status_error(i8*) #1

declare dso_local i32 @pthread_setspecific(i32, %struct.cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
