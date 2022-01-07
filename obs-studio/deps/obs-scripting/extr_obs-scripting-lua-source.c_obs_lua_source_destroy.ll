; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_obs_lua_source_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_obs_lua_source_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_lua_data = type { %struct.obs_lua_data**, %struct.obs_lua_data*, %struct.obs_lua_source* }
%struct.obs_lua_source = type { i32, i32 }

@destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @obs_lua_source_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_lua_source_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obs_lua_data*, align 8
  %4 = alloca %struct.obs_lua_source*, align 8
  %5 = alloca %struct.obs_lua_data*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.obs_lua_data*
  store %struct.obs_lua_data* %7, %struct.obs_lua_data** %3, align 8
  %8 = load %struct.obs_lua_data*, %struct.obs_lua_data** %3, align 8
  %9 = getelementptr inbounds %struct.obs_lua_data, %struct.obs_lua_data* %8, i32 0, i32 2
  %10 = load %struct.obs_lua_source*, %struct.obs_lua_source** %9, align 8
  store %struct.obs_lua_source* %10, %struct.obs_lua_source** %4, align 8
  %11 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %12 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %11, i32 0, i32 0
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  %14 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %15 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %29

19:                                               ; preds = %1
  %20 = load i32, i32* @destroy, align 4
  %21 = call i32 @have_func(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %29

24:                                               ; preds = %19
  %25 = call i32 (...) @lock_script()
  %26 = load %struct.obs_lua_data*, %struct.obs_lua_data** %3, align 8
  %27 = call i32 @call_destroy(%struct.obs_lua_data* %26)
  %28 = call i32 (...) @unlock_script()
  br label %29

29:                                               ; preds = %24, %23, %18
  %30 = load %struct.obs_lua_data*, %struct.obs_lua_data** %3, align 8
  %31 = getelementptr inbounds %struct.obs_lua_data, %struct.obs_lua_data* %30, i32 0, i32 1
  %32 = load %struct.obs_lua_data*, %struct.obs_lua_data** %31, align 8
  store %struct.obs_lua_data* %32, %struct.obs_lua_data** %5, align 8
  %33 = load %struct.obs_lua_data*, %struct.obs_lua_data** %5, align 8
  %34 = load %struct.obs_lua_data*, %struct.obs_lua_data** %3, align 8
  %35 = getelementptr inbounds %struct.obs_lua_data, %struct.obs_lua_data* %34, i32 0, i32 0
  %36 = load %struct.obs_lua_data**, %struct.obs_lua_data*** %35, align 8
  store %struct.obs_lua_data* %33, %struct.obs_lua_data** %36, align 8
  %37 = load %struct.obs_lua_data*, %struct.obs_lua_data** %5, align 8
  %38 = icmp ne %struct.obs_lua_data* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load %struct.obs_lua_data*, %struct.obs_lua_data** %3, align 8
  %41 = getelementptr inbounds %struct.obs_lua_data, %struct.obs_lua_data* %40, i32 0, i32 0
  %42 = load %struct.obs_lua_data**, %struct.obs_lua_data*** %41, align 8
  %43 = load %struct.obs_lua_data*, %struct.obs_lua_data** %5, align 8
  %44 = getelementptr inbounds %struct.obs_lua_data, %struct.obs_lua_data* %43, i32 0, i32 0
  store %struct.obs_lua_data** %42, %struct.obs_lua_data*** %44, align 8
  br label %45

45:                                               ; preds = %39, %29
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @bfree(i8* %46)
  %48 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %49 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %48, i32 0, i32 0
  %50 = call i32 @pthread_mutex_unlock(i32* %49)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @have_func(i32) #1

declare dso_local i32 @lock_script(...) #1

declare dso_local i32 @call_destroy(%struct.obs_lua_data*) #1

declare dso_local i32 @unlock_script(...) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
