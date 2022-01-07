; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_identifier_ref.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_identifier_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@EXPRVAL_INVALID = common dso_local global i64 0, align 8
@fdexNameEnsure = common dso_local global i32 0, align 4
@EXPRVAL_JSVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"invalid ref\0A\00", align 1
@JS_E_OBJECT_EXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32)* @interp_identifier_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_identifier_ref(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @identifier_eval(%struct.TYPE_11__* %11, i32 %12, %struct.TYPE_12__* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @FAILED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %66

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EXPRVAL_INVALID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @fdexNameEnsure, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @fdexNameEnsure, align 4
  %35 = call i32 @jsdisp_get_id(i32 %32, i32 %33, i32 %34, i32* %10)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %66

41:                                               ; preds = %29
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @to_disp(i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @exprval_set_disp_ref(%struct.TYPE_12__* %8, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %24, %19
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EXPRVAL_JSVAL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EXPRVAL_INVALID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53, %48
  %59 = call i32 @WARN(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 @exprval_release(%struct.TYPE_12__* %8)
  %61 = load i32, i32* @JS_E_OBJECT_EXPECTED, align 4
  %62 = call i32 @exprval_set_exception(%struct.TYPE_12__* %8, i32 %61)
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = call i32 @stack_push_exprval(%struct.TYPE_11__* %64, %struct.TYPE_12__* %8)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %39, %17
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @identifier_eval(%struct.TYPE_11__*, i32, %struct.TYPE_12__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsdisp_get_id(i32, i32, i32, i32*) #1

declare dso_local i32 @exprval_set_disp_ref(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @to_disp(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @exprval_release(%struct.TYPE_12__*) #1

declare dso_local i32 @exprval_set_exception(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @stack_push_exprval(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
