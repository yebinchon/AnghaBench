; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_do_commit_transaction.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_do_commit_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_worker_config = type { i32 }
%struct.extent_io_descriptor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rrdengine_worker_config*, i32, i8*)* @do_commit_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_commit_transaction(%struct.rrdengine_worker_config* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.rrdengine_worker_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.rrdengine_worker_config* %0, %struct.rrdengine_worker_config** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %13 [
    i32 128, label %8
  ]

8:                                                ; preds = %3
  %9 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %4, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.extent_io_descriptor*
  %12 = call i32 @commit_data_extent(%struct.rrdengine_worker_config* %9, %struct.extent_io_descriptor* %11)
  br label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 128
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  br label %18

18:                                               ; preds = %13, %8
  ret void
}

declare dso_local i32 @commit_data_extent(%struct.rrdengine_worker_config*, %struct.extent_io_descriptor*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
