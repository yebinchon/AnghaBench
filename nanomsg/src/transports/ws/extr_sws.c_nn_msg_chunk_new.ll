; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sws.c_nn_msg_chunk_new.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sws.c_nn_msg_chunk_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_list = type { i32 }
%struct.msg_chunk = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"msg_chunk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nn_msg_chunk_new(i64 %0, %struct.nn_list* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.nn_list*, align 8
  %5 = alloca %struct.msg_chunk*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.nn_list* %1, %struct.nn_list** %4, align 8
  %6 = call %struct.msg_chunk* @nn_alloc(i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.msg_chunk* %6, %struct.msg_chunk** %5, align 8
  %7 = load %struct.msg_chunk*, %struct.msg_chunk** %5, align 8
  %8 = call i32 @alloc_assert(%struct.msg_chunk* %7)
  %9 = load %struct.msg_chunk*, %struct.msg_chunk** %5, align 8
  %10 = getelementptr inbounds %struct.msg_chunk, %struct.msg_chunk* %9, i32 0, i32 0
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @nn_chunkref_init(i32* %10, i64 %11)
  %13 = load %struct.msg_chunk*, %struct.msg_chunk** %5, align 8
  %14 = getelementptr inbounds %struct.msg_chunk, %struct.msg_chunk* %13, i32 0, i32 1
  %15 = call i32 @nn_list_item_init(i32* %14)
  %16 = load %struct.nn_list*, %struct.nn_list** %4, align 8
  %17 = load %struct.msg_chunk*, %struct.msg_chunk** %5, align 8
  %18 = getelementptr inbounds %struct.msg_chunk, %struct.msg_chunk* %17, i32 0, i32 1
  %19 = load %struct.nn_list*, %struct.nn_list** %4, align 8
  %20 = call i32 @nn_list_end(%struct.nn_list* %19)
  %21 = call i32 @nn_list_insert(%struct.nn_list* %16, i32* %18, i32 %20)
  %22 = load %struct.msg_chunk*, %struct.msg_chunk** %5, align 8
  %23 = getelementptr inbounds %struct.msg_chunk, %struct.msg_chunk* %22, i32 0, i32 0
  %24 = call i8* @nn_chunkref_data(i32* %23)
  ret i8* %24
}

declare dso_local %struct.msg_chunk* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.msg_chunk*) #1

declare dso_local i32 @nn_chunkref_init(i32*, i64) #1

declare dso_local i32 @nn_list_item_init(i32*) #1

declare dso_local i32 @nn_list_insert(%struct.nn_list*, i32*, i32) #1

declare dso_local i32 @nn_list_end(%struct.nn_list*) #1

declare dso_local i8* @nn_chunkref_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
