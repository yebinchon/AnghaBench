; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_class.c_mrb_class_name_class.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_class.c_mrb_class_name_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.RClass* }
%struct.RClass = type { i32 }
%struct.RObject = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"__classname__\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"__outer__\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"::\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_class_name_class(%struct.TYPE_10__* %0, %struct.RClass* %1, %struct.RClass* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.RClass*, align 8
  %7 = alloca %struct.RClass*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.RClass* %1, %struct.RClass** %6, align 8
  store %struct.RClass* %2, %struct.RClass** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = call i32 @mrb_intern_lit(%struct.TYPE_10__* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %10, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = load %struct.RClass*, %struct.RClass** %7, align 8
  %17 = bitcast %struct.RClass* %16 to %struct.RObject*
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @mrb_obj_iv_defined(%struct.TYPE_10__* %15, %struct.RObject* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %81

22:                                               ; preds = %4
  %23 = load %struct.RClass*, %struct.RClass** %6, align 8
  %24 = icmp eq %struct.RClass* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load %struct.RClass*, %struct.RClass** %6, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.RClass*, %struct.RClass** %28, align 8
  %30 = icmp eq %struct.RClass* %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @mrb_symbol_value(i32 %32)
  store i32 %33, i32* %9, align 4
  br label %74

34:                                               ; preds = %25
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = load %struct.RClass*, %struct.RClass** %6, align 8
  %37 = call i32 @mrb_class_path(%struct.TYPE_10__* %35, %struct.RClass* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @mrb_nil_p(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %34
  %42 = load %struct.RClass*, %struct.RClass** %6, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.RClass*, %struct.RClass** %44, align 8
  %46 = icmp ne %struct.RClass* %42, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.RClass*, %struct.RClass** %6, align 8
  %49 = load %struct.RClass*, %struct.RClass** %7, align 8
  %50 = icmp ne %struct.RClass* %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = load %struct.RClass*, %struct.RClass** %7, align 8
  %54 = bitcast %struct.RClass* %53 to %struct.RObject*
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = call i32 @mrb_intern_lit(%struct.TYPE_10__* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.RClass*, %struct.RClass** %6, align 8
  %58 = call i32 @mrb_obj_value(%struct.RClass* %57)
  %59 = call i32 @mrb_obj_iv_set_force(%struct.TYPE_10__* %52, %struct.RObject* %54, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %51, %47, %41
  br label %81

61:                                               ; preds = %34
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i8* @mrb_sym_name_len(%struct.TYPE_10__* %62, i32 %63, i32* %11)
  store i8* %64, i8** %12, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @mrb_str_cat_lit(%struct.TYPE_10__* %65, i32 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @mrb_str_cat(%struct.TYPE_10__* %68, i32 %69, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %31
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = load %struct.RClass*, %struct.RClass** %7, align 8
  %77 = bitcast %struct.RClass* %76 to %struct.RObject*
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @mrb_obj_iv_set_force(%struct.TYPE_10__* %75, %struct.RObject* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %60, %21
  ret void
}

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @mrb_obj_iv_defined(%struct.TYPE_10__*, %struct.RObject*, i32) #1

declare dso_local i32 @mrb_symbol_value(i32) #1

declare dso_local i32 @mrb_class_path(%struct.TYPE_10__*, %struct.RClass*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_obj_iv_set_force(%struct.TYPE_10__*, %struct.RObject*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i8* @mrb_sym_name_len(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @mrb_str_cat_lit(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @mrb_str_cat(%struct.TYPE_10__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
