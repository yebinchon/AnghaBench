; ModuleID = '/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_core.c_qnxr_write_memory.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_core.c_qnxr_write_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@DStMsg_memwr = common dso_local global i32 0, align 4
@SET_CHANNEL_DEBUG = common dso_local global i32 0, align 4
@DStMsg_memwr_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qnxr_write_memory(%struct.TYPE_19__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %12 = icmp ne %struct.TYPE_19__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %4
  store i32 -1, i32* %5, align 4
  br label %61

17:                                               ; preds = %13
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = load i32, i32* @DStMsg_memwr, align 4
  %20 = load i32, i32* @SET_CHANNEL_DEBUG, align 4
  %21 = call i32 @nto_send_init(%struct.TYPE_19__* %18, i32 %19, i32 0, i32 %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %10, align 4
  %23 = call i32 @EXTRACT_UNSIGNED_INTEGER(i32* %10, i32 8)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  store i32 %23, i32* %28, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @memcpy(i32 %34, i32* %35, i32 %36)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %39 = load i32, i32* @DStMsg_memwr_t, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @offsetof(i32 %39, i32* %40)
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = call i32 @nto_send(%struct.TYPE_19__* %38, i32 %43, i32 0)
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %60 [
    i32 129, label %51
    i32 128, label %53
  ]

51:                                               ; preds = %17
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %5, align 4
  br label %61

53:                                               ; preds = %17
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = call i32 @EXTRACT_SIGNED_INTEGER(i32* %58, i32 4)
  store i32 %59, i32* %5, align 4
  br label %61

60:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %53, %51, %16
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @nto_send_init(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @EXTRACT_UNSIGNED_INTEGER(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @nto_send(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32*) #1

declare dso_local i32 @EXTRACT_SIGNED_INTEGER(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
