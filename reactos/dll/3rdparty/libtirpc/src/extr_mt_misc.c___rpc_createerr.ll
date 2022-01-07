; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_mt_misc.c___rpc_createerr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_mt_misc.c___rpc_createerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_createerr = type { i32 }

@tsd_lock = common dso_local global i32 0, align 4
@rce_key = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.rpc_createerr zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_createerr* @__rpc_createerr() #0 {
  %1 = alloca %struct.rpc_createerr*, align 8
  %2 = alloca %struct.rpc_createerr*, align 8
  %3 = call i32 @mutex_lock(i32* @tsd_lock)
  %4 = load i32, i32* @rce_key, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @TlsAlloc()
  store i32 %7, i32* @rce_key, align 4
  br label %8

8:                                                ; preds = %6, %0
  %9 = call i32 @mutex_unlock(i32* @tsd_lock)
  %10 = load i32, i32* @rce_key, align 4
  %11 = call i64 @thr_getspecific(i32 %10)
  %12 = inttoptr i64 %11 to %struct.rpc_createerr*
  store %struct.rpc_createerr* %12, %struct.rpc_createerr** %2, align 8
  %13 = load %struct.rpc_createerr*, %struct.rpc_createerr** %2, align 8
  %14 = icmp ne %struct.rpc_createerr* %13, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %8
  %16 = call i64 @malloc(i32 4)
  %17 = inttoptr i64 %16 to %struct.rpc_createerr*
  store %struct.rpc_createerr* %17, %struct.rpc_createerr** %2, align 8
  %18 = load %struct.rpc_createerr*, %struct.rpc_createerr** %2, align 8
  %19 = icmp ne %struct.rpc_createerr* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @rce_key, align 4
  %22 = load %struct.rpc_createerr*, %struct.rpc_createerr** %2, align 8
  %23 = bitcast %struct.rpc_createerr* %22 to i8*
  %24 = call i64 @thr_setspecific(i32 %21, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20, %15
  %27 = load %struct.rpc_createerr*, %struct.rpc_createerr** %2, align 8
  %28 = icmp ne %struct.rpc_createerr* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.rpc_createerr*, %struct.rpc_createerr** %2, align 8
  %31 = call i32 @free(%struct.rpc_createerr* %30)
  br label %32

32:                                               ; preds = %29, %26
  store %struct.rpc_createerr* @rpc_createerr, %struct.rpc_createerr** %1, align 8
  br label %38

33:                                               ; preds = %20
  %34 = load %struct.rpc_createerr*, %struct.rpc_createerr** %2, align 8
  %35 = call i32 @memset(%struct.rpc_createerr* %34, i32 0, i32 4)
  br label %36

36:                                               ; preds = %33, %8
  %37 = load %struct.rpc_createerr*, %struct.rpc_createerr** %2, align 8
  store %struct.rpc_createerr* %37, %struct.rpc_createerr** %1, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = load %struct.rpc_createerr*, %struct.rpc_createerr** %1, align 8
  ret %struct.rpc_createerr* %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TlsAlloc(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @thr_getspecific(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @thr_setspecific(i32, i8*) #1

declare dso_local i32 @free(%struct.rpc_createerr*) #1

declare dso_local i32 @memset(%struct.rpc_createerr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
