; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-metaprog/src/extr_metaprog.c_mod_define_singleton_method.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-metaprog/src/extr_metaprog.c_mod_define_singleton_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.RProc = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"n&!\00", align 1
@MRB_TT_PROC = common dso_local global i32 0, align 4
@MRB_PROC_STRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @mod_define_singleton_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mod_define_singleton_method(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RProc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @mrb_nil_value()
  store i32 %9, i32* %8, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call i32 @mrb_get_args(%struct.TYPE_7__* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = load i32, i32* @MRB_TT_PROC, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @mrb_obj_alloc(%struct.TYPE_7__* %12, i32 %13, i32 %16)
  %18 = inttoptr i64 %17 to %struct.RProc*
  store %struct.RProc* %18, %struct.RProc** %5, align 8
  %19 = load %struct.RProc*, %struct.RProc** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @mrb_proc_ptr(i32 %20)
  %22 = call i32 @mrb_proc_copy(%struct.RProc* %19, i32 %21)
  %23 = load i32, i32* @MRB_PROC_STRICT, align 4
  %24 = load %struct.RProc*, %struct.RProc** %5, align 8
  %25 = getelementptr inbounds %struct.RProc, %struct.RProc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.RProc*, %struct.RProc** %5, align 8
  %30 = call i32 @MRB_METHOD_FROM_PROC(i32 %28, %struct.RProc* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @mrb_singleton_class(%struct.TYPE_7__* %32, i32 %33)
  %35 = call i32 @mrb_class_ptr(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @mrb_define_method_raw(%struct.TYPE_7__* %31, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @mrb_symbol_value(i32 %39)
  ret i32 %40
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(%struct.TYPE_7__*, i8*, i32*, i32*) #1

declare dso_local i64 @mrb_obj_alloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @mrb_proc_copy(%struct.RProc*, i32) #1

declare dso_local i32 @mrb_proc_ptr(i32) #1

declare dso_local i32 @MRB_METHOD_FROM_PROC(i32, %struct.RProc*) #1

declare dso_local i32 @mrb_define_method_raw(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @mrb_class_ptr(i32) #1

declare dso_local i32 @mrb_singleton_class(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mrb_symbol_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
