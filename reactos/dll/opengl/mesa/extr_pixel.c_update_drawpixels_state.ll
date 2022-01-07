; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_update_drawpixels_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_update_drawpixels_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { double, double, double, double, double, double, double, double, i64, double, double }
%struct.TYPE_6__ = type { i64, i64 }

@GL_TRUE = common dso_local global i64 0, align 8
@GL_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @update_drawpixels_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_drawpixels_state(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @GL_TRUE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %118

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %118

17:                                               ; preds = %10
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = fcmp oeq double %21, 0.000000e+00
  br i1 %22, label %23, label %118

23:                                               ; preds = %17
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = fcmp oeq double %27, 1.000000e+00
  br i1 %28, label %29, label %118

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load double, double* %32, align 8
  %34 = fcmp oeq double %33, 0.000000e+00
  br i1 %34, label %35, label %118

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load double, double* %38, align 8
  %40 = fcmp oeq double %39, 1.000000e+00
  br i1 %40, label %41, label %118

41:                                               ; preds = %35
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load double, double* %44, align 8
  %46 = fcmp oeq double %45, 0.000000e+00
  br i1 %46, label %47, label %118

47:                                               ; preds = %41
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load double, double* %50, align 8
  %52 = fcmp oeq double %51, 1.000000e+00
  br i1 %52, label %53, label %118

53:                                               ; preds = %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 6
  %57 = load double, double* %56, align 8
  %58 = fcmp oeq double %57, 0.000000e+00
  br i1 %58, label %59, label %118

59:                                               ; preds = %53
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 7
  %63 = load double, double* %62, align 8
  %64 = fcmp oeq double %63, 1.000000e+00
  br i1 %64, label %65, label %118

65:                                               ; preds = %59
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @GL_FALSE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %118

72:                                               ; preds = %65
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 9
  %76 = load double, double* %75, align 8
  %77 = fcmp oeq double %76, 1.000000e+00
  br i1 %77, label %78, label %118

78:                                               ; preds = %72
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 10
  %82 = load double, double* %81, align 8
  %83 = fcmp oeq double %82, 1.000000e+00
  br i1 %83, label %84, label %118

84:                                               ; preds = %78
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %118

90:                                               ; preds = %84
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %90
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %96
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %102
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i64, i64* @GL_TRUE, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %122

118:                                              ; preds = %108, %102, %96, %90, %84, %78, %72, %65, %59, %53, %47, %41, %35, %29, %23, %17, %10, %1
  %119 = load i64, i64* @GL_FALSE, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %118, %114
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
