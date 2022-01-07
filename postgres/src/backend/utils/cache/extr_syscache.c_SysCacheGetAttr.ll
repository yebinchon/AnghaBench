; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_syscache.c_SysCacheGetAttr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_syscache.c_SysCacheGetAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@SysCacheSize = common dso_local global i32 0, align 4
@SysCache = common dso_local global %struct.TYPE_5__** null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid cache ID: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SysCacheGetAttr(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SysCacheSize, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @SysCache, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %16, i64 %18
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call i32 @PointerIsValid(%struct.TYPE_5__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %15, %11, %4
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %15
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @SysCache, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %28, i64 %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = call i32 @PointerIsValid(%struct.TYPE_5__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %27
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @SysCache, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = call i32 @InitCatCachePhase2(%struct.TYPE_5__* %42, i32 0)
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @SysCache, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %44, i64 %46
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = call i32 @PointerIsValid(%struct.TYPE_5__* %50)
  %52 = call i32 @Assert(i32 %51)
  br label %53

53:                                               ; preds = %37, %27
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @SysCache, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %56, i64 %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @heap_getattr(i32 %54, i32 %55, %struct.TYPE_5__* %62, i32* %63)
  ret i32 %64
}

declare dso_local i32 @PointerIsValid(%struct.TYPE_5__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @InitCatCachePhase2(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
