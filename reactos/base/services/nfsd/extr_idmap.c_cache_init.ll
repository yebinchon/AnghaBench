; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_cache_init.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_cache = type { i32, %struct.cache_ops*, i32 }
%struct.cache_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idmap_cache*, %struct.cache_ops*)* @cache_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_init(%struct.idmap_cache* %0, %struct.cache_ops* %1) #0 {
  %3 = alloca %struct.idmap_cache*, align 8
  %4 = alloca %struct.cache_ops*, align 8
  store %struct.idmap_cache* %0, %struct.idmap_cache** %3, align 8
  store %struct.cache_ops* %1, %struct.cache_ops** %4, align 8
  %5 = load %struct.idmap_cache*, %struct.idmap_cache** %3, align 8
  %6 = getelementptr inbounds %struct.idmap_cache, %struct.idmap_cache* %5, i32 0, i32 2
  %7 = call i32 @list_init(i32* %6)
  %8 = load %struct.cache_ops*, %struct.cache_ops** %4, align 8
  %9 = load %struct.idmap_cache*, %struct.idmap_cache** %3, align 8
  %10 = getelementptr inbounds %struct.idmap_cache, %struct.idmap_cache* %9, i32 0, i32 1
  store %struct.cache_ops* %8, %struct.cache_ops** %10, align 8
  %11 = load %struct.idmap_cache*, %struct.idmap_cache** %3, align 8
  %12 = getelementptr inbounds %struct.idmap_cache, %struct.idmap_cache* %11, i32 0, i32 0
  %13 = call i32 @InitializeSRWLock(i32* %12)
  ret void
}

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @InitializeSRWLock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
