; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_animate.c_ANIMATE_Free.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_animate.c_ANIMATE_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i64)* }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64, i32, i32, i64, i32*, i32*, i32*, i32*, i64, i32*, i64, i64 }

@fnIC = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ANIMATE_COLOR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @ANIMATE_Free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ANIMATE_Free(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 15
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %95

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = call i32 @ANIMATE_DoStop(%struct.TYPE_5__* %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 15
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @mmioClose(i64 %12, i32 0)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %7
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 14
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @FreeResource(i64 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 14
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %18, %7
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 13
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @heap_free(i32* %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 13
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 12
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fnIC, i32 0, i32 0), align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 12
  %40 = load i64, i64* %39, align 8
  %41 = call i32 %37(i64 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 12
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %36, %25
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 11
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @heap_free(i32* %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 11
  store i32* null, i32** %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 10
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @heap_free(i32* %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 10
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 9
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @heap_free(i32* %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 9
  store i32* null, i32** %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 8
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @heap_free(i32* %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 8
  store i32* null, i32** %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %44
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @DeleteObject(i64 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 7
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %73, %44
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 6
  %83 = call i32 @memset(i32* %82, i32 0, i32 4)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 5
  %86 = call i32 @memset(i32* %85, i32 0, i32 4)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %80, %1
  %96 = load i32, i32* @ANIMATE_COLOR_NONE, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  ret void
}

declare dso_local i32 @ANIMATE_DoStop(%struct.TYPE_5__*) #1

declare dso_local i32 @mmioClose(i64, i32) #1

declare dso_local i32 @FreeResource(i64) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
