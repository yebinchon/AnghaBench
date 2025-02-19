; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/mods/extr_modwlan.c_wlan_set_current_time.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/mods/extr_modwlan.c_wlan_set_current_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@SL_DEVICE_GENERAL_CONFIGURATION = common dso_local global i32 0, align 4
@SL_DEVICE_GENERAL_CONFIGURATION_DATE_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlan_set_current_time(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @timeutils_seconds_since_2000_to_struct_time(i32 %5, %struct.TYPE_4__* %3)
  %7 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 28, i1 false)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 5
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @SL_DEVICE_GENERAL_CONFIGURATION, align 4
  %27 = load i32, i32* @SL_DEVICE_GENERAL_CONFIGURATION_DATE_TIME, align 4
  %28 = bitcast %struct.TYPE_5__* %4 to i32*
  %29 = call i32 @sl_DevSet(i32 %26, i32 %27, i32 28, i32* %28)
  ret void
}

declare dso_local i32 @timeutils_seconds_since_2000_to_struct_time(i32, %struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sl_DevSet(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
