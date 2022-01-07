; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_bind_event_target.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_bind_event_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Can't bind to %s\0A\00", align 1
@IID_IBindEventHandler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"BindEvent failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"No IBindEventHandler, not yet supported binding\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, %struct.TYPE_5__*)* @bind_event_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_event_target(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @identifier_eval(i32* %13, i32 %16, i32* %9)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %73

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @exprval_to_value(i32* %24, i32* %9, i32* %11)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %4, align 4
  br label %73

31:                                               ; preds = %23
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @is_object_instance(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @debugstr_jsval(i32 %36)
  %38 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @jsval_release(i32 %39)
  br label %41

41:                                               ; preds = %35, %31
  %42 = load i32, i32* %11, align 4
  %43 = call i32* @get_object(i32 %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = bitcast i32** %8 to i8**
  %46 = call i32 @IDispatch_QueryInterface(i32* %44, i32* @IID_IBindEventHandler, i8** %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @SUCCEEDED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %41
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @IBindEventHandler_BindHandler(i32* %51, i32 %54, i32* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @IBindEventHandler_Release(i32* %58)
  %60 = load i32, i32* %12, align 4
  %61 = call i64 @FAILED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %50
  br label %69

67:                                               ; preds = %41
  %68 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %66
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @IDispatch_Release(i32* %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %29, %21
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @identifier_eval(i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @exprval_to_value(i32*, i32*, i32*) #1

declare dso_local i32 @is_object_instance(i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @debugstr_jsval(i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32* @get_object(i32) #1

declare dso_local i32 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IBindEventHandler_BindHandler(i32*, i32, i32*) #1

declare dso_local i32 @IBindEventHandler_Release(i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
