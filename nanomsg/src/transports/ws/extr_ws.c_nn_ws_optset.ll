; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_ws.c_nn_ws_optset.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_ws.c_nn_ws_optset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_optset = type { i32* }
%struct.nn_ws_optset = type { %struct.nn_optset, i32 }

@.str = private unnamed_addr constant [12 x i8] c"optset (ws)\00", align 1
@nn_ws_optset_vfptr = common dso_local global i32 0, align 4
@NN_WS_MSG_TYPE_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nn_optset* ()* @nn_ws_optset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nn_optset* @nn_ws_optset() #0 {
  %1 = alloca %struct.nn_ws_optset*, align 8
  %2 = call %struct.nn_ws_optset* @nn_alloc(i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_ws_optset* %2, %struct.nn_ws_optset** %1, align 8
  %3 = load %struct.nn_ws_optset*, %struct.nn_ws_optset** %1, align 8
  %4 = call i32 @alloc_assert(%struct.nn_ws_optset* %3)
  %5 = load %struct.nn_ws_optset*, %struct.nn_ws_optset** %1, align 8
  %6 = getelementptr inbounds %struct.nn_ws_optset, %struct.nn_ws_optset* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.nn_optset, %struct.nn_optset* %6, i32 0, i32 0
  store i32* @nn_ws_optset_vfptr, i32** %7, align 8
  %8 = load i32, i32* @NN_WS_MSG_TYPE_BINARY, align 4
  %9 = load %struct.nn_ws_optset*, %struct.nn_ws_optset** %1, align 8
  %10 = getelementptr inbounds %struct.nn_ws_optset, %struct.nn_ws_optset* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.nn_ws_optset*, %struct.nn_ws_optset** %1, align 8
  %12 = getelementptr inbounds %struct.nn_ws_optset, %struct.nn_ws_optset* %11, i32 0, i32 0
  ret %struct.nn_optset* %12
}

declare dso_local %struct.nn_ws_optset* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.nn_ws_optset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
