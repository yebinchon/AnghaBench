; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_journalfile.c_init_commit_log.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_journalfile.c_init_commit_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_commit_log(%struct.rrdengine_instance* %0) #0 {
  %2 = alloca %struct.rrdengine_instance*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %2, align 8
  %3 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %2, align 8
  %4 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  store i32* null, i32** %5, align 8
  %6 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %2, align 8
  %7 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %2, align 8
  %10 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
