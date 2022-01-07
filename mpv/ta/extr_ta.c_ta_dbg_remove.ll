; ModuleID = '/home/carl/AnghaBench/mpv/ta/extr_ta.c_ta_dbg_remove.c'
source_filename = "/home/carl/AnghaBench/mpv/ta/extr_ta.c_ta_dbg_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ta_header = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@ta_dbg_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ta_header*)* @ta_dbg_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ta_dbg_remove(%struct.ta_header* %0) #0 {
  %2 = alloca %struct.ta_header*, align 8
  store %struct.ta_header* %0, %struct.ta_header** %2, align 8
  %3 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %4 = call i32 @ta_dbg_check_header(%struct.ta_header* %3)
  %5 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %6 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = call i32 @pthread_mutex_lock(i32* @ta_dbg_mutex)
  %11 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %12 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %15 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %17, align 8
  %18 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %19 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %22 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %24, align 8
  %25 = call i32 @pthread_mutex_unlock(i32* @ta_dbg_mutex)
  %26 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %27 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %26, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %27, align 8
  %28 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %29 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %28, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %29, align 8
  br label %30

30:                                               ; preds = %9, %1
  %31 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %32 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  ret void
}

declare dso_local i32 @ta_dbg_check_header(%struct.ta_header*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
