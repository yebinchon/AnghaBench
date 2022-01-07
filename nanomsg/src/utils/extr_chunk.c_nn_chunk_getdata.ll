; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_chunk.c_nn_chunk_getdata.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_chunk.c_nn_chunk_getdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_chunk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nn_chunk*)* @nn_chunk_getdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nn_chunk_getdata(%struct.nn_chunk* %0) #0 {
  %2 = alloca %struct.nn_chunk*, align 8
  store %struct.nn_chunk* %0, %struct.nn_chunk** %2, align 8
  %3 = load %struct.nn_chunk*, %struct.nn_chunk** %2, align 8
  %4 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %3, i64 1
  %5 = bitcast %struct.nn_chunk* %4 to i8*
  %6 = getelementptr i8, i8* %5, i64 8
  ret i8* %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
