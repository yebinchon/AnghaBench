; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_CallCombine.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_CallCombine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32*, i32* }

@GLU_TESS_NEED_COMBINE_CALLBACK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, i8**, i32*, i32)* @CallCombine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CallCombine(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i8** %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %33 = load i8**, i8*** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i32 @CALL_COMBINE_OR_COMBINE_DATA(i32* %32, i8** %33, i32* %34, i32** %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %65

42:                                               ; preds = %5
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load i8**, i8*** %8, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32* %49, i32** %51, align 8
  br label %64

52:                                               ; preds = %42
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @GLU_TESS_NEED_COMBINE_CALLBACK, align 4
  %59 = call i32 @CALL_ERROR_OR_ERROR_DATA(i32 %58)
  %60 = load i64, i64* @TRUE, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %57, %52
  br label %64

64:                                               ; preds = %63, %45
  br label %65

65:                                               ; preds = %64, %5
  ret void
}

declare dso_local i32 @CALL_COMBINE_OR_COMBINE_DATA(i32*, i8**, i32*, i32**) #1

declare dso_local i32 @CALL_ERROR_OR_ERROR_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
