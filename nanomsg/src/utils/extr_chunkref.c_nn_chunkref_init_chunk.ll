; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_chunkref.c_nn_chunkref_init_chunk.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_chunkref.c_nn_chunkref_init_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_chunkref = type { i32 }
%struct.nn_chunkref_chunk = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunkref_init_chunk(%struct.nn_chunkref* %0, i8* %1) #0 {
  %3 = alloca %struct.nn_chunkref*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nn_chunkref_chunk*, align 8
  store %struct.nn_chunkref* %0, %struct.nn_chunkref** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %7 = bitcast %struct.nn_chunkref* %6 to %struct.nn_chunkref_chunk*
  store %struct.nn_chunkref_chunk* %7, %struct.nn_chunkref_chunk** %5, align 8
  %8 = load %struct.nn_chunkref_chunk*, %struct.nn_chunkref_chunk** %5, align 8
  %9 = getelementptr inbounds %struct.nn_chunkref_chunk, %struct.nn_chunkref_chunk* %8, i32 0, i32 0
  store i32 255, i32* %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.nn_chunkref_chunk*, %struct.nn_chunkref_chunk** %5, align 8
  %12 = getelementptr inbounds %struct.nn_chunkref_chunk, %struct.nn_chunkref_chunk* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
