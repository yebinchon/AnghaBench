; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_make_struct_define_accessors.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_make_struct_define_accessors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }
%struct.RProc = type { i32 }

@mrb_struct_ref = common dso_local global i32 0, align 4
@mrb_struct_set_m = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.RClass*)* @make_struct_define_accessors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_struct_define_accessors(i32* %0, i32 %1, %struct.RClass* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.RClass*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.RProc*, align 8
  %15 = alloca %struct.RProc*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.RClass* %2, %struct.RClass** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @RARRAY_PTR(i32 %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @RARRAY_LEN(i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @mrb_gc_arena_save(i32* %20)
  store i32 %21, i32* %10, align 4
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %61, %3
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mrb_symbol(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @mrb_fixnum_value(i64 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @mrb_struct_ref, align 4
  %36 = call %struct.RProc* @mrb_proc_new_cfunc_with_env(i32* %34, i32 %35, i32 1, i32* %13)
  store %struct.RProc* %36, %struct.RProc** %14, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @mrb_struct_set_m, align 4
  %39 = call %struct.RProc* @mrb_proc_new_cfunc_with_env(i32* %37, i32 %38, i32 1, i32* %13)
  store %struct.RProc* %39, %struct.RProc** %15, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.RProc*, %struct.RProc** %14, align 8
  %42 = call i32 @MRB_METHOD_FROM_PROC(i32 %40, %struct.RProc* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.RClass*, %struct.RClass** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @mrb_define_method_raw(i32* %43, %struct.RClass* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.RProc*, %struct.RProc** %15, align 8
  %50 = call i32 @MRB_METHOD_FROM_PROC(i32 %48, %struct.RProc* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.RClass*, %struct.RClass** %6, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @mrb_id_attrset(i32* %53, i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @mrb_define_method_raw(i32* %51, %struct.RClass* %52, i32 %55, i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @mrb_gc_arena_restore(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %26
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %22

64:                                               ; preds = %22
  ret void
}

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local i64 @RARRAY_LEN(i32) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_symbol(i32) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

declare dso_local %struct.RProc* @mrb_proc_new_cfunc_with_env(i32*, i32, i32, i32*) #1

declare dso_local i32 @MRB_METHOD_FROM_PROC(i32, %struct.RProc*) #1

declare dso_local i32 @mrb_define_method_raw(i32*, %struct.RClass*, i32, i32) #1

declare dso_local i32 @mrb_id_attrset(i32*, i32) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
