; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_keys.c_xsltInitCtxtKeys.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_keys.c_xsltInitCtxtKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }

@XSLT_TRACE_KEYS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltInitCtxtKeys(%struct.TYPE_15__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = icmp eq %struct.TYPE_15__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = icmp eq %struct.TYPE_18__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %39

13:                                               ; preds = %9
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %5, align 8
  br label %17

17:                                               ; preds = %36, %13
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = icmp ne %struct.TYPE_16__* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %6, align 8
  br label %25

25:                                               ; preds = %28, %20
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = icmp ne %struct.TYPE_17__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = call i32 @xsltInitCtxtKey(%struct.TYPE_15__* %29, %struct.TYPE_18__* %30, %struct.TYPE_17__* %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %6, align 8
  br label %25

36:                                               ; preds = %25
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = call %struct.TYPE_16__* @xsltNextImport(%struct.TYPE_16__* %37)
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %5, align 8
  br label %17

39:                                               ; preds = %12, %17
  ret void
}

declare dso_local i32 @xsltInitCtxtKey(%struct.TYPE_15__*, %struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @xsltNextImport(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
