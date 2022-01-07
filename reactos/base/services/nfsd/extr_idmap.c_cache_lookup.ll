; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_cache = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.list_entry*, %struct.list_entry*)* }
%struct.idmap_lookup = type { i32, i32 }
%struct.list_entry = type { i32 }

@ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmap_cache*, %struct.idmap_lookup*, %struct.list_entry*)* @cache_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_lookup(%struct.idmap_cache* %0, %struct.idmap_lookup* %1, %struct.list_entry* %2) #0 {
  %4 = alloca %struct.idmap_cache*, align 8
  %5 = alloca %struct.idmap_lookup*, align 8
  %6 = alloca %struct.list_entry*, align 8
  %7 = alloca %struct.list_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.idmap_cache* %0, %struct.idmap_cache** %4, align 8
  store %struct.idmap_lookup* %1, %struct.idmap_lookup** %5, align 8
  store %struct.list_entry* %2, %struct.list_entry** %6, align 8
  %9 = load i32, i32* @ERROR_NOT_FOUND, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.idmap_cache*, %struct.idmap_cache** %4, align 8
  %11 = getelementptr inbounds %struct.idmap_cache, %struct.idmap_cache* %10, i32 0, i32 0
  %12 = call i32 @AcquireSRWLockShared(i32* %11)
  %13 = load %struct.idmap_cache*, %struct.idmap_cache** %4, align 8
  %14 = getelementptr inbounds %struct.idmap_cache, %struct.idmap_cache* %13, i32 0, i32 2
  %15 = load %struct.idmap_lookup*, %struct.idmap_lookup** %5, align 8
  %16 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.idmap_lookup*, %struct.idmap_lookup** %5, align 8
  %19 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.list_entry* @list_search(i32* %14, i32 %17, i32 %20)
  store %struct.list_entry* %21, %struct.list_entry** %7, align 8
  %22 = load %struct.list_entry*, %struct.list_entry** %7, align 8
  %23 = icmp ne %struct.list_entry* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.idmap_cache*, %struct.idmap_cache** %4, align 8
  %26 = getelementptr inbounds %struct.idmap_cache, %struct.idmap_cache* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.list_entry*, %struct.list_entry*)*, i32 (%struct.list_entry*, %struct.list_entry*)** %28, align 8
  %30 = load %struct.list_entry*, %struct.list_entry** %6, align 8
  %31 = load %struct.list_entry*, %struct.list_entry** %7, align 8
  %32 = call i32 %29(%struct.list_entry* %30, %struct.list_entry* %31)
  %33 = load i32, i32* @NO_ERROR, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %24, %3
  %35 = load %struct.idmap_cache*, %struct.idmap_cache** %4, align 8
  %36 = getelementptr inbounds %struct.idmap_cache, %struct.idmap_cache* %35, i32 0, i32 0
  %37 = call i32 @ReleaseSRWLockShared(i32* %36)
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @AcquireSRWLockShared(i32*) #1

declare dso_local %struct.list_entry* @list_search(i32*, i32, i32) #1

declare dso_local i32 @ReleaseSRWLockShared(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
