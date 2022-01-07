; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_call.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@JS_E_INVALID_PROPERTY = common dso_local global i32 0, align 4
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@DISPATCH_JSCRIPT_CALLEREXECSSOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @interp_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_call(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = call i32 @get_op_uint(%struct.TYPE_10__* %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = call i32 @get_op_int(%struct.TYPE_10__* %9, i32 1)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @stack_topn(%struct.TYPE_10__* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @is_object_instance(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = load i32, i32* @JS_E_INVALID_PROPERTY, align 4
  %23 = call i32 @throw_type_error(%struct.TYPE_10__* %21, i32 %22, i32* null)
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = call i32 @clear_acc(%struct.TYPE_10__* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @get_object(i32 %28)
  %30 = load i32, i32* @DISPATCH_METHOD, align 4
  %31 = load i32, i32* @DISPATCH_JSCRIPT_CALLEREXECSSOURCE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @stack_args(%struct.TYPE_10__* %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  br label %43

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i32* [ %41, %39 ], [ null, %42 ]
  %45 = call i32 @disp_call_value(%struct.TYPE_10__* %27, i32 %29, i32* null, i32 %32, i32 %33, i32 %36, i32* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %20
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @get_op_uint(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @get_op_int(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @stack_topn(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @is_object_instance(i32) #1

declare dso_local i32 @throw_type_error(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @clear_acc(%struct.TYPE_10__*) #1

declare dso_local i32 @disp_call_value(%struct.TYPE_10__*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @stack_args(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
