; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_xds.c_xds_decode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_xds.c_xds_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32* }

@LIBCAPTION_OK = common dso_local global i32 0, align 4
@LIBCAPTION_READY = common dso_local global i32 0, align 4
@LIBCAPTION_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xds_decode(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %9 [
    i32 0, label %10
    i32 1, label %25
  ]

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %2, %9
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = call i32 @xds_init(%struct.TYPE_4__* %11)
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 3840
  %15 = ashr i32 %14, 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @LIBCAPTION_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %76

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 65280
  %28 = icmp eq i32 36608, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 127
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* @LIBCAPTION_READY, align 4
  store i32 %36, i32* %3, align 4
  br label %76

37:                                               ; preds = %25
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 32
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 32512
  %45 = ashr i32 %44, 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 0
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  store i32 %45, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, 127
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  store i32 %56, i32* %65, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 2
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @LIBCAPTION_OK, align 4
  store i32 %70, i32* %3, align 4
  br label %76

71:                                               ; preds = %37
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load i32, i32* @LIBCAPTION_ERROR, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %42, %29, %10
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @xds_init(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
