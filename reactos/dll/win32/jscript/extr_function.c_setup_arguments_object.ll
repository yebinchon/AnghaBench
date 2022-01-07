; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_setup_arguments_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_setup_arguments_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@setup_arguments_object.caleeW = internal constant [7 x i8] c"callee\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@Arguments_info = common dso_local global i32 0, align 4
@lengthW = common dso_local global i8* null, align 8
@PROPF_WRITABLE = common dso_local global i32 0, align 4
@PROPF_CONFIGURABLE = common dso_local global i32 0, align 4
@argumentsW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_arguments_object(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %8 = call %struct.TYPE_17__* @heap_alloc_zero(i32 32)
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %6, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %10 = icmp ne %struct.TYPE_17__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %12, i32* %3, align 4
  br label %103

13:                                               ; preds = %2
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @init_dispex_from_constr(i32* %15, %struct.TYPE_14__* %16, i32* @Arguments_info, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @FAILED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = call i32 @heap_free(%struct.TYPE_17__* %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %103

28:                                               ; preds = %13
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @jsdisp_addref(i32 %31)
  %33 = call i64 @function_from_jsdisp(i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_16__*
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %36, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 3
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %44, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i8*, i8** @lengthW, align 8
  %48 = load i32, i32* @PROPF_WRITABLE, align 4
  %49 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @jsval_number(i32 %53)
  %55 = call i32 @jsdisp_define_data_property(i32* %46, i8* %47, i32 %50, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @SUCCEEDED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %28
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* @PROPF_WRITABLE, align 4
  %63 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = call i32 @jsval_obj(i32* %69)
  %71 = call i32 @jsdisp_define_data_property(i32* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @setup_arguments_object.caleeW, i64 0, i64 0), i32 %64, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %59, %28
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @SUCCEEDED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @argumentsW, align 4
  %83 = load i32, i32* @PROPF_WRITABLE, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = call i32 @jsval_obj(i32* %85)
  %87 = call i32 @jsdisp_propput(i32 %81, i32 %82, i32 %83, i32 %86)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %76, %72
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @FAILED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = call i32 @jsdisp_release(i32* %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %103

97:                                               ; preds = %88
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store i32* %99, i32** %101, align 8
  %102 = load i32, i32* @S_OK, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %97, %92, %24, %11
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_17__* @heap_alloc_zero(i32) #1

declare dso_local i32 @init_dispex_from_constr(i32*, %struct.TYPE_14__*, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_17__*) #1

declare dso_local i64 @function_from_jsdisp(i32) #1

declare dso_local i32 @jsdisp_addref(i32) #1

declare dso_local i32 @jsdisp_define_data_property(i32*, i8*, i32, i32) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @jsdisp_propput(i32, i32, i32, i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
