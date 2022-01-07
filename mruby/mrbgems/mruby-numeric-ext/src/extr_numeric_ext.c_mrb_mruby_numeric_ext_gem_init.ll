; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-numeric-ext/src/extr_numeric_ext.c_mrb_mruby_numeric_ext_gem_init.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-numeric-ext/src/extr_numeric_ext.c_mrb_mruby_numeric_ext_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Integral\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"allbits?\00", align 1
@mrb_int_allbits = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"anybits?\00", align 1
@mrb_int_anybits = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"nobits?\00", align 1
@mrb_int_nobits = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"RADIX\00", align 1
@MRB_FLT_RADIX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"MANT_DIG\00", align 1
@MRB_FLT_MANT_DIG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"EPSILON\00", align 1
@MRB_FLT_EPSILON = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"DIG\00", align 1
@MRB_FLT_DIG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"MIN_EXP\00", align 1
@MRB_FLT_MIN_EXP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"MIN\00", align 1
@MRB_FLT_MIN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"MIN_10_EXP\00", align 1
@MRB_FLT_MIN_10_EXP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"MAX_EXP\00", align 1
@MRB_FLT_MAX_EXP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"MAX\00", align 1
@MRB_FLT_MAX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"MAX_10_EXP\00", align 1
@MRB_FLT_MAX_10_EXP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_numeric_ext_gem_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = call %struct.RClass* @mrb_module_get(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %5, %struct.RClass** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.RClass*, %struct.RClass** %3, align 8
  %8 = load i32, i32* @mrb_int_allbits, align 4
  %9 = call i32 @MRB_ARGS_REQ(i32 1)
  %10 = call i32 @mrb_define_method(%struct.TYPE_7__* %6, %struct.RClass* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = load %struct.RClass*, %struct.RClass** %3, align 8
  %13 = load i32, i32* @mrb_int_anybits, align 4
  %14 = call i32 @MRB_ARGS_REQ(i32 1)
  %15 = call i32 @mrb_define_method(%struct.TYPE_7__* %11, %struct.RClass* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = load %struct.RClass*, %struct.RClass** %3, align 8
  %18 = load i32, i32* @mrb_int_nobits, align 4
  %19 = call i32 @MRB_ARGS_REQ(i32 1)
  %20 = call i32 @mrb_define_method(%struct.TYPE_7__* %16, %struct.RClass* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MRB_FLT_RADIX, align 4
  %26 = call i32 @mrb_fixnum_value(i32 %25)
  %27 = call i32 @mrb_define_const(%struct.TYPE_7__* %21, i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MRB_FLT_MANT_DIG, align 4
  %33 = call i32 @mrb_fixnum_value(i32 %32)
  %34 = call i32 @mrb_define_const(%struct.TYPE_7__* %28, i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = load i32, i32* @MRB_FLT_EPSILON, align 4
  %41 = call i32 @mrb_float_value(%struct.TYPE_7__* %39, i32 %40)
  %42 = call i32 @mrb_define_const(%struct.TYPE_7__* %35, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MRB_FLT_DIG, align 4
  %48 = call i32 @mrb_fixnum_value(i32 %47)
  %49 = call i32 @mrb_define_const(%struct.TYPE_7__* %43, i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MRB_FLT_MIN_EXP, align 4
  %55 = call i32 @mrb_fixnum_value(i32 %54)
  %56 = call i32 @mrb_define_const(%struct.TYPE_7__* %50, i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = load i32, i32* @MRB_FLT_MIN, align 4
  %63 = call i32 @mrb_float_value(%struct.TYPE_7__* %61, i32 %62)
  %64 = call i32 @mrb_define_const(%struct.TYPE_7__* %57, i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MRB_FLT_MIN_10_EXP, align 4
  %70 = call i32 @mrb_fixnum_value(i32 %69)
  %71 = call i32 @mrb_define_const(%struct.TYPE_7__* %65, i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MRB_FLT_MAX_EXP, align 4
  %77 = call i32 @mrb_fixnum_value(i32 %76)
  %78 = call i32 @mrb_define_const(%struct.TYPE_7__* %72, i32 %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %84 = load i32, i32* @MRB_FLT_MAX, align 4
  %85 = call i32 @mrb_float_value(%struct.TYPE_7__* %83, i32 %84)
  %86 = call i32 @mrb_define_const(%struct.TYPE_7__* %79, i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MRB_FLT_MAX_10_EXP, align 4
  %92 = call i32 @mrb_fixnum_value(i32 %91)
  %93 = call i32 @mrb_define_const(%struct.TYPE_7__* %87, i32 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %92)
  ret void
}

declare dso_local %struct.RClass* @mrb_module_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_7__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @mrb_define_const(%struct.TYPE_7__*, i32, i8*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_float_value(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
