; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_mcall.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_mcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"method_missing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32, i32, %struct.RClass*, i32, i32*, i32)* @mcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcall(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3, %struct.RClass* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.RClass*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.RClass* %4, %struct.RClass** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @mrb_symbol(i32 %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32 %28, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @mrb_nil_p(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @mrb_ary_new_from_values(%struct.TYPE_13__* %39, i32 %40, i32* %41)
  store i32 %42, i32* %19, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @mrb_ary_unshift(%struct.TYPE_13__* %43, i32 %44, i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %50 = call i32 @mrb_intern_lit(%struct.TYPE_13__* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* %19, align 4
  %54 = call i32 @RARRAY_PTR(i32 %53)
  %55 = call i32 @mrb_funcall_argv(%struct.TYPE_13__* %47, i32 %48, i32 %50, i32 %52, i32 %54)
  store i32 %55, i32* %17, align 4
  br label %78

56:                                               ; preds = %8
  %57 = load i32, i32* %16, align 4
  %58 = call i64 @mrb_nil_p(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @mrb_symbol(i32 %63)
  %65 = load i32, i32* %14, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @mrb_funcall_with_block(%struct.TYPE_13__* %61, i32 %62, i32 %64, i32 %65, i32* %66, i32 %67)
  store i32 %68, i32* %17, align 4
  br label %77

69:                                               ; preds = %56
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.RClass*, %struct.RClass** %13, align 8
  %76 = call i32 @mrb_yield_with_class(%struct.TYPE_13__* %70, i32 %71, i32 %72, i32* %73, i32 %74, %struct.RClass* %75)
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %69, %60
  br label %78

78:                                               ; preds = %77, %38
  %79 = load i32, i32* %18, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i32 %79, i32* %85, align 4
  %86 = load i32, i32* %17, align 4
  ret i32 %86
}

declare dso_local i32 @mrb_symbol(i32) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_ary_new_from_values(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @mrb_ary_unshift(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @mrb_funcall_argv(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @RARRAY_PTR(i32) #1

declare dso_local i32 @mrb_funcall_with_block(%struct.TYPE_13__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mrb_yield_with_class(%struct.TYPE_13__*, i32, i32, i32*, i32, %struct.RClass*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
