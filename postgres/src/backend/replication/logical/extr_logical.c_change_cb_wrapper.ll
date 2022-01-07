; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_change_cb_wrapper.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_change_cb_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_21__*, i8*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_20__*, %struct.TYPE_16__*, i32, %struct.TYPE_17__*)* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i8*, i32, %struct.TYPE_20__* }

@.str = private unnamed_addr constant [7 x i8] c"change\00", align 1
@output_plugin_error_callback = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global %struct.TYPE_21__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_16__*, i32, %struct.TYPE_17__*)* @change_cb_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_cb_wrapper(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1, i32 %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca %struct.TYPE_21__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %8, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %9, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @output_plugin_error_callback, align 4
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = bitcast %struct.TYPE_19__* %10 to i8*
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** @error_context_stack, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %34, align 8
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** @error_context_stack, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_20__*, %struct.TYPE_16__*, i32, %struct.TYPE_17__*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_16__*, i32, %struct.TYPE_17__*)** %49, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %55 = call i32 %50(%struct.TYPE_20__* %51, %struct.TYPE_16__* %52, i32 %53, %struct.TYPE_17__* %54)
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  store %struct.TYPE_21__* %57, %struct.TYPE_21__** @error_context_stack, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
