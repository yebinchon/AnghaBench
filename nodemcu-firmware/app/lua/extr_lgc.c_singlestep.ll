; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_singlestep.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_singlestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32**, i32 }

@GCSWEEPCOST = common dso_local global i32 0, align 4
@GCSWEEPMAX = common dso_local global i32 0, align 4
@GCFINALIZECOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @singlestep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @singlestep(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_5__* @G(i32* %6)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %98 [
    i32 131, label %11
    i32 130, label %14
    i32 128, label %25
    i32 129, label %30
    i32 132, label %72
  ]

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @markroot(i32* %12)
  store i32 0, i32* %2, align 4
  br label %100

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = call i32 @propagatemark(%struct.TYPE_5__* %20)
  store i32 %21, i32* %2, align 4
  br label %100

22:                                               ; preds = %14
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @atomic(i32* %23)
  store i32 0, i32* %2, align 4
  br label %100

25:                                               ; preds = %1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @sweepstrstep(%struct.TYPE_5__* %26, i32* %27)
  %29 = load i32, i32* @GCSWEEPCOST, align 4
  store i32 %29, i32* %2, align 4
  br label %100

30:                                               ; preds = %1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* @GCSWEEPMAX, align 4
  %39 = call i32** @sweeplist(i32* %34, i32** %37, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 5
  store i32** %39, i32*** %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %30
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @checkSizes(i32* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 132, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %30
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @lua_assert(i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* @GCSWEEPMAX, align 4
  %70 = load i32, i32* @GCSWEEPCOST, align 4
  %71 = mul nsw i32 %69, %70
  store i32 %71, i32* %2, align 4
  br label %100

72:                                               ; preds = %1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @GCTM(i32* %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @GCFINALIZECOST, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load i32, i32* @GCFINALIZECOST, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %85, %77
  %92 = load i32, i32* @GCFINALIZECOST, align 4
  store i32 %92, i32* %2, align 4
  br label %100

93:                                               ; preds = %72
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 131, i32* %95, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  store i32 0, i32* %97, align 4
  store i32 0, i32* %2, align 4
  br label %100

98:                                               ; preds = %1
  %99 = call i32 @lua_assert(i32 0)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %93, %91, %52, %25, %22, %19, %11
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_5__* @G(i32*) #1

declare dso_local i32 @markroot(i32*) #1

declare dso_local i32 @propagatemark(%struct.TYPE_5__*) #1

declare dso_local i32 @atomic(i32*) #1

declare dso_local i32 @sweepstrstep(%struct.TYPE_5__*, i32*) #1

declare dso_local i32** @sweeplist(i32*, i32**, i32) #1

declare dso_local i32 @checkSizes(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @GCTM(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
