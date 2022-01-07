; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_make_struct.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_make_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"identifier %v needs to be constant\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"redefining constant Struct::%v\00", align 1
@MRB_TT_ARRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"__members__\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@mrb_instance_new = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"members\00", align 1
@mrb_struct_s_members_m = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, %struct.RClass*)* @make_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_struct(i32* %0, i32 %1, i32 %2, %struct.RClass* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.RClass*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.RClass*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.RClass* %3, %struct.RClass** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @mrb_nil_p(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.RClass*, %struct.RClass** %8, align 8
  %18 = call %struct.RClass* @mrb_class_new(i32* %16, %struct.RClass* %17)
  store %struct.RClass* %18, %struct.RClass** %11, align 8
  br label %61

19:                                               ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @mrb_to_str(i32* %20, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @mrb_obj_to_sym(i32* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @RSTRING_PTR(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @RSTRING_LEN(i32 %29)
  %31 = call i32 @mrb_const_name_p(i32* %26, i32 %28, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %19
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @mrb_name_error(i32* %34, i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %19
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.RClass*, %struct.RClass** %8, align 8
  %41 = call i32 @mrb_obj_value(%struct.RClass* %40)
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @mrb_const_defined_at(i32* %39, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @mrb_warn(i32* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.RClass*, %struct.RClass** %8, align 8
  %51 = call i32 @mrb_obj_value(%struct.RClass* %50)
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @mrb_const_remove(i32* %49, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %38
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.RClass*, %struct.RClass** %8, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @RSTRING_PTR(i32 %57)
  %59 = load %struct.RClass*, %struct.RClass** %8, align 8
  %60 = call %struct.RClass* @mrb_define_class_under(i32* %55, %struct.RClass* %56, i32 %58, %struct.RClass* %59)
  store %struct.RClass* %60, %struct.RClass** %11, align 8
  br label %61

61:                                               ; preds = %54, %15
  %62 = load %struct.RClass*, %struct.RClass** %11, align 8
  %63 = load i32, i32* @MRB_TT_ARRAY, align 4
  %64 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %62, i32 %63)
  %65 = load %struct.RClass*, %struct.RClass** %11, align 8
  %66 = call i32 @mrb_obj_value(%struct.RClass* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @mrb_intern_lit(i32* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @mrb_iv_set(i32* %67, i32 %68, i32 %70, i32 %71)
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.RClass*, %struct.RClass** %11, align 8
  %75 = load i32, i32* @mrb_instance_new, align 4
  %76 = call i32 (...) @MRB_ARGS_ANY()
  %77 = call i32 @mrb_define_class_method(i32* %73, %struct.RClass* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.RClass*, %struct.RClass** %11, align 8
  %80 = load i32, i32* @mrb_instance_new, align 4
  %81 = call i32 (...) @MRB_ARGS_ANY()
  %82 = call i32 @mrb_define_class_method(i32* %78, %struct.RClass* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.RClass*, %struct.RClass** %11, align 8
  %85 = load i32, i32* @mrb_struct_s_members_m, align 4
  %86 = call i32 (...) @MRB_ARGS_NONE()
  %87 = call i32 @mrb_define_class_method(i32* %83, %struct.RClass* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.RClass*, %struct.RClass** %11, align 8
  %91 = call i32 @make_struct_define_accessors(i32* %88, i32 %89, %struct.RClass* %90)
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local %struct.RClass* @mrb_class_new(i32*, %struct.RClass*) #1

declare dso_local i32 @mrb_to_str(i32*, i32) #1

declare dso_local i32 @mrb_obj_to_sym(i32*, i32) #1

declare dso_local i32 @mrb_const_name_p(i32*, i32, i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_name_error(i32*, i32, i8*, i32) #1

declare dso_local i64 @mrb_const_defined_at(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @mrb_warn(i32*, i8*, i32) #1

declare dso_local i32 @mrb_const_remove(i32*, i32, i32) #1

declare dso_local %struct.RClass* @mrb_define_class_under(i32*, %struct.RClass*, i32, %struct.RClass*) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_iv_set(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_define_class_method(i32*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_ANY(...) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @make_struct_define_accessors(i32*, i32, %struct.RClass*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
