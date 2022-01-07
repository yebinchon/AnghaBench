; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_getrpcent.c__rpcdata.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_getrpcent.c__rpcdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcdata = type { i32 }

@rpcdata = common dso_local global %struct.rpcdata* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpcdata* ()* @_rpcdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpcdata* @_rpcdata() #0 {
  %1 = alloca %struct.rpcdata*, align 8
  %2 = load %struct.rpcdata*, %struct.rpcdata** @rpcdata, align 8
  store %struct.rpcdata* %2, %struct.rpcdata** %1, align 8
  %3 = load %struct.rpcdata*, %struct.rpcdata** %1, align 8
  %4 = icmp eq %struct.rpcdata* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = call i64 @calloc(i32 1, i32 4)
  %7 = inttoptr i64 %6 to %struct.rpcdata*
  store %struct.rpcdata* %7, %struct.rpcdata** %1, align 8
  %8 = load %struct.rpcdata*, %struct.rpcdata** %1, align 8
  store %struct.rpcdata* %8, %struct.rpcdata** @rpcdata, align 8
  br label %9

9:                                                ; preds = %5, %0
  %10 = load %struct.rpcdata*, %struct.rpcdata** %1, align 8
  ret %struct.rpcdata* %10
}

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
