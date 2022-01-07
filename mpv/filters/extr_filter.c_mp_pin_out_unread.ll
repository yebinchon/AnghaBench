; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_pin_out_unread.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_pin_out_unread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_pin = type { i64, %struct.mp_frame, i32, %struct.TYPE_2__*, i32 }
%struct.mp_frame = type { i32 }
%struct.TYPE_2__ = type { i64 }

@MP_PIN_OUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_pin_out_unread(%struct.mp_pin* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_frame, align 4
  %4 = alloca %struct.mp_pin*, align 8
  %5 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %3, i32 0, i32 0
  store i32 %1, i32* %5, align 4
  store %struct.mp_pin* %0, %struct.mp_pin** %4, align 8
  %6 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %7 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MP_PIN_OUT, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %14 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %21 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %26 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %24, %2
  %32 = phi i1 [ false, %2 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %36 = call i32 @mp_pin_out_has_data(%struct.mp_pin* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %42 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %49 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %48, i32 0, i32 1
  %50 = bitcast %struct.mp_frame* %49 to i8*
  %51 = bitcast %struct.mp_frame* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 4 %51, i64 4, i1 false)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_pin_out_has_data(%struct.mp_pin*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
