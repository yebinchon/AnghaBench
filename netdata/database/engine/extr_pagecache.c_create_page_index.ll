; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_create_page_index.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_create_page_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_cache_page_index = type { i32*, i8*, i8*, i32, i32, i64 }

@INVALID_TIME = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pg_cache_page_index* @create_page_index(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.pg_cache_page_index*, align 8
  store i32* %0, i32** %2, align 8
  %4 = call %struct.pg_cache_page_index* @mallocz(i32 40)
  store %struct.pg_cache_page_index* %4, %struct.pg_cache_page_index** %3, align 8
  %5 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %3, align 8
  %6 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %3, align 8
  %8 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @uuid_copy(i32 %9, i32 %11)
  %13 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %3, align 8
  %14 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %13, i32 0, i32 3
  %15 = call i64 @uv_rwlock_init(i32* %14)
  %16 = icmp eq i64 0, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i8*, i8** @INVALID_TIME, align 8
  %20 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %3, align 8
  %21 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @INVALID_TIME, align 8
  %23 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %3, align 8
  %24 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %3, align 8
  %26 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %3, align 8
  ret %struct.pg_cache_page_index* %27
}

declare dso_local %struct.pg_cache_page_index* @mallocz(i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @uv_rwlock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
