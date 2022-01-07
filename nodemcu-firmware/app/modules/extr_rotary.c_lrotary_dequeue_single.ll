; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_rotary.c_lrotary_dequeue_single.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_rotary.c_lrotary_dequeue_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@ROTARY_TURN_INDEX = common dso_local global i32 0, align 4
@ROTARY_PRESS_INDEX = common dso_local global i32 0, align 4
@ROTARY_RELEASE_INDEX = common dso_local global i32 0, align 4
@ROTARY_DBLCLICK_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @lrotary_dequeue_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lrotary_dequeue_single(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %143

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @rotary_getevent(i32 %14, %struct.TYPE_7__* %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %139

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @lrotary_check_timer(%struct.TYPE_8__* %20, i64 %22, i32 0)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %134

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = xor i32 %30, %33
  %35 = and i32 %34, 2147483647
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %29
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = load i32, i32* @ROTARY_TURN_INDEX, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 1
  %43 = ashr i32 %42, 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @callback_call(i32* %38, %struct.TYPE_8__* %39, i32 %40, i32 %43, i64 %45)
  br label %47

47:                                               ; preds = %37, %29
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = xor i32 %48, %51
  %53 = and i32 %52, -2147483648
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %130

55:                                               ; preds = %47
  %56 = load i32*, i32** %3, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, -2147483648
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @ROTARY_PRESS_INDEX, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @ROTARY_RELEASE_INDEX, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load i32, i32* %7, align 4
  %68 = shl i32 %67, 1
  %69 = ashr i32 %68, 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @callback_call(i32* %56, %struct.TYPE_8__* %57, i32 %66, i32 %69, i64 %71)
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, -2147483648
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %65
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %81, %76
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 5
  store i32 1, i32* %97, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  br label %125

100:                                              ; preds = %65
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 5
  store i32 0, i32* %102, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %100
  %108 = load i32*, i32** %3, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = load i32, i32* @ROTARY_DBLCLICK_INDEX, align 4
  %111 = load i32, i32* %7, align 4
  %112 = shl i32 %111, 1
  %113 = ashr i32 %112, 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @callback_call(i32* %108, %struct.TYPE_8__* %109, i32 %110, i32 %113, i64 %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 4
  store i32 0, i32* %118, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store i32 0, i32* %120, align 4
  br label %124

121:                                              ; preds = %100
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  store i32 1, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %107
  br label %125

125:                                              ; preds = %124, %95
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %125, %47
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %130, %17
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @rotary_has_queued_event(i32 %137)
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %134, %11
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = call i64 (...) @system_get_time()
  %142 = call i32 @lrotary_check_timer(%struct.TYPE_8__* %140, i64 %141, i32 1)
  br label %143

143:                                              ; preds = %139, %2
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i64 @rotary_getevent(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @lrotary_check_timer(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @callback_call(i32*, %struct.TYPE_8__*, i32, i32, i64) #1

declare dso_local i32 @rotary_has_queued_event(i32) #1

declare dso_local i64 @system_get_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
