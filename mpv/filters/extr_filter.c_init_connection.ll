; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_init_connection.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_pin = type { i64, i32, i32, %struct.mp_pin*, %struct.mp_pin*, %struct.mp_pin*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MP_PIN_IN = common dso_local global i64 0, align 8
@MP_PIN_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_pin*)* @init_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_connection(%struct.mp_pin* %0) #0 {
  %2 = alloca %struct.mp_pin*, align 8
  %3 = alloca %struct.mp_pin*, align 8
  %4 = alloca %struct.mp_pin*, align 8
  %5 = alloca %struct.mp_pin*, align 8
  store %struct.mp_pin* %0, %struct.mp_pin** %2, align 8
  %6 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %7 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MP_PIN_IN, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %13 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %12, i32 0, i32 5
  %14 = load %struct.mp_pin*, %struct.mp_pin** %13, align 8
  store %struct.mp_pin* %14, %struct.mp_pin** %2, align 8
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %17 = call %struct.mp_pin* @find_connected_end(%struct.mp_pin* %16)
  store %struct.mp_pin* %17, %struct.mp_pin** %3, align 8
  %18 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %19 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %18, i32 0, i32 5
  %20 = load %struct.mp_pin*, %struct.mp_pin** %19, align 8
  %21 = call %struct.mp_pin* @find_connected_end(%struct.mp_pin* %20)
  store %struct.mp_pin* %21, %struct.mp_pin** %4, align 8
  %22 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %23 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %22, i32 0, i32 4
  %24 = load %struct.mp_pin*, %struct.mp_pin** %23, align 8
  %25 = icmp ne %struct.mp_pin* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %30 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %29, i32 0, i32 4
  %31 = load %struct.mp_pin*, %struct.mp_pin** %30, align 8
  %32 = icmp ne %struct.mp_pin* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %37 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %15
  %41 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %42 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %15
  br label %162

46:                                               ; preds = %40
  %47 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %48 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MP_PIN_IN, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %55 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MP_PIN_OUT, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  store %struct.mp_pin* %61, %struct.mp_pin** %5, align 8
  br label %62

62:                                               ; preds = %94, %46
  %63 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %64 = icmp ne %struct.mp_pin* %63, null
  br i1 %64, label %65, label %143

65:                                               ; preds = %62
  %66 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %67 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %72 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %71, i32 0, i32 5
  %73 = load %struct.mp_pin*, %struct.mp_pin** %72, align 8
  %74 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %70, %65
  %79 = phi i1 [ false, %65 ], [ %77, %70 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %83 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %82, i32 0, i32 3
  %84 = load %struct.mp_pin*, %struct.mp_pin** %83, align 8
  %85 = icmp ne %struct.mp_pin* %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %78
  %87 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %88 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %87, i32 0, i32 5
  %89 = load %struct.mp_pin*, %struct.mp_pin** %88, align 8
  %90 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %89, i32 0, i32 3
  %91 = load %struct.mp_pin*, %struct.mp_pin** %90, align 8
  %92 = icmp ne %struct.mp_pin* %91, null
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %86, %78
  %95 = phi i1 [ false, %78 ], [ %93, %86 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %99 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %106 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %114 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %113, i32 0, i32 5
  %115 = load %struct.mp_pin*, %struct.mp_pin** %114, align 8
  %116 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %123 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %122, i32 0, i32 5
  %124 = load %struct.mp_pin*, %struct.mp_pin** %123, align 8
  %125 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %133 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %132, i32 0, i32 5
  %134 = load %struct.mp_pin*, %struct.mp_pin** %133, align 8
  %135 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %134, i32 0, i32 1
  store i32 1, i32* %135, align 8
  %136 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %137 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %136, i32 0, i32 1
  store i32 1, i32* %137, align 8
  %138 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %139 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %138, i32 0, i32 5
  %140 = load %struct.mp_pin*, %struct.mp_pin** %139, align 8
  %141 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %140, i32 0, i32 4
  %142 = load %struct.mp_pin*, %struct.mp_pin** %141, align 8
  store %struct.mp_pin* %142, %struct.mp_pin** %5, align 8
  br label %62

143:                                              ; preds = %62
  %144 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %145 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %146 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %145, i32 0, i32 3
  store %struct.mp_pin* %144, %struct.mp_pin** %146, align 8
  %147 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %148 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %147, i32 0, i32 1
  store i32 0, i32* %148, align 8
  %149 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %150 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %151 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %150, i32 0, i32 3
  store %struct.mp_pin* %149, %struct.mp_pin** %151, align 8
  %152 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %153 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %152, i32 0, i32 1
  store i32 0, i32* %153, align 8
  %154 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %155 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @add_pending(i32 %156)
  %158 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %159 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @add_pending(i32 %160)
  br label %162

162:                                              ; preds = %143, %45
  ret void
}

declare dso_local %struct.mp_pin* @find_connected_end(%struct.mp_pin*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @add_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
