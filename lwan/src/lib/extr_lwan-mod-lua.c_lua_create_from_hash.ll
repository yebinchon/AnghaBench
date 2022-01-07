; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-lua.c_lua_create_from_hash.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-lua.c_lua_create_from_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i32 }
%struct.lwan_lua_settings = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cache_period\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"script_file\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"default_type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.hash*)* @lua_create_from_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lua_create_from_hash(i8* %0, %struct.hash* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hash*, align 8
  %5 = alloca %struct.lwan_lua_settings, align 4
  store i8* %0, i8** %3, align 8
  store %struct.hash* %1, %struct.hash** %4, align 8
  %6 = getelementptr inbounds %struct.lwan_lua_settings, %struct.lwan_lua_settings* %5, i32 0, i32 0
  %7 = load %struct.hash*, %struct.hash** %4, align 8
  %8 = call i32 @hash_find(%struct.hash* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %6, align 4
  %9 = getelementptr inbounds %struct.lwan_lua_settings, %struct.lwan_lua_settings* %5, i32 0, i32 1
  %10 = load %struct.hash*, %struct.hash** %4, align 8
  %11 = call i32 @hash_find(%struct.hash* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @parse_time_period(i32 %11, i32 15)
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.lwan_lua_settings, %struct.lwan_lua_settings* %5, i32 0, i32 2
  %14 = load %struct.hash*, %struct.hash** %4, align 8
  %15 = call i32 @hash_find(%struct.hash* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.lwan_lua_settings, %struct.lwan_lua_settings* %5, i32 0, i32 3
  %17 = load %struct.hash*, %struct.hash** %4, align 8
  %18 = call i32 @hash_find(%struct.hash* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %18, i32* %16, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @lua_create(i8* %19, %struct.lwan_lua_settings* %5)
  ret i8* %20
}

declare dso_local i32 @hash_find(%struct.hash*, i8*) #1

declare dso_local i32 @parse_time_period(i32, i32) #1

declare dso_local i8* @lua_create(i8*, %struct.lwan_lua_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
