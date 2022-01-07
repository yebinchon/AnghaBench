; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_raw.c_svc_raw_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_raw.c_svc_raw_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_raw_private = type { %struct.TYPE_7__, i32*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32*, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@svcraw_lock = common dso_local global i32 0, align 4
@svc_raw_private = common dso_local global %struct.svc_raw_private* null, align 8
@__rpc_rawcombuf = common dso_local global i32* null, align 8
@UDPMSGSIZE = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @svc_raw_create() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.svc_raw_private*, align 8
  %3 = call i32 @mutex_lock(i32* @svcraw_lock)
  %4 = load %struct.svc_raw_private*, %struct.svc_raw_private** @svc_raw_private, align 8
  store %struct.svc_raw_private* %4, %struct.svc_raw_private** %2, align 8
  %5 = load %struct.svc_raw_private*, %struct.svc_raw_private** %2, align 8
  %6 = icmp eq %struct.svc_raw_private* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %0
  %8 = call i32* @calloc(i32 1, i32 48)
  %9 = bitcast i32* %8 to %struct.svc_raw_private*
  store %struct.svc_raw_private* %9, %struct.svc_raw_private** %2, align 8
  %10 = load %struct.svc_raw_private*, %struct.svc_raw_private** %2, align 8
  %11 = icmp eq %struct.svc_raw_private* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 @mutex_unlock(i32* @svcraw_lock)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %1, align 8
  br label %60

14:                                               ; preds = %7
  %15 = load i32*, i32** @__rpc_rawcombuf, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @UDPMSGSIZE, align 4
  %19 = call i32* @calloc(i32 %18, i32 1)
  store i32* %19, i32** @__rpc_rawcombuf, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32*, i32** @__rpc_rawcombuf, align 8
  %22 = load %struct.svc_raw_private*, %struct.svc_raw_private** %2, align 8
  %23 = getelementptr inbounds %struct.svc_raw_private, %struct.svc_raw_private* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.svc_raw_private*, %struct.svc_raw_private** %2, align 8
  store %struct.svc_raw_private* %24, %struct.svc_raw_private** @svc_raw_private, align 8
  br label %25

25:                                               ; preds = %20, %0
  %26 = load i32, i32* @FD_SETSIZE, align 4
  %27 = load %struct.svc_raw_private*, %struct.svc_raw_private** %2, align 8
  %28 = getelementptr inbounds %struct.svc_raw_private, %struct.svc_raw_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 8
  %30 = load %struct.svc_raw_private*, %struct.svc_raw_private** %2, align 8
  %31 = getelementptr inbounds %struct.svc_raw_private, %struct.svc_raw_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.svc_raw_private*, %struct.svc_raw_private** %2, align 8
  %34 = getelementptr inbounds %struct.svc_raw_private, %struct.svc_raw_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.svc_raw_private*, %struct.svc_raw_private** %2, align 8
  %37 = getelementptr inbounds %struct.svc_raw_private, %struct.svc_raw_private* %36, i32 0, i32 0
  %38 = call i32 @svc_raw_ops(%struct.TYPE_7__* %37)
  %39 = load %struct.svc_raw_private*, %struct.svc_raw_private** %2, align 8
  %40 = getelementptr inbounds %struct.svc_raw_private, %struct.svc_raw_private* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.svc_raw_private*, %struct.svc_raw_private** %2, align 8
  %43 = getelementptr inbounds %struct.svc_raw_private, %struct.svc_raw_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load %struct.svc_raw_private*, %struct.svc_raw_private** %2, align 8
  %47 = getelementptr inbounds %struct.svc_raw_private, %struct.svc_raw_private* %46, i32 0, i32 2
  %48 = load %struct.svc_raw_private*, %struct.svc_raw_private** %2, align 8
  %49 = getelementptr inbounds %struct.svc_raw_private, %struct.svc_raw_private* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @UDPMSGSIZE, align 4
  %52 = load i32, i32* @XDR_DECODE, align 4
  %53 = call i32 @xdrmem_create(i32* %47, i32* %50, i32 %51, i32 %52)
  %54 = load %struct.svc_raw_private*, %struct.svc_raw_private** %2, align 8
  %55 = getelementptr inbounds %struct.svc_raw_private, %struct.svc_raw_private* %54, i32 0, i32 0
  %56 = call i32 @xprt_register(%struct.TYPE_7__* %55)
  %57 = call i32 @mutex_unlock(i32* @svcraw_lock)
  %58 = load %struct.svc_raw_private*, %struct.svc_raw_private** %2, align 8
  %59 = getelementptr inbounds %struct.svc_raw_private, %struct.svc_raw_private* %58, i32 0, i32 0
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %1, align 8
  br label %60

60:                                               ; preds = %25, %12
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %61
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @svc_raw_ops(%struct.TYPE_7__*) #1

declare dso_local i32 @xdrmem_create(i32*, i32*, i32, i32) #1

declare dso_local i32 @xprt_register(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
