; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_class.c_mrb_vm_define_class.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_class.c_mrb_vm_define_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }

@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"superclass must be a Class (%!v given)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%!v is not a class\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"superclass mismatch for class %v\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.RClass* @mrb_vm_define_class(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.RClass*, align 8
  %11 = alloca %struct.RClass*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @mrb_nil_p(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @mrb_class_p(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @E_TYPE_ERROR, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @mrb_raisef(i32* %21, i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.RClass* @mrb_class_ptr(i32 %26)
  store %struct.RClass* %27, %struct.RClass** %10, align 8
  br label %29

28:                                               ; preds = %4
  store %struct.RClass* null, %struct.RClass** %10, align 8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @check_if_class_or_module(i32* %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @mrb_const_defined_at(i32* %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %29
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @mrb_const_get(i32* %39, i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @mrb_class_p(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @E_TYPE_ERROR, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @mrb_raisef(i32* %47, i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %38
  %52 = load i32, i32* %12, align 4
  %53 = call %struct.RClass* @mrb_class_ptr(i32 %52)
  store %struct.RClass* %53, %struct.RClass** %11, align 8
  %54 = load %struct.RClass*, %struct.RClass** %10, align 8
  %55 = icmp ne %struct.RClass* %54, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.RClass*, %struct.RClass** %11, align 8
  %58 = getelementptr inbounds %struct.RClass, %struct.RClass* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.RClass* @mrb_class_real(i32 %59)
  %61 = load %struct.RClass*, %struct.RClass** %10, align 8
  %62 = icmp ne %struct.RClass* %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @E_TYPE_ERROR, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @mrb_raisef(i32* %64, i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %63, %56
  br label %69

69:                                               ; preds = %68, %51
  %70 = load %struct.RClass*, %struct.RClass** %11, align 8
  store %struct.RClass* %70, %struct.RClass** %5, align 8
  br label %86

71:                                               ; preds = %29
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.RClass*, %struct.RClass** %10, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call %struct.RClass* @mrb_class_ptr(i32 %75)
  %77 = call %struct.RClass* @define_class(i32* %72, i32 %73, %struct.RClass* %74, %struct.RClass* %76)
  store %struct.RClass* %77, %struct.RClass** %11, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.RClass*, %struct.RClass** %11, align 8
  %80 = getelementptr inbounds %struct.RClass, %struct.RClass* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.RClass* @mrb_class_real(i32 %81)
  %83 = load %struct.RClass*, %struct.RClass** %11, align 8
  %84 = call i32 @mrb_class_inherited(i32* %78, %struct.RClass* %82, %struct.RClass* %83)
  %85 = load %struct.RClass*, %struct.RClass** %11, align 8
  store %struct.RClass* %85, %struct.RClass** %5, align 8
  br label %86

86:                                               ; preds = %71, %69
  %87 = load %struct.RClass*, %struct.RClass** %5, align 8
  ret %struct.RClass* %87
}

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_class_p(i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local %struct.RClass* @mrb_class_ptr(i32) #1

declare dso_local i32 @check_if_class_or_module(i32*, i32) #1

declare dso_local i64 @mrb_const_defined_at(i32*, i32, i32) #1

declare dso_local i32 @mrb_const_get(i32*, i32, i32) #1

declare dso_local %struct.RClass* @mrb_class_real(i32) #1

declare dso_local %struct.RClass* @define_class(i32*, i32, %struct.RClass*, %struct.RClass*) #1

declare dso_local i32 @mrb_class_inherited(i32*, %struct.RClass*, %struct.RClass*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
