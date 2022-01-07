; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/loggerd/extr_encoder.c_encoder_destroy.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/loggerd/extr_encoder.c_encoder_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32*, i64, i32, i32*, i32*, i32 }

@OMX_CommandStateSet = common dso_local global i32 0, align 4
@OMX_StateIdle = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i32 0, align 4
@OMX_StateLoaded = common dso_local global i32 0, align 4
@PORT_INDEX_IN = common dso_local global i32 0, align 4
@PORT_INDEX_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_destroy(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @OMX_CommandStateSet, align 4
  %17 = load i32, i32* @OMX_StateIdle, align 4
  %18 = call i32 @OMX_SendCommand(i32 %15, i32 %16, i32 %17, i32* null)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @OMX_ErrorNone, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = load i32, i32* @OMX_StateIdle, align 4
  %26 = call i32 @wait_for_state(%struct.TYPE_4__* %24, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @OMX_CommandStateSet, align 4
  %31 = load i32, i32* @OMX_StateLoaded, align 4
  %32 = call i32 @OMX_SendCommand(i32 %29, i32 %30, i32 %31, i32* null)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @OMX_ErrorNone, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %62, %1
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PORT_INDEX_IN, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 8
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @OMX_FreeBuffer(i32 %47, i32 %48, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @OMX_ErrorNone, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  br label %62

62:                                               ; preds = %44
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %38

65:                                               ; preds = %38
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 8
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @free(i32* %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %94, %65
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %70
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @PORT_INDEX_OUT, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 7
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @OMX_FreeBuffer(i32 %79, i32 %80, i32 %87)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @OMX_ErrorNone, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  br label %94

94:                                               ; preds = %76
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %70

97:                                               ; preds = %70
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 7
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @free(i32* %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %103 = load i32, i32* @OMX_StateLoaded, align 4
  %104 = call i32 @wait_for_state(%struct.TYPE_4__* %102, i32 %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @OMX_FreeHandle(i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @OMX_ErrorNone, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %97
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @free(i32* %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @free(i32* %125)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @free(i32* %129)
  br label %131

131:                                              ; preds = %118, %97
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @OMX_SendCommand(i32, i32, i32, i32*) #1

declare dso_local i32 @wait_for_state(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @OMX_FreeBuffer(i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @OMX_FreeHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
