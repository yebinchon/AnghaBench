; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_plancache.c_InitPlanCache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_plancache.c_InitPlanCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PlanCacheRelCallback = common dso_local global i32 0, align 4
@PROCOID = common dso_local global i32 0, align 4
@PlanCacheObjectCallback = common dso_local global i32 0, align 4
@TYPEOID = common dso_local global i32 0, align 4
@NAMESPACEOID = common dso_local global i32 0, align 4
@PlanCacheSysCallback = common dso_local global i32 0, align 4
@OPEROID = common dso_local global i32 0, align 4
@AMOPOPID = common dso_local global i32 0, align 4
@FOREIGNSERVEROID = common dso_local global i32 0, align 4
@FOREIGNDATAWRAPPEROID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitPlanCache() #0 {
  %1 = load i32, i32* @PlanCacheRelCallback, align 4
  %2 = call i32 @CacheRegisterRelcacheCallback(i32 %1, i32 0)
  %3 = load i32, i32* @PROCOID, align 4
  %4 = load i32, i32* @PlanCacheObjectCallback, align 4
  %5 = call i32 @CacheRegisterSyscacheCallback(i32 %3, i32 %4, i32 0)
  %6 = load i32, i32* @TYPEOID, align 4
  %7 = load i32, i32* @PlanCacheObjectCallback, align 4
  %8 = call i32 @CacheRegisterSyscacheCallback(i32 %6, i32 %7, i32 0)
  %9 = load i32, i32* @NAMESPACEOID, align 4
  %10 = load i32, i32* @PlanCacheSysCallback, align 4
  %11 = call i32 @CacheRegisterSyscacheCallback(i32 %9, i32 %10, i32 0)
  %12 = load i32, i32* @OPEROID, align 4
  %13 = load i32, i32* @PlanCacheSysCallback, align 4
  %14 = call i32 @CacheRegisterSyscacheCallback(i32 %12, i32 %13, i32 0)
  %15 = load i32, i32* @AMOPOPID, align 4
  %16 = load i32, i32* @PlanCacheSysCallback, align 4
  %17 = call i32 @CacheRegisterSyscacheCallback(i32 %15, i32 %16, i32 0)
  %18 = load i32, i32* @FOREIGNSERVEROID, align 4
  %19 = load i32, i32* @PlanCacheSysCallback, align 4
  %20 = call i32 @CacheRegisterSyscacheCallback(i32 %18, i32 %19, i32 0)
  %21 = load i32, i32* @FOREIGNDATAWRAPPEROID, align 4
  %22 = load i32, i32* @PlanCacheSysCallback, align 4
  %23 = call i32 @CacheRegisterSyscacheCallback(i32 %21, i32 %22, i32 0)
  ret void
}

declare dso_local i32 @CacheRegisterRelcacheCallback(i32, i32) #1

declare dso_local i32 @CacheRegisterSyscacheCallback(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
