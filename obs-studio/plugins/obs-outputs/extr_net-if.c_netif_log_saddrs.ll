; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_net-if.c_netif_log_saddrs.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_net-if.c_netif_log_saddrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif_saddr_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"\09\09%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netif_log_saddrs(%struct.netif_saddr_data* %0) #0 {
  %2 = alloca %struct.netif_saddr_data*, align 8
  %3 = alloca i64, align 8
  store %struct.netif_saddr_data* %0, %struct.netif_saddr_data** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.netif_saddr_data*, %struct.netif_saddr_data** %2, align 8
  %7 = getelementptr inbounds %struct.netif_saddr_data, %struct.netif_saddr_data* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %5, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = load %struct.netif_saddr_data*, %struct.netif_saddr_data** %2, align 8
  %13 = getelementptr inbounds %struct.netif_saddr_data, %struct.netif_saddr_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %11
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %4

24:                                               ; preds = %4
  ret void
}

declare dso_local i32 @info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
