; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_add_function_signature_parameter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_add_function_signature_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.symt_function_signature = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.symt = type { i32 }
%struct.symt_function_arg_type = type { %struct.symt, %struct.TYPE_2__*, %struct.symt* }

@SymTagFunctionType = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SymTagFunctionArgType = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symt_add_function_signature_parameter(%struct.module* %0, %struct.symt_function_signature* %1, %struct.symt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.symt_function_signature*, align 8
  %7 = alloca %struct.symt*, align 8
  %8 = alloca %struct.symt**, align 8
  %9 = alloca %struct.symt_function_arg_type*, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store %struct.symt_function_signature* %1, %struct.symt_function_signature** %6, align 8
  store %struct.symt* %2, %struct.symt** %7, align 8
  %10 = load %struct.symt_function_signature*, %struct.symt_function_signature** %6, align 8
  %11 = getelementptr inbounds %struct.symt_function_signature, %struct.symt_function_signature* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SymTagFunctionType, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.module*, %struct.module** %5, align 8
  %19 = getelementptr inbounds %struct.module, %struct.module* %18, i32 0, i32 0
  %20 = call %struct.symt_function_arg_type* @pool_alloc(i32* %19, i32 24)
  store %struct.symt_function_arg_type* %20, %struct.symt_function_arg_type** %9, align 8
  %21 = load %struct.symt_function_arg_type*, %struct.symt_function_arg_type** %9, align 8
  %22 = icmp ne %struct.symt_function_arg_type* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %3
  %26 = load i32, i32* @SymTagFunctionArgType, align 4
  %27 = load %struct.symt_function_arg_type*, %struct.symt_function_arg_type** %9, align 8
  %28 = getelementptr inbounds %struct.symt_function_arg_type, %struct.symt_function_arg_type* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.symt, %struct.symt* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.symt*, %struct.symt** %7, align 8
  %31 = load %struct.symt_function_arg_type*, %struct.symt_function_arg_type** %9, align 8
  %32 = getelementptr inbounds %struct.symt_function_arg_type, %struct.symt_function_arg_type* %31, i32 0, i32 2
  store %struct.symt* %30, %struct.symt** %32, align 8
  %33 = load %struct.symt_function_signature*, %struct.symt_function_signature** %6, align 8
  %34 = getelementptr inbounds %struct.symt_function_signature, %struct.symt_function_signature* %33, i32 0, i32 1
  %35 = load %struct.symt_function_arg_type*, %struct.symt_function_arg_type** %9, align 8
  %36 = getelementptr inbounds %struct.symt_function_arg_type, %struct.symt_function_arg_type* %35, i32 0, i32 1
  store %struct.TYPE_2__* %34, %struct.TYPE_2__** %36, align 8
  %37 = load %struct.symt_function_signature*, %struct.symt_function_signature** %6, align 8
  %38 = getelementptr inbounds %struct.symt_function_signature, %struct.symt_function_signature* %37, i32 0, i32 0
  %39 = load %struct.module*, %struct.module** %5, align 8
  %40 = getelementptr inbounds %struct.module, %struct.module* %39, i32 0, i32 0
  %41 = call %struct.symt** @vector_add(i32* %38, i32* %40)
  store %struct.symt** %41, %struct.symt*** %8, align 8
  %42 = load %struct.symt**, %struct.symt*** %8, align 8
  %43 = icmp ne %struct.symt** %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %25
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %4, align 4
  br label %51

46:                                               ; preds = %25
  %47 = load %struct.symt_function_arg_type*, %struct.symt_function_arg_type** %9, align 8
  %48 = getelementptr inbounds %struct.symt_function_arg_type, %struct.symt_function_arg_type* %47, i32 0, i32 0
  %49 = load %struct.symt**, %struct.symt*** %8, align 8
  store %struct.symt* %48, %struct.symt** %49, align 8
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %44, %23
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.symt_function_arg_type* @pool_alloc(i32*, i32) #1

declare dso_local %struct.symt** @vector_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
