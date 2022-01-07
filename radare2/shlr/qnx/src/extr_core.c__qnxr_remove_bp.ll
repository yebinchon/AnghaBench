; ModuleID = '/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_core.c__qnxr_remove_bp.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_core.c__qnxr_remove_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__, %struct.TYPE_16__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@DStMsg_brk = common dso_local global i32 0, align 4
@DSMSG_BRK_EXEC = common dso_local global i32 0, align 4
@SET_CHANNEL_DEBUG = common dso_local global i32 0, align 4
@DSrMsg_err = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_qnxr_remove_bp(%struct.TYPE_17__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %9 = icmp ne %struct.TYPE_17__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %40

11:                                               ; preds = %3
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = load i32, i32* @DStMsg_brk, align 4
  %14 = load i32, i32* @DSMSG_BRK_EXEC, align 4
  %15 = load i32, i32* @SET_CHANNEL_DEBUG, align 4
  %16 = call i32 @nto_send_init(%struct.TYPE_17__* %12, i32 %13, i32 %14, i32 %15)
  %17 = call i32 @EXTRACT_UNSIGNED_INTEGER(i32* %6, i32 4)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  store i32 %17, i32* %22, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = call i32 @nto_send(%struct.TYPE_17__* %28, i32 8, i32 0)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DSrMsg_err, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %11
  store i32 -1, i32* %4, align 4
  br label %40

39:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %38, %10
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @nto_send_init(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @EXTRACT_UNSIGNED_INTEGER(i32*, i32) #1

declare dso_local i32 @nto_send(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
