; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_local_ref.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_local_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@EXPRVAL_STACK_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @interp_local_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_local_ref(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = call i32 @get_op_int(%struct.TYPE_16__* %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = call i32 @get_op_uint(%struct.TYPE_16__* %10, i32 1)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @local_name(%struct.TYPE_18__* %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @interp_identifier_ref(%struct.TYPE_16__* %29, i32 %32, i32 %33)
  store i32 %34, i32* %2, align 4
  br label %45

35:                                               ; preds = %21
  %36 = load i32, i32* @EXPRVAL_STACK_REF, align 4
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @local_off(%struct.TYPE_18__* %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = call i32 @stack_push_exprval(%struct.TYPE_16__* %43, %struct.TYPE_17__* %7)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %35, %28
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @get_op_int(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @get_op_uint(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @interp_identifier_ref(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @local_name(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @local_off(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @stack_push_exprval(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
