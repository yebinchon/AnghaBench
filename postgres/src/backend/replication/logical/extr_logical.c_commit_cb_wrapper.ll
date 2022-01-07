; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_commit_cb_wrapper.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_commit_cb_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_17__*, i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_16__*, %struct.TYPE_13__*, i32)* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32, %struct.TYPE_16__* }

@.str = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@output_plugin_error_callback = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global %struct.TYPE_17__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i32)* @commit_cb_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commit_cb_wrapper(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @output_plugin_error_callback, align 4
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = bitcast %struct.TYPE_15__* %8 to i8*
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** @error_context_stack, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %32, align 8
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** @error_context_stack, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_16__*, %struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_16__*, %struct.TYPE_13__*, i32)** %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 %48(%struct.TYPE_16__* %49, %struct.TYPE_13__* %50, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  store %struct.TYPE_17__* %54, %struct.TYPE_17__** @error_context_stack, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
