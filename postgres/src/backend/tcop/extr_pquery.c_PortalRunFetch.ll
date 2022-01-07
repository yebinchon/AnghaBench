; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_pquery.c_PortalRunFetch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_pquery.c_PortalRunFetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i32 }

@ActivePortal = common dso_local global %struct.TYPE_9__* null, align 8
@CurrentResourceOwner = common dso_local global i64 0, align 8
@PortalContext = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unsupported portal strategy\00", align 1
@PORTAL_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PortalRunFetch(%struct.TYPE_9__* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = call i32 @PortalIsValid(%struct.TYPE_9__* %14)
  %16 = call i32 @AssertArg(i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = call i32 @MarkPortalActive(%struct.TYPE_9__* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ActivePortal, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %10, align 8
  %27 = load i64, i64* @CurrentResourceOwner, align 8
  store i64 %27, i64* %11, align 8
  %28 = load i32, i32* @PortalContext, align 4
  store i32 %28, i32* %12, align 4
  %29 = call i32 (...) @PG_TRY()
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** @ActivePortal, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* @CurrentResourceOwner, align 8
  br label %39

39:                                               ; preds = %35, %4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* @PortalContext, align 4
  %43 = load i32, i32* @PortalContext, align 4
  %44 = call i32 @MemoryContextSwitchTo(i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %68 [
    i32 129, label %48
    i32 130, label %54
    i32 131, label %54
    i32 128, label %54
  ]

48:                                               ; preds = %39
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i64, i64* %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @DoPortalRunFetch(%struct.TYPE_9__* %49, i32 %50, i64 %51, i32* %52)
  store i32 %53, i32* %9, align 4
  br label %71

54:                                               ; preds = %39, %39, %39
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = call i32 @FillPortalStore(%struct.TYPE_9__* %60, i32 0)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i64, i64* %7, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @DoPortalRunFetch(%struct.TYPE_9__* %63, i32 %64, i64 %65, i32* %66)
  store i32 %67, i32* %9, align 4
  br label %71

68:                                               ; preds = %39
  %69 = load i32, i32* @ERROR, align 4
  %70 = call i32 @elog(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %62, %48
  %72 = call i32 (...) @PG_CATCH()
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = call i32 @MarkPortalFailed(%struct.TYPE_9__* %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** @ActivePortal, align 8
  %76 = load i64, i64* %11, align 8
  store i64 %76, i64* @CurrentResourceOwner, align 8
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* @PortalContext, align 4
  %78 = call i32 (...) @PG_RE_THROW()
  %79 = call i32 (...) @PG_END_TRY()
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @MemoryContextSwitchTo(i32 %80)
  %82 = load i32, i32* @PORTAL_READY, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** @ActivePortal, align 8
  %86 = load i64, i64* %11, align 8
  store i64 %86, i64* @CurrentResourceOwner, align 8
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* @PortalContext, align 4
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @PortalIsValid(%struct.TYPE_9__*) #1

declare dso_local i32 @MarkPortalActive(%struct.TYPE_9__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @DoPortalRunFetch(%struct.TYPE_9__*, i32, i64, i32*) #1

declare dso_local i32 @FillPortalStore(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @MarkPortalFailed(%struct.TYPE_9__*) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
