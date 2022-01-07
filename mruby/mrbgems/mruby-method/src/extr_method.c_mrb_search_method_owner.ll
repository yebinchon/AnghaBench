; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_mrb_search_method_owner.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_mrb_search_method_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i64, %struct.RClass* }
%struct.RProc = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"respond_to_missing?\00", align 1
@MRB_TT_ICLASS = common dso_local global i64 0, align 8
@E_NAME_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"undefined method '%n' for class '%C'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.RClass*, i32, i32, %struct.RClass**, %struct.RProc**, i64)* @mrb_search_method_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrb_search_method_owner(i32* %0, %struct.RClass* %1, i32 %2, i32 %3, %struct.RClass** %4, %struct.RProc** %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.RClass*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.RClass**, align 8
  %13 = alloca %struct.RProc**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.RClass* %1, %struct.RClass** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.RClass** %4, %struct.RClass*** %12, align 8
  store %struct.RProc** %5, %struct.RProc*** %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = load %struct.RClass*, %struct.RClass** %9, align 8
  %17 = load %struct.RClass**, %struct.RClass*** %12, align 8
  store %struct.RClass* %16, %struct.RClass** %17, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.RClass**, %struct.RClass*** %12, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call %struct.RProc* @method_search_vm(i32* %18, %struct.RClass** %19, i32 %20)
  %22 = load %struct.RProc**, %struct.RProc*** %13, align 8
  store %struct.RProc* %21, %struct.RProc** %22, align 8
  %23 = load %struct.RProc**, %struct.RProc*** %13, align 8
  %24 = load %struct.RProc*, %struct.RProc** %23, align 8
  %25 = icmp ne %struct.RProc* %24, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %7
  %27 = load i64, i64* %14, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %67

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @mrb_intern_lit(i32* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @mrb_respond_to(i32* %31, i32 %32, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %67

38:                                               ; preds = %30
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @mrb_symbol_value(i32 %41)
  %43 = call i32 (...) @mrb_true_value()
  %44 = call i32 @mrb_funcall(i32* %39, i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 2, i32 %42, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @mrb_test(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %67

49:                                               ; preds = %38
  %50 = load %struct.RClass*, %struct.RClass** %9, align 8
  %51 = load %struct.RClass**, %struct.RClass*** %12, align 8
  store %struct.RClass* %50, %struct.RClass** %51, align 8
  br label %52

52:                                               ; preds = %49, %7
  br label %53

53:                                               ; preds = %60, %52
  %54 = load %struct.RClass**, %struct.RClass*** %12, align 8
  %55 = load %struct.RClass*, %struct.RClass** %54, align 8
  %56 = getelementptr inbounds %struct.RClass, %struct.RClass* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MRB_TT_ICLASS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.RClass**, %struct.RClass*** %12, align 8
  %62 = load %struct.RClass*, %struct.RClass** %61, align 8
  %63 = getelementptr inbounds %struct.RClass, %struct.RClass* %62, i32 0, i32 1
  %64 = load %struct.RClass*, %struct.RClass** %63, align 8
  %65 = load %struct.RClass**, %struct.RClass*** %12, align 8
  store %struct.RClass* %64, %struct.RClass** %65, align 8
  br label %53

66:                                               ; preds = %53
  br label %73

67:                                               ; preds = %48, %37, %29
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* @E_NAME_ERROR, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.RClass*, %struct.RClass** %9, align 8
  %72 = call i32 @mrb_raisef(i32* %68, i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %70, %struct.RClass* %71)
  br label %73

73:                                               ; preds = %67, %66
  ret void
}

declare dso_local %struct.RProc* @method_search_vm(i32*, %struct.RClass**, i32) #1

declare dso_local i32 @mrb_respond_to(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mrb_symbol_value(i32) #1

declare dso_local i32 @mrb_true_value(...) #1

declare dso_local i32 @mrb_test(i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32, %struct.RClass*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
