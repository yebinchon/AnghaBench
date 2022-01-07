; ModuleID = '/home/carl/AnghaBench/mpv/ta/extr_ta.c_ta_dbg_add.c'
source_filename = "/home/carl/AnghaBench/mpv/ta/extr_ta.c_ta_dbg_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ta_header = type { %struct.ta_header*, %struct.ta_header*, i32 }

@CANARY = common dso_local global i32 0, align 4
@enable_leak_check = common dso_local global i64 0, align 8
@ta_dbg_mutex = common dso_local global i32 0, align 4
@leak_node = common dso_local global %struct.ta_header zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ta_header*)* @ta_dbg_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ta_dbg_add(%struct.ta_header* %0) #0 {
  %2 = alloca %struct.ta_header*, align 8
  store %struct.ta_header* %0, %struct.ta_header** %2, align 8
  %3 = load i32, i32* @CANARY, align 4
  %4 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %5 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %4, i32 0, i32 2
  store i32 %3, i32* %5, align 8
  %6 = load i64, i64* @enable_leak_check, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = call i32 @pthread_mutex_lock(i32* @ta_dbg_mutex)
  %10 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %11 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %10, i32 0, i32 1
  store %struct.ta_header* @leak_node, %struct.ta_header** %11, align 8
  %12 = load %struct.ta_header*, %struct.ta_header** getelementptr inbounds (%struct.ta_header, %struct.ta_header* @leak_node, i32 0, i32 0), align 8
  %13 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %14 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %13, i32 0, i32 0
  store %struct.ta_header* %12, %struct.ta_header** %14, align 8
  %15 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %16 = load %struct.ta_header*, %struct.ta_header** getelementptr inbounds (%struct.ta_header, %struct.ta_header* @leak_node, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %16, i32 0, i32 1
  store %struct.ta_header* %15, %struct.ta_header** %17, align 8
  %18 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  store %struct.ta_header* %18, %struct.ta_header** getelementptr inbounds (%struct.ta_header, %struct.ta_header* @leak_node, i32 0, i32 0), align 8
  %19 = call i32 @pthread_mutex_unlock(i32* @ta_dbg_mutex)
  br label %20

20:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
