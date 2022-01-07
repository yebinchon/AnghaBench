; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_InitializeSearchPath.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_InitializeSearchPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TopMemoryContext = common dso_local global i32 0, align 4
@PG_CATALOG_NAMESPACE = common dso_local global i32 0, align 4
@baseSearchPath = common dso_local global i32 0, align 4
@baseCreationNamespace = common dso_local global i32 0, align 4
@baseTempCreationPending = common dso_local global i32 0, align 4
@baseSearchPathValid = common dso_local global i32 0, align 4
@namespaceUser = common dso_local global i32 0, align 4
@activeSearchPath = common dso_local global i32 0, align 4
@activeCreationNamespace = common dso_local global i32 0, align 4
@activeTempCreationPending = common dso_local global i32 0, align 4
@NAMESPACEOID = common dso_local global i32 0, align 4
@NamespaceCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitializeSearchPath() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @IsBootstrapProcessingMode()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %0
  %5 = load i32, i32* @TopMemoryContext, align 4
  %6 = call i32 @MemoryContextSwitchTo(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @PG_CATALOG_NAMESPACE, align 4
  %8 = call i32 @list_make1_oid(i32 %7)
  store i32 %8, i32* @baseSearchPath, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @MemoryContextSwitchTo(i32 %9)
  %11 = load i32, i32* @PG_CATALOG_NAMESPACE, align 4
  store i32 %11, i32* @baseCreationNamespace, align 4
  store i32 0, i32* @baseTempCreationPending, align 4
  store i32 1, i32* @baseSearchPathValid, align 4
  %12 = call i32 (...) @GetUserId()
  store i32 %12, i32* @namespaceUser, align 4
  %13 = load i32, i32* @baseSearchPath, align 4
  store i32 %13, i32* @activeSearchPath, align 4
  %14 = load i32, i32* @baseCreationNamespace, align 4
  store i32 %14, i32* @activeCreationNamespace, align 4
  %15 = load i32, i32* @baseTempCreationPending, align 4
  store i32 %15, i32* @activeTempCreationPending, align 4
  br label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @NAMESPACEOID, align 4
  %18 = load i32, i32* @NamespaceCallback, align 4
  %19 = call i32 @CacheRegisterSyscacheCallback(i32 %17, i32 %18, i32 0)
  store i32 0, i32* @baseSearchPathValid, align 4
  br label %20

20:                                               ; preds = %16, %4
  ret void
}

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @list_make1_oid(i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @CacheRegisterSyscacheCallback(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
