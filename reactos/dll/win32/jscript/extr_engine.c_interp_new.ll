; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_new.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@JS_E_OBJECT_EXPECTED = common dso_local global i32 0, align 4
@JS_E_INVALID_ACTION = common dso_local global i32 0, align 4
@JS_E_INVALID_PROPERTY = common dso_local global i32 0, align 4
@DISPATCH_CONSTRUCT = common dso_local global i32 0, align 4
@DISPATCH_JSCRIPT_CALLEREXECSSOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @interp_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_new(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = call i32 @get_op_uint(%struct.TYPE_9__* %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @stack_topn(%struct.TYPE_9__* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @is_null(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = load i32, i32* @JS_E_OBJECT_EXPECTED, align 4
  %19 = call i32 @throw_type_error(%struct.TYPE_9__* %17, i32 %18, i32* null)
  store i32 %19, i32* %2, align 4
  br label %54

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @is_object_instance(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = load i32, i32* @JS_E_INVALID_ACTION, align 4
  %27 = call i32 @throw_type_error(%struct.TYPE_9__* %25, i32 %26, i32* null)
  store i32 %27, i32* %2, align 4
  br label %54

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @get_object(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = load i32, i32* @JS_E_INVALID_PROPERTY, align 4
  %35 = call i32 @throw_type_error(%struct.TYPE_9__* %33, i32 %34, i32* null)
  store i32 %35, i32* %2, align 4
  br label %54

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = call i32 @clear_acc(%struct.TYPE_9__* %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @get_object(i32 %42)
  %44 = load i32, i32* @DISPATCH_CONSTRUCT, align 4
  %45 = load i32, i32* @DISPATCH_JSCRIPT_CALLEREXECSSOURCE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @stack_args(%struct.TYPE_9__* %48, i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = call i32 @disp_call_value(%struct.TYPE_9__* %41, i32 %43, i32* null, i32 %46, i32 %47, i32 %50, i32* %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %38, %32, %24, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @get_op_uint(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @stack_topn(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @is_null(i32) #1

declare dso_local i32 @throw_type_error(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @is_object_instance(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @clear_acc(%struct.TYPE_9__*) #1

declare dso_local i32 @disp_call_value(%struct.TYPE_9__*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @stack_args(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
