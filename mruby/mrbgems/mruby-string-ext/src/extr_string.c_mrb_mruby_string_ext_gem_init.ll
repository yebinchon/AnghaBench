; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_mruby_string_ext_gem_init.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_mruby_string_ext_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.RClass* }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@mrb_str_dump = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"swapcase!\00", align 1
@mrb_str_swapcase_bang = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"swapcase\00", align 1
@mrb_str_swapcase = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@mrb_str_concat_m = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@mrb_str_count = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"tr\00", align 1
@mrb_str_tr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"tr!\00", align 1
@mrb_str_tr_bang = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"tr_s\00", align 1
@mrb_str_tr_s = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"tr_s!\00", align 1
@mrb_str_tr_s_bang = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"squeeze\00", align 1
@mrb_str_squeeze = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"squeeze!\00", align 1
@mrb_str_squeeze_bang = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@mrb_str_delete = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"delete!\00", align 1
@mrb_str_delete_bang = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"start_with?\00", align 1
@mrb_str_start_with = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"end_with?\00", align 1
@mrb_str_end_with = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@mrb_str_hex = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"oct\00", align 1
@mrb_str_oct = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"chr\00", align 1
@mrb_str_chr = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"succ\00", align 1
@mrb_str_succ = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"succ!\00", align 1
@mrb_str_succ_bang = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"next!\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"ord\00", align 1
@mrb_str_ord = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [15 x i8] c"delete_prefix!\00", align 1
@mrb_str_del_prefix_bang = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [14 x i8] c"delete_prefix\00", align 1
@mrb_str_del_prefix = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [15 x i8] c"delete_suffix!\00", align 1
@mrb_str_del_suffix_bang = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [14 x i8] c"delete_suffix\00", align 1
@mrb_str_del_suffix = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [8 x i8] c"__lines\00", align 1
@mrb_str_lines = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [9 x i8] c"Integral\00", align 1
@mrb_int_chr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_string_ext_gem_init(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.RClass*, %struct.RClass** %5, align 8
  store %struct.RClass* %6, %struct.RClass** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.RClass*, %struct.RClass** %3, align 8
  %9 = load i32, i32* @mrb_str_dump, align 4
  %10 = call i32 (...) @MRB_ARGS_NONE()
  %11 = call i32 @mrb_define_method(%struct.TYPE_5__* %7, %struct.RClass* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = load %struct.RClass*, %struct.RClass** %3, align 8
  %14 = load i32, i32* @mrb_str_swapcase_bang, align 4
  %15 = call i32 (...) @MRB_ARGS_NONE()
  %16 = call i32 @mrb_define_method(%struct.TYPE_5__* %12, %struct.RClass* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = load %struct.RClass*, %struct.RClass** %3, align 8
  %19 = load i32, i32* @mrb_str_swapcase, align 4
  %20 = call i32 (...) @MRB_ARGS_NONE()
  %21 = call i32 @mrb_define_method(%struct.TYPE_5__* %17, %struct.RClass* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = load %struct.RClass*, %struct.RClass** %3, align 8
  %24 = load i32, i32* @mrb_str_concat_m, align 4
  %25 = call i32 @MRB_ARGS_REQ(i32 1)
  %26 = call i32 @mrb_define_method(%struct.TYPE_5__* %22, %struct.RClass* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = load %struct.RClass*, %struct.RClass** %3, align 8
  %29 = load i32, i32* @mrb_str_concat_m, align 4
  %30 = call i32 @MRB_ARGS_REQ(i32 1)
  %31 = call i32 @mrb_define_method(%struct.TYPE_5__* %27, %struct.RClass* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = load %struct.RClass*, %struct.RClass** %3, align 8
  %34 = load i32, i32* @mrb_str_count, align 4
  %35 = call i32 @MRB_ARGS_REQ(i32 1)
  %36 = call i32 @mrb_define_method(%struct.TYPE_5__* %32, %struct.RClass* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = load %struct.RClass*, %struct.RClass** %3, align 8
  %39 = load i32, i32* @mrb_str_tr, align 4
  %40 = call i32 @MRB_ARGS_REQ(i32 2)
  %41 = call i32 @mrb_define_method(%struct.TYPE_5__* %37, %struct.RClass* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = load %struct.RClass*, %struct.RClass** %3, align 8
  %44 = load i32, i32* @mrb_str_tr_bang, align 4
  %45 = call i32 @MRB_ARGS_REQ(i32 2)
  %46 = call i32 @mrb_define_method(%struct.TYPE_5__* %42, %struct.RClass* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = load %struct.RClass*, %struct.RClass** %3, align 8
  %49 = load i32, i32* @mrb_str_tr_s, align 4
  %50 = call i32 @MRB_ARGS_REQ(i32 2)
  %51 = call i32 @mrb_define_method(%struct.TYPE_5__* %47, %struct.RClass* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = load %struct.RClass*, %struct.RClass** %3, align 8
  %54 = load i32, i32* @mrb_str_tr_s_bang, align 4
  %55 = call i32 @MRB_ARGS_REQ(i32 2)
  %56 = call i32 @mrb_define_method(%struct.TYPE_5__* %52, %struct.RClass* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = load %struct.RClass*, %struct.RClass** %3, align 8
  %59 = load i32, i32* @mrb_str_squeeze, align 4
  %60 = call i32 @MRB_ARGS_OPT(i32 1)
  %61 = call i32 @mrb_define_method(%struct.TYPE_5__* %57, %struct.RClass* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %63 = load %struct.RClass*, %struct.RClass** %3, align 8
  %64 = load i32, i32* @mrb_str_squeeze_bang, align 4
  %65 = call i32 @MRB_ARGS_OPT(i32 1)
  %66 = call i32 @mrb_define_method(%struct.TYPE_5__* %62, %struct.RClass* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = load %struct.RClass*, %struct.RClass** %3, align 8
  %69 = load i32, i32* @mrb_str_delete, align 4
  %70 = call i32 @MRB_ARGS_REQ(i32 1)
  %71 = call i32 @mrb_define_method(%struct.TYPE_5__* %67, %struct.RClass* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = load %struct.RClass*, %struct.RClass** %3, align 8
  %74 = load i32, i32* @mrb_str_delete_bang, align 4
  %75 = call i32 @MRB_ARGS_REQ(i32 1)
  %76 = call i32 @mrb_define_method(%struct.TYPE_5__* %72, %struct.RClass* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %78 = load %struct.RClass*, %struct.RClass** %3, align 8
  %79 = load i32, i32* @mrb_str_start_with, align 4
  %80 = call i32 (...) @MRB_ARGS_REST()
  %81 = call i32 @mrb_define_method(%struct.TYPE_5__* %77, %struct.RClass* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %83 = load %struct.RClass*, %struct.RClass** %3, align 8
  %84 = load i32, i32* @mrb_str_end_with, align 4
  %85 = call i32 (...) @MRB_ARGS_REST()
  %86 = call i32 @mrb_define_method(%struct.TYPE_5__* %82, %struct.RClass* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %88 = load %struct.RClass*, %struct.RClass** %3, align 8
  %89 = load i32, i32* @mrb_str_hex, align 4
  %90 = call i32 (...) @MRB_ARGS_NONE()
  %91 = call i32 @mrb_define_method(%struct.TYPE_5__* %87, %struct.RClass* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %93 = load %struct.RClass*, %struct.RClass** %3, align 8
  %94 = load i32, i32* @mrb_str_oct, align 4
  %95 = call i32 (...) @MRB_ARGS_NONE()
  %96 = call i32 @mrb_define_method(%struct.TYPE_5__* %92, %struct.RClass* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = load %struct.RClass*, %struct.RClass** %3, align 8
  %99 = load i32, i32* @mrb_str_chr, align 4
  %100 = call i32 (...) @MRB_ARGS_NONE()
  %101 = call i32 @mrb_define_method(%struct.TYPE_5__* %97, %struct.RClass* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %103 = load %struct.RClass*, %struct.RClass** %3, align 8
  %104 = load i32, i32* @mrb_str_succ, align 4
  %105 = call i32 (...) @MRB_ARGS_NONE()
  %106 = call i32 @mrb_define_method(%struct.TYPE_5__* %102, %struct.RClass* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = load %struct.RClass*, %struct.RClass** %3, align 8
  %109 = load i32, i32* @mrb_str_succ_bang, align 4
  %110 = call i32 (...) @MRB_ARGS_NONE()
  %111 = call i32 @mrb_define_method(%struct.TYPE_5__* %107, %struct.RClass* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %113 = load %struct.RClass*, %struct.RClass** %3, align 8
  %114 = load i32, i32* @mrb_str_succ, align 4
  %115 = call i32 (...) @MRB_ARGS_NONE()
  %116 = call i32 @mrb_define_method(%struct.TYPE_5__* %112, %struct.RClass* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %118 = load %struct.RClass*, %struct.RClass** %3, align 8
  %119 = load i32, i32* @mrb_str_succ_bang, align 4
  %120 = call i32 (...) @MRB_ARGS_NONE()
  %121 = call i32 @mrb_define_method(%struct.TYPE_5__* %117, %struct.RClass* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %123 = load %struct.RClass*, %struct.RClass** %3, align 8
  %124 = load i32, i32* @mrb_str_ord, align 4
  %125 = call i32 (...) @MRB_ARGS_NONE()
  %126 = call i32 @mrb_define_method(%struct.TYPE_5__* %122, %struct.RClass* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %128 = load %struct.RClass*, %struct.RClass** %3, align 8
  %129 = load i32, i32* @mrb_str_del_prefix_bang, align 4
  %130 = call i32 @MRB_ARGS_REQ(i32 1)
  %131 = call i32 @mrb_define_method(%struct.TYPE_5__* %127, %struct.RClass* %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %133 = load %struct.RClass*, %struct.RClass** %3, align 8
  %134 = load i32, i32* @mrb_str_del_prefix, align 4
  %135 = call i32 @MRB_ARGS_REQ(i32 1)
  %136 = call i32 @mrb_define_method(%struct.TYPE_5__* %132, %struct.RClass* %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %138 = load %struct.RClass*, %struct.RClass** %3, align 8
  %139 = load i32, i32* @mrb_str_del_suffix_bang, align 4
  %140 = call i32 @MRB_ARGS_REQ(i32 1)
  %141 = call i32 @mrb_define_method(%struct.TYPE_5__* %137, %struct.RClass* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %143 = load %struct.RClass*, %struct.RClass** %3, align 8
  %144 = load i32, i32* @mrb_str_del_suffix, align 4
  %145 = call i32 @MRB_ARGS_REQ(i32 1)
  %146 = call i32 @mrb_define_method(%struct.TYPE_5__* %142, %struct.RClass* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %148 = load %struct.RClass*, %struct.RClass** %3, align 8
  %149 = load i32, i32* @mrb_str_lines, align 4
  %150 = call i32 (...) @MRB_ARGS_NONE()
  %151 = call i32 @mrb_define_method(%struct.TYPE_5__* %147, %struct.RClass* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %154 = call %struct.RClass* @mrb_module_get(%struct.TYPE_5__* %153, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  %155 = load i32, i32* @mrb_int_chr, align 4
  %156 = call i32 @MRB_ARGS_OPT(i32 1)
  %157 = call i32 @mrb_define_method(%struct.TYPE_5__* %152, %struct.RClass* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %155, i32 %156)
  ret void
}

declare dso_local i32 @mrb_define_method(%struct.TYPE_5__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @MRB_ARGS_REST(...) #1

declare dso_local %struct.RClass* @mrb_module_get(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
