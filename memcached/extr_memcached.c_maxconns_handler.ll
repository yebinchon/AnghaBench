; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_maxconns_handler.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_maxconns_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@__const.maxconns_handler.t = private unnamed_addr constant %struct.timeval { i32 10000, i32 0 }, align 4
@allow_new_conns = common dso_local global i32 0, align 4
@maxconnsevent = common dso_local global i32 0, align 4
@main_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @maxconns_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maxconns_handler(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.timeval* @__const.maxconns_handler.t to i8*), i64 8, i1 false)
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, -42
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @allow_new_conns, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11, %3
  %15 = call i32 @evtimer_set(i32* @maxconnsevent, void (i32, i16, i8*)* @maxconns_handler, i32 0)
  %16 = load i32, i32* @main_base, align 4
  %17 = call i32 @event_base_set(i32 %16, i32* @maxconnsevent)
  %18 = call i32 @evtimer_add(i32* @maxconnsevent, %struct.timeval* %7)
  br label %22

19:                                               ; preds = %11
  %20 = call i32 @evtimer_del(i32* @maxconnsevent)
  %21 = call i32 @accept_new_conns(i32 1)
  br label %22

22:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @evtimer_set(i32*, void (i32, i16, i8*)*, i32) #2

declare dso_local i32 @event_base_set(i32, i32*) #2

declare dso_local i32 @evtimer_add(i32*, %struct.timeval*) #2

declare dso_local i32 @evtimer_del(i32*) #2

declare dso_local i32 @accept_new_conns(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
