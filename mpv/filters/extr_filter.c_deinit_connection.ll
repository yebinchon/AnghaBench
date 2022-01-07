; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_deinit_connection.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_deinit_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_pin = type { i64, i32, i32, %struct.mp_pin*, %struct.mp_pin*, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i64 }

@MP_PIN_OUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"dropping frame due to pin disconnect\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"dropping request due to pin disconnect\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_pin*)* @deinit_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deinit_connection(%struct.mp_pin* %0) #0 {
  %2 = alloca %struct.mp_pin*, align 8
  store %struct.mp_pin* %0, %struct.mp_pin** %2, align 8
  %3 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %4 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MP_PIN_OUT, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %10 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %9, i32 0, i32 4
  %11 = load %struct.mp_pin*, %struct.mp_pin** %10, align 8
  store %struct.mp_pin* %11, %struct.mp_pin** %2, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %14 = call %struct.mp_pin* @find_connected_end(%struct.mp_pin* %13)
  store %struct.mp_pin* %14, %struct.mp_pin** %2, align 8
  br label %15

15:                                               ; preds = %72, %12
  %16 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %17 = icmp ne %struct.mp_pin* %16, null
  br i1 %17, label %18, label %81

18:                                               ; preds = %15
  %19 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %20 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %19, i32 0, i32 4
  %21 = load %struct.mp_pin*, %struct.mp_pin** %20, align 8
  %22 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %21, i32 0, i32 7
  store i32* null, i32** %22, align 8
  %23 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %24 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %23, i32 0, i32 7
  store i32* null, i32** %24, align 8
  %25 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %26 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %25, i32 0, i32 4
  %27 = load %struct.mp_pin*, %struct.mp_pin** %26, align 8
  %28 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %27, i32 0, i32 1
  store i32 0, i32* %28, align 8
  %29 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %30 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %29, i32 0, i32 1
  store i32 0, i32* %30, align 8
  %31 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %32 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %31, i32 0, i32 4
  %33 = load %struct.mp_pin*, %struct.mp_pin** %32, align 8
  %34 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %41 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %40, i32 0, i32 4
  %42 = load %struct.mp_pin*, %struct.mp_pin** %41, align 8
  %43 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %51 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %50, i32 0, i32 2
  store i32 0, i32* %51, align 4
  %52 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %53 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %18
  %58 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %59 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @MP_VERBOSE(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %18
  %63 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %64 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %69 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @MP_VERBOSE(i32 %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %74 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %73, i32 0, i32 5
  %75 = call i32 @mp_frame_unref(%struct.TYPE_2__* %74)
  %76 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %77 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %76, i32 0, i32 4
  %78 = load %struct.mp_pin*, %struct.mp_pin** %77, align 8
  %79 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %78, i32 0, i32 3
  %80 = load %struct.mp_pin*, %struct.mp_pin** %79, align 8
  store %struct.mp_pin* %80, %struct.mp_pin** %2, align 8
  br label %15

81:                                               ; preds = %15
  ret void
}

declare dso_local %struct.mp_pin* @find_connected_end(%struct.mp_pin*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_VERBOSE(i32, i8*) #1

declare dso_local i32 @mp_frame_unref(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
