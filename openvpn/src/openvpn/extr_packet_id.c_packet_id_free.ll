; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_packet_id.c_packet_id_free.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_packet_id.c_packet_id_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_id = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@D_PID_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"PID packet_id_free\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_id_free(%struct.packet_id* %0) #0 {
  %2 = alloca %struct.packet_id*, align 8
  store %struct.packet_id* %0, %struct.packet_id** %2, align 8
  %3 = load %struct.packet_id*, %struct.packet_id** %2, align 8
  %4 = icmp ne %struct.packet_id* %3, null
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = load i32, i32* @D_PID_DEBUG, align 4
  %7 = call i32 @dmsg(i32 %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.packet_id*, %struct.packet_id** %2, align 8
  %9 = getelementptr inbounds %struct.packet_id, %struct.packet_id* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = load %struct.packet_id*, %struct.packet_id** %2, align 8
  %15 = getelementptr inbounds %struct.packet_id, %struct.packet_id* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @free(i64 %17)
  br label %19

19:                                               ; preds = %13, %5
  %20 = load %struct.packet_id*, %struct.packet_id** %2, align 8
  %21 = getelementptr inbounds %struct.packet_id, %struct.packet_id* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @CLEAR(i64 %23)
  br label %25

25:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @dmsg(i32, i8*) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @CLEAR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
