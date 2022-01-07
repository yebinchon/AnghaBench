; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fons__allocFont.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fons__allocFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, i64, i32* }

@FONS_INIT_GLYPHS = common dso_local global i32 0, align 4
@FONS_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @fons__allocFont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fons__allocFont(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %24

19:                                               ; preds = %13
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 2
  br label %24

24:                                               ; preds = %19, %18
  %25 = phi i32 [ 8, %18 ], [ %23, %19 ]
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 8, %34
  %36 = trunc i64 %35 to i32
  %37 = call i64 @realloc(%struct.TYPE_7__** %30, i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_7__**
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store %struct.TYPE_7__** %38, %struct.TYPE_7__*** %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %42, align 8
  %44 = icmp eq %struct.TYPE_7__** %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %93

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %46, %1
  %48 = call i64 @malloc(i32 24)
  %49 = inttoptr i64 %48 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %4, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = icmp eq %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %89

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = call i32 @memset(%struct.TYPE_7__* %54, i32 0, i32 24)
  %56 = load i32, i32* @FONS_INIT_GLYPHS, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = call i64 @malloc(i32 %59)
  %61 = inttoptr i64 %60 to i32*
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %89

69:                                               ; preds = %53
  %70 = load i32, i32* @FONS_INIT_GLYPHS, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %77, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %83
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %2, align 4
  br label %93

89:                                               ; preds = %68, %52
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = call i32 @fons__freeFont(%struct.TYPE_7__* %90)
  %92 = load i32, i32* @FONS_INVALID, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %69, %45
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @realloc(%struct.TYPE_7__**, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @fons__freeFont(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
