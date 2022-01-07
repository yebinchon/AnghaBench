; ModuleID = '/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@CONTROL_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mmal\00", align 1
@CONTROL_OK = common dso_local global i32 0, align 4
@CONTROL_ERROR = common dso_local global i32 0, align 4
@CONTROL_FALSE = common dso_local global i32 0, align 4
@CONTROL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.mp_filter* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %11 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %88 [
    i32 128, label %14
    i32 131, label %21
    i32 130, label %48
    i32 132, label %64
    i32 129, label %84
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @CONTROL_TRUE, align 4
  store i32 %20, i32* %4, align 4
  br label %90

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %9, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %88

28:                                               ; preds = %21
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %88

41:                                               ; preds = %33, %28
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = bitcast i8* %45 to i32*
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @CONTROL_TRUE, align 4
  store i32 %47, i32* %4, align 4
  br label %90

48:                                               ; preds = %3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  br label %59

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %53
  %60 = phi i8* [ %57, %53 ], [ null, %58 ]
  %61 = load i8*, i8** %7, align 8
  %62 = bitcast i8* %61 to i8**
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @CONTROL_TRUE, align 4
  store i32 %63, i32* %4, align 4
  br label %90

64:                                               ; preds = %3
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %71 = call i32 @force_fallback(%struct.mp_filter* %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = icmp ne %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @CONTROL_OK, align 4
  br label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @CONTROL_ERROR, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  store i32 %81, i32* %4, align 4
  br label %90

82:                                               ; preds = %64
  %83 = load i32, i32* @CONTROL_FALSE, align 4
  store i32 %83, i32* %4, align 4
  br label %90

84:                                               ; preds = %3
  %85 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %86 = call i32 @reinit(%struct.mp_filter* %85)
  %87 = load i32, i32* @CONTROL_TRUE, align 4
  store i32 %87, i32* %4, align 4
  br label %90

88:                                               ; preds = %3, %40, %27
  %89 = load i32, i32* @CONTROL_UNKNOWN, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %84, %82, %80, %59, %41, %14
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @force_fallback(%struct.mp_filter*) #1

declare dso_local i32 @reinit(%struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
