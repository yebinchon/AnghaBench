; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_chunk.c_nn_chunk_free.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_chunk.c_nn_chunk_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_chunk = type { i32 (%struct.nn_chunk*)*, i32 }

@NN_CHUNK_TAG_DEALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunk_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nn_chunk*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.nn_chunk* @nn_chunk_getptr(i8* %4)
  store %struct.nn_chunk* %5, %struct.nn_chunk** %3, align 8
  %6 = load %struct.nn_chunk*, %struct.nn_chunk** %3, align 8
  %7 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %6, i32 0, i32 1
  %8 = call i32 @nn_atomic_dec(i32* %7, i32 1)
  %9 = icmp sle i32 %8, 1
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = getelementptr inbounds i32, i32* %12, i64 -1
  %14 = load i32, i32* @NN_CHUNK_TAG_DEALLOCATED, align 4
  %15 = call i32 @nn_putl(i32* %13, i32 %14)
  %16 = load %struct.nn_chunk*, %struct.nn_chunk** %3, align 8
  %17 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %16, i32 0, i32 1
  %18 = call i32 @nn_atomic_term(i32* %17)
  %19 = load %struct.nn_chunk*, %struct.nn_chunk** %3, align 8
  %20 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %19, i32 0, i32 0
  %21 = load i32 (%struct.nn_chunk*)*, i32 (%struct.nn_chunk*)** %20, align 8
  %22 = load %struct.nn_chunk*, %struct.nn_chunk** %3, align 8
  %23 = call i32 %21(%struct.nn_chunk* %22)
  br label %24

24:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.nn_chunk* @nn_chunk_getptr(i8*) #1

declare dso_local i32 @nn_atomic_dec(i32*, i32) #1

declare dso_local i32 @nn_putl(i32*, i32) #1

declare dso_local i32 @nn_atomic_term(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
