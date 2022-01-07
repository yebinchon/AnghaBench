; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_packet_id.c_packet_id_persist_close.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_packet_id.c_packet_id_persist_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_id_persist = type { i32, i32 }

@D_PID_PERSIST = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Close error on --replay-persist file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_id_persist_close(%struct.packet_id_persist* %0) #0 {
  %2 = alloca %struct.packet_id_persist*, align 8
  store %struct.packet_id_persist* %0, %struct.packet_id_persist** %2, align 8
  %3 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %4 = call i64 @packet_id_persist_enabled(%struct.packet_id_persist* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %8 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @close(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = load i32, i32* @D_PID_PERSIST, align 4
  %14 = load i32, i32* @M_ERRNO, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %17 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @msg(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %12, %6
  %21 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %22 = call i32 @packet_id_persist_init(%struct.packet_id_persist* %21)
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

declare dso_local i64 @packet_id_persist_enabled(%struct.packet_id_persist*) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @packet_id_persist_init(%struct.packet_id_persist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
