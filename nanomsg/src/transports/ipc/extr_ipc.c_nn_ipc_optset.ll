; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ipc/extr_ipc.c_nn_ipc_optset.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ipc/extr_ipc.c_nn_ipc_optset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_optset = type { i32* }
%struct.nn_ipc_optset = type { i32, i32, %struct.nn_optset, i32* }

@.str = private unnamed_addr constant [13 x i8] c"optset (ipc)\00", align 1
@nn_ipc_optset_vfptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nn_optset* ()* @nn_ipc_optset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nn_optset* @nn_ipc_optset() #0 {
  %1 = alloca %struct.nn_ipc_optset*, align 8
  %2 = call %struct.nn_ipc_optset* @nn_alloc(i32 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_ipc_optset* %2, %struct.nn_ipc_optset** %1, align 8
  %3 = load %struct.nn_ipc_optset*, %struct.nn_ipc_optset** %1, align 8
  %4 = call i32 @alloc_assert(%struct.nn_ipc_optset* %3)
  %5 = load %struct.nn_ipc_optset*, %struct.nn_ipc_optset** %1, align 8
  %6 = getelementptr inbounds %struct.nn_ipc_optset, %struct.nn_ipc_optset* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.nn_optset, %struct.nn_optset* %6, i32 0, i32 0
  store i32* @nn_ipc_optset_vfptr, i32** %7, align 8
  %8 = load %struct.nn_ipc_optset*, %struct.nn_ipc_optset** %1, align 8
  %9 = getelementptr inbounds %struct.nn_ipc_optset, %struct.nn_ipc_optset* %8, i32 0, i32 3
  store i32* null, i32** %9, align 8
  %10 = load %struct.nn_ipc_optset*, %struct.nn_ipc_optset** %1, align 8
  %11 = getelementptr inbounds %struct.nn_ipc_optset, %struct.nn_ipc_optset* %10, i32 0, i32 0
  store i32 4096, i32* %11, align 8
  %12 = load %struct.nn_ipc_optset*, %struct.nn_ipc_optset** %1, align 8
  %13 = getelementptr inbounds %struct.nn_ipc_optset, %struct.nn_ipc_optset* %12, i32 0, i32 1
  store i32 4096, i32* %13, align 4
  %14 = load %struct.nn_ipc_optset*, %struct.nn_ipc_optset** %1, align 8
  %15 = getelementptr inbounds %struct.nn_ipc_optset, %struct.nn_ipc_optset* %14, i32 0, i32 2
  ret %struct.nn_optset* %15
}

declare dso_local %struct.nn_ipc_optset* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.nn_ipc_optset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
