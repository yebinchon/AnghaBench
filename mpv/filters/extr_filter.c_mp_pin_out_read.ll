; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_pin_out_read.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_pin_out_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_frame = type { i32 }
%struct.mp_pin = type { %struct.mp_frame }

@MP_NO_FRAME = common dso_local global %struct.mp_frame zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_pin_out_read(%struct.mp_pin* %0) #0 {
  %2 = alloca %struct.mp_frame, align 4
  %3 = alloca %struct.mp_pin*, align 8
  %4 = alloca %struct.mp_frame, align 4
  store %struct.mp_pin* %0, %struct.mp_pin** %3, align 8
  %5 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %6 = call i32 @mp_pin_out_request_data(%struct.mp_pin* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = bitcast %struct.mp_frame* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.mp_frame* @MP_NO_FRAME to i8*), i64 4, i1 false)
  br label %20

10:                                               ; preds = %1
  %11 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %12 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %11, i32 0, i32 0
  %13 = bitcast %struct.mp_frame* %4 to i8*
  %14 = bitcast %struct.mp_frame* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %16 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %15, i32 0, i32 0
  %17 = bitcast %struct.mp_frame* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.mp_frame* @MP_NO_FRAME to i8*), i64 4, i1 false)
  %18 = bitcast %struct.mp_frame* %2 to i8*
  %19 = bitcast %struct.mp_frame* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  br label %20

20:                                               ; preds = %10, %8
  %21 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %2, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  ret i32 %22
}

declare dso_local i32 @mp_pin_out_request_data(%struct.mp_pin*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
