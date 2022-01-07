; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-complex/src/extr_complex.c_mrb_mruby_complex_gem_init.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-complex/src/extr_complex.c_mrb_mruby_complex_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.RClass* }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Complex\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Numeric\00", align 1
@MRB_TT_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"rectangular\00", align 1
@complex_s_rect = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@complex_real = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"imaginary\00", align 1
@complex_imaginary = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"to_f\00", align 1
@complex_to_f = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"to_i\00", align 1
@complex_to_i = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"to_c\00", align 1
@complex_to_c = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"__div__\00", align 1
@complex_div = common dso_local global i32 0, align 4
@ISTRUCT_DATA_SIZE = common dso_local global i32 0, align 4
@MRB_TT_ISTRUCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_complex_gem_init(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = call i32 @mrb_class_get(%struct.TYPE_8__* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %7 = call %struct.RClass* @mrb_define_class(%struct.TYPE_8__* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %6)
  store %struct.RClass* %7, %struct.RClass** %3, align 8
  %8 = load %struct.RClass*, %struct.RClass** %3, align 8
  %9 = load i32, i32* @MRB_TT_DATA, align 4
  %10 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %8, i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = load %struct.RClass*, %struct.RClass** %3, align 8
  %13 = call i32 @mrb_undef_class_method(%struct.TYPE_8__* %11, %struct.RClass* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = load %struct.RClass*, %struct.RClass** %3, align 8
  %16 = load i32, i32* @complex_s_rect, align 4
  %17 = call i32 @MRB_ARGS_REQ(i32 1)
  %18 = call i32 @MRB_ARGS_OPT(i32 1)
  %19 = or i32 %17, %18
  %20 = call i32 @mrb_define_class_method(%struct.TYPE_8__* %14, %struct.RClass* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = load %struct.RClass*, %struct.RClass** %3, align 8
  %23 = load i32, i32* @complex_s_rect, align 4
  %24 = call i32 @MRB_ARGS_REQ(i32 1)
  %25 = call i32 @MRB_ARGS_OPT(i32 1)
  %26 = or i32 %24, %25
  %27 = call i32 @mrb_define_class_method(%struct.TYPE_8__* %21, %struct.RClass* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.RClass*, %struct.RClass** %30, align 8
  %32 = load i32, i32* @complex_s_rect, align 4
  %33 = call i32 @MRB_ARGS_REQ(i32 1)
  %34 = call i32 @MRB_ARGS_OPT(i32 1)
  %35 = or i32 %33, %34
  %36 = call i32 @mrb_define_method(%struct.TYPE_8__* %28, %struct.RClass* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = load %struct.RClass*, %struct.RClass** %3, align 8
  %39 = load i32, i32* @complex_real, align 4
  %40 = call i32 (...) @MRB_ARGS_NONE()
  %41 = call i32 @mrb_define_method(%struct.TYPE_8__* %37, %struct.RClass* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = load %struct.RClass*, %struct.RClass** %3, align 8
  %44 = load i32, i32* @complex_imaginary, align 4
  %45 = call i32 (...) @MRB_ARGS_NONE()
  %46 = call i32 @mrb_define_method(%struct.TYPE_8__* %42, %struct.RClass* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = load %struct.RClass*, %struct.RClass** %3, align 8
  %49 = load i32, i32* @complex_to_f, align 4
  %50 = call i32 (...) @MRB_ARGS_NONE()
  %51 = call i32 @mrb_define_method(%struct.TYPE_8__* %47, %struct.RClass* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = load %struct.RClass*, %struct.RClass** %3, align 8
  %54 = load i32, i32* @complex_to_i, align 4
  %55 = call i32 (...) @MRB_ARGS_NONE()
  %56 = call i32 @mrb_define_method(%struct.TYPE_8__* %52, %struct.RClass* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = load %struct.RClass*, %struct.RClass** %3, align 8
  %59 = load i32, i32* @complex_to_c, align 4
  %60 = call i32 (...) @MRB_ARGS_NONE()
  %61 = call i32 @mrb_define_method(%struct.TYPE_8__* %57, %struct.RClass* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = load %struct.RClass*, %struct.RClass** %3, align 8
  %64 = load i32, i32* @complex_div, align 4
  %65 = call i32 @MRB_ARGS_REQ(i32 1)
  %66 = call i32 @mrb_define_method(%struct.TYPE_8__* %62, %struct.RClass* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %64, i32 %65)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @mrb_class_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_undef_class_method(%struct.TYPE_8__*, %struct.RClass*, i8*) #1

declare dso_local i32 @mrb_define_class_method(%struct.TYPE_8__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_8__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
