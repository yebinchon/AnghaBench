; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_method_parameters.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_method_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.RClass* }
%struct.RClass = type { i32 }
%struct.RProc = type { %struct.RClass* }

@.str = private unnamed_addr constant [6 x i8] c"_proc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rest\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @method_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_parameters(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.RProc*, align 8
  %8 = alloca %struct.RClass*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = call i32 @mrb_intern_lit(%struct.TYPE_7__* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @mrb_iv_get(%struct.TYPE_7__* %12, i32 %13, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @mrb_nil_p(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = call i32 @mrb_intern_lit(%struct.TYPE_7__* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @mrb_symbol_value(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i32 @mrb_ary_new_from_values(%struct.TYPE_7__* %24, i32 1, i32* %10)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = call i32 @mrb_ary_new_from_values(%struct.TYPE_7__* %26, i32 1, i32* %11)
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.RProc* @mrb_proc_ptr(i32 %29)
  store %struct.RProc* %30, %struct.RProc** %7, align 8
  %31 = load %struct.RProc*, %struct.RProc** %7, align 8
  %32 = getelementptr inbounds %struct.RProc, %struct.RProc* %31, i32 0, i32 0
  %33 = load %struct.RClass*, %struct.RClass** %32, align 8
  store %struct.RClass* %33, %struct.RClass** %8, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.RClass*, %struct.RClass** %35, align 8
  %37 = load %struct.RProc*, %struct.RProc** %7, align 8
  %38 = getelementptr inbounds %struct.RProc, %struct.RProc* %37, i32 0, i32 0
  store %struct.RClass* %36, %struct.RClass** %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @mrb_funcall(%struct.TYPE_7__* %39, i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.RClass*, %struct.RClass** %8, align 8
  %43 = load %struct.RProc*, %struct.RProc** %7, align 8
  %44 = getelementptr inbounds %struct.RProc, %struct.RProc* %43, i32 0, i32 0
  store %struct.RClass* %42, %struct.RClass** %44, align 8
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %28, %20
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @mrb_iv_get(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_symbol_value(i32) #1

declare dso_local i32 @mrb_ary_new_from_values(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local %struct.RProc* @mrb_proc_ptr(i32) #1

declare dso_local i32 @mrb_funcall(%struct.TYPE_7__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
