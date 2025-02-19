; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_plancache.c_CachedPlanGetTargetList.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_plancache.c_CachedPlanGetTargetList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32* }

@CACHEDPLANSOURCE_MAGIC = common dso_local global i64 0, align 8
@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CachedPlanGetTargetList(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CACHEDPLANSOURCE_MAGIC, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32*, i32** @NIL, align 8
  store i32* %23, i32** %3, align 8
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @RevalidateCachedQuery(%struct.TYPE_4__* %25, i32* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @QueryListGetPrimaryStmt(i32 %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @FetchStatementTargetList(i32* %32)
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %24, %22
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RevalidateCachedQuery(%struct.TYPE_4__*, i32*) #1

declare dso_local i32* @QueryListGetPrimaryStmt(i32) #1

declare dso_local i32* @FetchStatementTargetList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
