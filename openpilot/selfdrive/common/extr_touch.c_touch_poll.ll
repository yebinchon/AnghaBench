; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/common/extr_touch.c_touch_poll.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/common/extr_touch.c_touch_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pollfd = type { i32, i32, i32 }
%struct.input_event = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TRACKING_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @touch_poll(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x %struct.pollfd], align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.input_event, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi i1 [ false, %4 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %19, %92
  %24 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %11, i64 0, i64 0
  %25 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %24, i32 0, i32 0
  %26 = load i32, i32* @POLLIN, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %24, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %24, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %28, align 4
  %32 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %11, i64 0, i64 0
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @poll(%struct.pollfd* %32, i32 1, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %108

38:                                               ; preds = %23
  %39 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %11, i64 0, i64 0
  %40 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @POLLIN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %93

46:                                               ; preds = %38
  %47 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %11, i64 0, i64 0
  %48 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @read(i32 %49, %struct.input_event* %13, i32 12)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 12
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 -1, i32* %5, align 4
  br label %108

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.input_event, %struct.input_event* %13, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %91 [
    i32 128, label %58
  ]

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.input_event, %struct.input_event* %13, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.input_event, %struct.input_event* %13, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %90

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.input_event, %struct.input_event* %13, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.input_event, %struct.input_event* %13, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %89

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.input_event, %struct.input_event* %13, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.input_event, %struct.input_event* %13, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 1, i32* %10, align 4
  br label %88

88:                                               ; preds = %87, %83, %78
  br label %89

89:                                               ; preds = %88, %73
  br label %90

90:                                               ; preds = %89, %63
  br label %92

91:                                               ; preds = %55
  br label %92

92:                                               ; preds = %91, %90
  br label %23

93:                                               ; preds = %45
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 1080, %103
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %96, %93
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %54, %37
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @read(i32, %struct.input_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
