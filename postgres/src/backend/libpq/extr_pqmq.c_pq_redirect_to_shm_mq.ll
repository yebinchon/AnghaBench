; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqmq.c_pq_redirect_to_shm_mq.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqmq.c_pq_redirect_to_shm_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PqCommMqMethods = common dso_local global i32 0, align 4
@PqCommMethods = common dso_local global i32* null, align 8
@pq_mq_handle = common dso_local global i32* null, align 8
@DestRemote = common dso_local global i32 0, align 4
@whereToSendOutput = common dso_local global i32 0, align 4
@PG_PROTOCOL_LATEST = common dso_local global i32 0, align 4
@FrontendProtocol = common dso_local global i32 0, align 4
@pq_cleanup_redirect_to_shm_mq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pq_redirect_to_shm_mq(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* @PqCommMqMethods, i32** @PqCommMethods, align 8
  %5 = load i32*, i32** %4, align 8
  store i32* %5, i32** @pq_mq_handle, align 8
  %6 = load i32, i32* @DestRemote, align 4
  store i32 %6, i32* @whereToSendOutput, align 4
  %7 = load i32, i32* @PG_PROTOCOL_LATEST, align 4
  store i32 %7, i32* @FrontendProtocol, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @pq_cleanup_redirect_to_shm_mq, align 4
  %10 = call i32 @on_dsm_detach(i32* %8, i32 %9, i32 0)
  ret void
}

declare dso_local i32 @on_dsm_detach(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
