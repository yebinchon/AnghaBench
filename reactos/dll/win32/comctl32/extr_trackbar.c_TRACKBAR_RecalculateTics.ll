; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_RecalculateTics.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_RecalculateTics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32 }

@NM_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @TRACKBAR_RecalculateTics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TRACKBAR_RecalculateTics(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp uge i32 %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %10
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sub i32 %21, %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = udiv i32 %25, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %18
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sub i32 %35, %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = urem i32 %39, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, -1
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %32, %18
  br label %58

49:                                               ; preds = %10, %1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @Free(i32* %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  store i32* null, i32** %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  store i32 0, i32* %57, align 8
  br label %118

58:                                               ; preds = %48
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %58
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 1
  %70 = zext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32* @ReAlloc(i32* %67, i32 %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i32* %73, i32** %75, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %64
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  store i32 0, i32* %82, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %84 = load i32, i32* @NM_OUTOFMEMORY, align 4
  %85 = call i32 @notify(%struct.TYPE_4__* %83, i32 %84)
  br label %118

86:                                               ; preds = %64
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %58
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add i32 %93, %96
  store i32 %97, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %110, %90
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %98
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %103, i32* %109, align 4
  br label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %5, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %5, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = add i32 %116, %115
  store i32 %117, i32* %3, align 4
  br label %98

118:                                              ; preds = %49, %80, %98
  ret void
}

declare dso_local i32 @Free(i32*) #1

declare dso_local i32* @ReAlloc(i32*, i32) #1

declare dso_local i32 @notify(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
