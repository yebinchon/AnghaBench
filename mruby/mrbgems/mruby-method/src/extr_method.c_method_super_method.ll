; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_method_super_method.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_method_super_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32, %struct.RClass*, %struct.RClass* }
%struct.RProc = type { i32, %struct.RProc*, %struct.RProc* }
%struct.RObject = type { i32, %struct.RObject*, %struct.RObject* }
%struct.TYPE_2__ = type { %struct.RProc* }

@.str = private unnamed_addr constant [6 x i8] c"_recv\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_klass\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"_owner\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"_name\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"_proc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @method_super_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_super_method(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.RClass*, align 8
  %11 = alloca %struct.RClass*, align 8
  %12 = alloca %struct.RProc*, align 8
  %13 = alloca %struct.RObject*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @mrb_intern_lit(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @mrb_iv_get(i32* %14, i32 %15, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @mrb_intern_lit(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @mrb_iv_get(i32* %19, i32 %20, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @mrb_intern_lit(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @mrb_iv_get(i32* %24, i32 %25, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @mrb_intern_lit(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @mrb_iv_get(i32* %29, i32 %30, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @mrb_type(i32 %34)
  switch i32 %35, label %50 [
    i32 128, label %36
    i32 129, label %44
  ]

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.TYPE_2__* @mrb_class_ptr(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.RProc*, %struct.RProc** %39, align 8
  %41 = getelementptr inbounds %struct.RProc, %struct.RProc* %40, i32 0, i32 2
  %42 = load %struct.RProc*, %struct.RProc** %41, align 8
  %43 = bitcast %struct.RProc* %42 to %struct.RClass*
  store %struct.RClass* %43, %struct.RClass** %10, align 8
  br label %56

44:                                               ; preds = %2
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.TYPE_2__* @mrb_class_ptr(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.RProc*, %struct.RProc** %47, align 8
  %49 = bitcast %struct.RProc* %48 to %struct.RClass*
  store %struct.RClass* %49, %struct.RClass** %10, align 8
  br label %56

50:                                               ; preds = %2
  %51 = load i32, i32* %8, align 4
  %52 = call %struct.TYPE_2__* @mrb_class_ptr(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.RProc*, %struct.RProc** %53, align 8
  %55 = bitcast %struct.RProc* %54 to %struct.RClass*
  store %struct.RClass* %55, %struct.RClass** %10, align 8
  br label %56

56:                                               ; preds = %50, %44, %36
  %57 = load i32*, i32** %4, align 8
  %58 = bitcast %struct.RClass** %10 to %struct.RProc**
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @mrb_symbol(i32 %59)
  %61 = call %struct.RProc* @method_search_vm(i32* %57, %struct.RProc** %58, i32 %60)
  store %struct.RProc* %61, %struct.RProc** %12, align 8
  %62 = load %struct.RProc*, %struct.RProc** %12, align 8
  %63 = icmp ne %struct.RProc* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %56
  %65 = call i32 (...) @mrb_nil_value()
  store i32 %65, i32* %3, align 4
  br label %127

66:                                               ; preds = %56
  %67 = load %struct.RClass*, %struct.RClass** %10, align 8
  store %struct.RClass* %67, %struct.RClass** %11, align 8
  br label %68

68:                                               ; preds = %73, %66
  %69 = load %struct.RClass*, %struct.RClass** %10, align 8
  %70 = getelementptr inbounds %struct.RClass, %struct.RClass* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 129
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.RClass*, %struct.RClass** %10, align 8
  %75 = getelementptr inbounds %struct.RClass, %struct.RClass* %74, i32 0, i32 1
  %76 = load %struct.RClass*, %struct.RClass** %75, align 8
  store %struct.RClass* %76, %struct.RClass** %10, align 8
  br label %68

77:                                               ; preds = %68
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @mrb_obj_class(i32* %79, i32 %80)
  %82 = call %struct.RProc* @method_object_alloc(i32* %78, i32 %81)
  %83 = bitcast %struct.RProc* %82 to %struct.RObject*
  store %struct.RObject* %83, %struct.RObject** %13, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.RObject*, %struct.RObject** %13, align 8
  %86 = bitcast %struct.RObject* %85 to %struct.RProc*
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @mrb_intern_lit(i32* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.RClass*, %struct.RClass** %10, align 8
  %90 = bitcast %struct.RClass* %89 to %struct.RProc*
  %91 = call i32 @mrb_obj_value(%struct.RProc* %90)
  %92 = call i32 @mrb_obj_iv_set(i32* %84, %struct.RProc* %86, i32 %88, i32 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.RObject*, %struct.RObject** %13, align 8
  %95 = bitcast %struct.RObject* %94 to %struct.RProc*
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @mrb_intern_lit(i32* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @mrb_obj_iv_set(i32* %93, %struct.RProc* %95, i32 %97, i32 %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load %struct.RObject*, %struct.RObject** %13, align 8
  %102 = bitcast %struct.RObject* %101 to %struct.RProc*
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @mrb_intern_lit(i32* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @mrb_obj_iv_set(i32* %100, %struct.RProc* %102, i32 %104, i32 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.RObject*, %struct.RObject** %13, align 8
  %109 = bitcast %struct.RObject* %108 to %struct.RProc*
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @mrb_intern_lit(i32* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %112 = load %struct.RProc*, %struct.RProc** %12, align 8
  %113 = call i32 @mrb_obj_value(%struct.RProc* %112)
  %114 = call i32 @mrb_obj_iv_set(i32* %107, %struct.RProc* %109, i32 %111, i32 %113)
  %115 = load i32*, i32** %4, align 8
  %116 = load %struct.RObject*, %struct.RObject** %13, align 8
  %117 = bitcast %struct.RObject* %116 to %struct.RProc*
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @mrb_intern_lit(i32* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %120 = load %struct.RClass*, %struct.RClass** %11, align 8
  %121 = bitcast %struct.RClass* %120 to %struct.RProc*
  %122 = call i32 @mrb_obj_value(%struct.RProc* %121)
  %123 = call i32 @mrb_obj_iv_set(i32* %115, %struct.RProc* %117, i32 %119, i32 %122)
  %124 = load %struct.RObject*, %struct.RObject** %13, align 8
  %125 = bitcast %struct.RObject* %124 to %struct.RProc*
  %126 = call i32 @mrb_obj_value(%struct.RProc* %125)
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %77, %64
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @mrb_iv_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_type(i32) #1

declare dso_local %struct.TYPE_2__* @mrb_class_ptr(i32) #1

declare dso_local %struct.RProc* @method_search_vm(i32*, %struct.RProc**, i32) #1

declare dso_local i32 @mrb_symbol(i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local %struct.RProc* @method_object_alloc(i32*, i32) #1

declare dso_local i32 @mrb_obj_class(i32*, i32) #1

declare dso_local i32 @mrb_obj_iv_set(i32*, %struct.RProc*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RProc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
