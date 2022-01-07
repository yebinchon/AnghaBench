; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_message_cb_wrapper.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_message_cb_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_17__*, i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_12__, i8*, i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_16__*, %struct.TYPE_13__*, i8*, i32, i8*, i32, i8*)* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i8*, %struct.TYPE_16__* }

@.str = private unnamed_addr constant [8 x i8] c"message\00", align 1
@output_plugin_error_callback = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global %struct.TYPE_17__* null, align 8
@InvalidTransactionId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i8*, i32, i8*, i32, i8*)* @message_cb_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @message_cb_wrapper(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i8* %2, i32 %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_15__, align 8
  %17 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %15, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_16__*, %struct.TYPE_13__*, i8*, i32, i8*, i32, i8*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_13__*, i8*, i32, i8*, i32, i8*)** %30, align 8
  %32 = icmp eq i32 (%struct.TYPE_16__*, %struct.TYPE_13__*, i8*, i32, i8*, i32, i8*)* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %7
  br label %77

34:                                               ; preds = %7
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* @output_plugin_error_callback, align 4
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = bitcast %struct.TYPE_15__* %16 to i8*
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** @error_context_stack, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %45, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** @error_context_stack, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %49 = icmp ne %struct.TYPE_13__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %34
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %56

54:                                               ; preds = %34
  %55 = load i32, i32* @InvalidTransactionId, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i32 [ %53, %50 ], [ %55, %54 ]
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_16__*, %struct.TYPE_13__*, i8*, i32, i8*, i32, i8*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_13__*, i8*, i32, i8*, i32, i8*)** %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 %66(%struct.TYPE_16__* %67, %struct.TYPE_13__* %68, i8* %69, i32 %70, i8* %71, i32 %72, i8* %73)
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  store %struct.TYPE_17__* %76, %struct.TYPE_17__** @error_context_stack, align 8
  br label %77

77:                                               ; preds = %56, %33
  ret void
}

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
