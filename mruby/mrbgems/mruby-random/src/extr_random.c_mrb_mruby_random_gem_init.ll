; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-random/src/extr_random.c_mrb_mruby_random_gem_init.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-random/src/extr_random.c_mrb_mruby_random_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.RClass*, %struct.RClass* }
%struct.RClass = type { i32 }

@ISTRUCT_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@random_f_rand = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"srand\00", align 1
@random_f_srand = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@MRB_TT_ISTRUCT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@random_m_init = common dso_local global i32 0, align 4
@random_m_rand = common dso_local global i32 0, align 4
@random_m_srand = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"shuffle\00", align 1
@mrb_ary_shuffle = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"shuffle!\00", align 1
@mrb_ary_shuffle_bang = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@mrb_ary_sample = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_random_gem_init(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.RClass*, align 8
  %4 = alloca %struct.RClass*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %7 = load %struct.RClass*, %struct.RClass** %6, align 8
  store %struct.RClass* %7, %struct.RClass** %4, align 8
  %8 = load i32, i32* @ISTRUCT_DATA_SIZE, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ule i64 4, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @mrb_assert(i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.RClass*, %struct.RClass** %15, align 8
  %17 = load i32, i32* @random_f_rand, align 4
  %18 = call i32 @MRB_ARGS_OPT(i32 1)
  %19 = call i32 @mrb_define_method(%struct.TYPE_9__* %13, %struct.RClass* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.RClass*, %struct.RClass** %22, align 8
  %24 = load i32, i32* @random_f_srand, align 4
  %25 = call i32 @MRB_ARGS_OPT(i32 1)
  %26 = call i32 @mrb_define_method(%struct.TYPE_9__* %20, %struct.RClass* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.RClass* @mrb_define_class(%struct.TYPE_9__* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  store %struct.RClass* %31, %struct.RClass** %3, align 8
  %32 = load %struct.RClass*, %struct.RClass** %3, align 8
  %33 = load i32, i32* @MRB_TT_ISTRUCT, align 4
  %34 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %32, i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = load %struct.RClass*, %struct.RClass** %3, align 8
  %37 = load i32, i32* @random_f_rand, align 4
  %38 = call i32 @MRB_ARGS_OPT(i32 1)
  %39 = call i32 @mrb_define_class_method(%struct.TYPE_9__* %35, %struct.RClass* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = load %struct.RClass*, %struct.RClass** %3, align 8
  %42 = load i32, i32* @random_f_srand, align 4
  %43 = call i32 @MRB_ARGS_OPT(i32 1)
  %44 = call i32 @mrb_define_class_method(%struct.TYPE_9__* %40, %struct.RClass* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = load %struct.RClass*, %struct.RClass** %3, align 8
  %47 = load i32, i32* @random_m_init, align 4
  %48 = call i32 @MRB_ARGS_OPT(i32 1)
  %49 = call i32 @mrb_define_method(%struct.TYPE_9__* %45, %struct.RClass* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = load %struct.RClass*, %struct.RClass** %3, align 8
  %52 = load i32, i32* @random_m_rand, align 4
  %53 = call i32 @MRB_ARGS_OPT(i32 1)
  %54 = call i32 @mrb_define_method(%struct.TYPE_9__* %50, %struct.RClass* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = load %struct.RClass*, %struct.RClass** %3, align 8
  %57 = load i32, i32* @random_m_srand, align 4
  %58 = call i32 @MRB_ARGS_OPT(i32 1)
  %59 = call i32 @mrb_define_method(%struct.TYPE_9__* %55, %struct.RClass* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = load %struct.RClass*, %struct.RClass** %4, align 8
  %62 = load i32, i32* @mrb_ary_shuffle, align 4
  %63 = call i32 @MRB_ARGS_OPT(i32 1)
  %64 = call i32 @mrb_define_method(%struct.TYPE_9__* %60, %struct.RClass* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = load %struct.RClass*, %struct.RClass** %4, align 8
  %67 = load i32, i32* @mrb_ary_shuffle_bang, align 4
  %68 = call i32 @MRB_ARGS_OPT(i32 1)
  %69 = call i32 @mrb_define_method(%struct.TYPE_9__* %65, %struct.RClass* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %71 = load %struct.RClass*, %struct.RClass** %4, align 8
  %72 = load i32, i32* @mrb_ary_sample, align 4
  %73 = call i32 @MRB_ARGS_OPT(i32 2)
  %74 = call i32 @mrb_define_method(%struct.TYPE_9__* %70, %struct.RClass* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = load %struct.RClass*, %struct.RClass** %3, align 8
  %77 = call i32 @mrb_obj_value(%struct.RClass* %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %79 = call i32 @mrb_intern_lit(%struct.TYPE_9__* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = load %struct.RClass*, %struct.RClass** %3, align 8
  %82 = call i32 @mrb_obj_new(%struct.TYPE_9__* %80, %struct.RClass* %81, i32 0, i32* null)
  %83 = call i32 @mrb_const_set(%struct.TYPE_9__* %75, i32 %77, i32 %79, i32 %82)
  ret void
}

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_9__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_define_class_method(%struct.TYPE_9__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @mrb_const_set(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @mrb_obj_new(%struct.TYPE_9__*, %struct.RClass*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
