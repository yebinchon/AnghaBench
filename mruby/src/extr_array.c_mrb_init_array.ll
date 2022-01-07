; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_array.c_mrb_init_array.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_array.c_mrb_init_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.RClass* }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@MRB_TT_ARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@mrb_ary_s_create = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@mrb_ary_plus = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@mrb_ary_times = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@mrb_ary_push_m = common dso_local global i32 0, align 4
@mrb_ary_aget = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"[]=\00", align 1
@mrb_ary_aset = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@mrb_ary_clear_m = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@mrb_ary_concat_m = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"delete_at\00", align 1
@mrb_ary_delete_at = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"empty?\00", align 1
@mrb_ary_empty_p = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@mrb_ary_first = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@mrb_ary_index_m = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"initialize_copy\00", align 1
@mrb_ary_replace_m = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@mrb_ary_join_m = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@mrb_ary_last = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@mrb_ary_size = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@mrb_ary_pop = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@mrb_ary_reverse = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"reverse!\00", align 1
@mrb_ary_reverse_bang = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"rindex\00", align 1
@mrb_ary_rindex_m = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@mrb_ary_shift = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"slice\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"unshift\00", align 1
@mrb_ary_unshift_m = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"__ary_eq\00", align 1
@mrb_ary_eq = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"__ary_cmp\00", align 1
@mrb_ary_cmp = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"__ary_index\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"__svalue\00", align 1
@mrb_ary_svalue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_init_array(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.RClass* @mrb_define_class(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7)
  store %struct.RClass* %8, %struct.RClass** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store %struct.RClass* %8, %struct.RClass** %10, align 8
  %11 = load %struct.RClass*, %struct.RClass** %3, align 8
  %12 = load i32, i32* @MRB_TT_ARRAY, align 4
  %13 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %11, i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = load %struct.RClass*, %struct.RClass** %3, align 8
  %16 = load i32, i32* @mrb_ary_s_create, align 4
  %17 = call i32 (...) @MRB_ARGS_ANY()
  %18 = call i32 @mrb_define_class_method(%struct.TYPE_7__* %14, %struct.RClass* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = load %struct.RClass*, %struct.RClass** %3, align 8
  %21 = load i32, i32* @mrb_ary_plus, align 4
  %22 = call i32 @MRB_ARGS_REQ(i32 1)
  %23 = call i32 @mrb_define_method(%struct.TYPE_7__* %19, %struct.RClass* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = load %struct.RClass*, %struct.RClass** %3, align 8
  %26 = load i32, i32* @mrb_ary_times, align 4
  %27 = call i32 @MRB_ARGS_REQ(i32 1)
  %28 = call i32 @mrb_define_method(%struct.TYPE_7__* %24, %struct.RClass* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = load %struct.RClass*, %struct.RClass** %3, align 8
  %31 = load i32, i32* @mrb_ary_push_m, align 4
  %32 = call i32 @MRB_ARGS_REQ(i32 1)
  %33 = call i32 @mrb_define_method(%struct.TYPE_7__* %29, %struct.RClass* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = load %struct.RClass*, %struct.RClass** %3, align 8
  %36 = load i32, i32* @mrb_ary_aget, align 4
  %37 = call i32 @MRB_ARGS_ARG(i32 1, i32 1)
  %38 = call i32 @mrb_define_method(%struct.TYPE_7__* %34, %struct.RClass* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = load %struct.RClass*, %struct.RClass** %3, align 8
  %41 = load i32, i32* @mrb_ary_aset, align 4
  %42 = call i32 @MRB_ARGS_ARG(i32 2, i32 1)
  %43 = call i32 @mrb_define_method(%struct.TYPE_7__* %39, %struct.RClass* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = load %struct.RClass*, %struct.RClass** %3, align 8
  %46 = load i32, i32* @mrb_ary_clear_m, align 4
  %47 = call i32 (...) @MRB_ARGS_NONE()
  %48 = call i32 @mrb_define_method(%struct.TYPE_7__* %44, %struct.RClass* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = load %struct.RClass*, %struct.RClass** %3, align 8
  %51 = load i32, i32* @mrb_ary_concat_m, align 4
  %52 = call i32 @MRB_ARGS_REQ(i32 1)
  %53 = call i32 @mrb_define_method(%struct.TYPE_7__* %49, %struct.RClass* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = load %struct.RClass*, %struct.RClass** %3, align 8
  %56 = load i32, i32* @mrb_ary_delete_at, align 4
  %57 = call i32 @MRB_ARGS_REQ(i32 1)
  %58 = call i32 @mrb_define_method(%struct.TYPE_7__* %54, %struct.RClass* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = load %struct.RClass*, %struct.RClass** %3, align 8
  %61 = load i32, i32* @mrb_ary_empty_p, align 4
  %62 = call i32 (...) @MRB_ARGS_NONE()
  %63 = call i32 @mrb_define_method(%struct.TYPE_7__* %59, %struct.RClass* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = load %struct.RClass*, %struct.RClass** %3, align 8
  %66 = load i32, i32* @mrb_ary_first, align 4
  %67 = call i32 @MRB_ARGS_OPT(i32 1)
  %68 = call i32 @mrb_define_method(%struct.TYPE_7__* %64, %struct.RClass* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = load %struct.RClass*, %struct.RClass** %3, align 8
  %71 = load i32, i32* @mrb_ary_index_m, align 4
  %72 = call i32 @MRB_ARGS_REQ(i32 1)
  %73 = call i32 @mrb_define_method(%struct.TYPE_7__* %69, %struct.RClass* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %75 = load %struct.RClass*, %struct.RClass** %3, align 8
  %76 = load i32, i32* @mrb_ary_replace_m, align 4
  %77 = call i32 @MRB_ARGS_REQ(i32 1)
  %78 = call i32 @mrb_define_method(%struct.TYPE_7__* %74, %struct.RClass* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = load %struct.RClass*, %struct.RClass** %3, align 8
  %81 = load i32, i32* @mrb_ary_join_m, align 4
  %82 = call i32 @MRB_ARGS_OPT(i32 1)
  %83 = call i32 @mrb_define_method(%struct.TYPE_7__* %79, %struct.RClass* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %85 = load %struct.RClass*, %struct.RClass** %3, align 8
  %86 = load i32, i32* @mrb_ary_last, align 4
  %87 = call i32 @MRB_ARGS_OPT(i32 1)
  %88 = call i32 @mrb_define_method(%struct.TYPE_7__* %84, %struct.RClass* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %90 = load %struct.RClass*, %struct.RClass** %3, align 8
  %91 = load i32, i32* @mrb_ary_size, align 4
  %92 = call i32 (...) @MRB_ARGS_NONE()
  %93 = call i32 @mrb_define_method(%struct.TYPE_7__* %89, %struct.RClass* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %95 = load %struct.RClass*, %struct.RClass** %3, align 8
  %96 = load i32, i32* @mrb_ary_pop, align 4
  %97 = call i32 (...) @MRB_ARGS_NONE()
  %98 = call i32 @mrb_define_method(%struct.TYPE_7__* %94, %struct.RClass* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %100 = load %struct.RClass*, %struct.RClass** %3, align 8
  %101 = load i32, i32* @mrb_ary_push_m, align 4
  %102 = call i32 (...) @MRB_ARGS_ANY()
  %103 = call i32 @mrb_define_method(%struct.TYPE_7__* %99, %struct.RClass* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %105 = load %struct.RClass*, %struct.RClass** %3, align 8
  %106 = load i32, i32* @mrb_ary_replace_m, align 4
  %107 = call i32 @MRB_ARGS_REQ(i32 1)
  %108 = call i32 @mrb_define_method(%struct.TYPE_7__* %104, %struct.RClass* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = load %struct.RClass*, %struct.RClass** %3, align 8
  %111 = load i32, i32* @mrb_ary_reverse, align 4
  %112 = call i32 (...) @MRB_ARGS_NONE()
  %113 = call i32 @mrb_define_method(%struct.TYPE_7__* %109, %struct.RClass* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %115 = load %struct.RClass*, %struct.RClass** %3, align 8
  %116 = load i32, i32* @mrb_ary_reverse_bang, align 4
  %117 = call i32 (...) @MRB_ARGS_NONE()
  %118 = call i32 @mrb_define_method(%struct.TYPE_7__* %114, %struct.RClass* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %120 = load %struct.RClass*, %struct.RClass** %3, align 8
  %121 = load i32, i32* @mrb_ary_rindex_m, align 4
  %122 = call i32 @MRB_ARGS_REQ(i32 1)
  %123 = call i32 @mrb_define_method(%struct.TYPE_7__* %119, %struct.RClass* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %125 = load %struct.RClass*, %struct.RClass** %3, align 8
  %126 = load i32, i32* @mrb_ary_shift, align 4
  %127 = call i32 (...) @MRB_ARGS_NONE()
  %128 = call i32 @mrb_define_method(%struct.TYPE_7__* %124, %struct.RClass* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %130 = load %struct.RClass*, %struct.RClass** %3, align 8
  %131 = load i32, i32* @mrb_ary_size, align 4
  %132 = call i32 (...) @MRB_ARGS_NONE()
  %133 = call i32 @mrb_define_method(%struct.TYPE_7__* %129, %struct.RClass* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %131, i32 %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %135 = load %struct.RClass*, %struct.RClass** %3, align 8
  %136 = load i32, i32* @mrb_ary_aget, align 4
  %137 = call i32 @MRB_ARGS_ARG(i32 1, i32 1)
  %138 = call i32 @mrb_define_method(%struct.TYPE_7__* %134, %struct.RClass* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32 %136, i32 %137)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %140 = load %struct.RClass*, %struct.RClass** %3, align 8
  %141 = load i32, i32* @mrb_ary_unshift_m, align 4
  %142 = call i32 (...) @MRB_ARGS_ANY()
  %143 = call i32 @mrb_define_method(%struct.TYPE_7__* %139, %struct.RClass* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 %141, i32 %142)
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %145 = load %struct.RClass*, %struct.RClass** %3, align 8
  %146 = load i32, i32* @mrb_ary_eq, align 4
  %147 = call i32 @MRB_ARGS_REQ(i32 1)
  %148 = call i32 @mrb_define_method(%struct.TYPE_7__* %144, %struct.RClass* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %150 = load %struct.RClass*, %struct.RClass** %3, align 8
  %151 = load i32, i32* @mrb_ary_cmp, align 4
  %152 = call i32 @MRB_ARGS_REQ(i32 1)
  %153 = call i32 @mrb_define_method(%struct.TYPE_7__* %149, %struct.RClass* %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i32 %151, i32 %152)
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %155 = load %struct.RClass*, %struct.RClass** %3, align 8
  %156 = load i32, i32* @mrb_ary_index_m, align 4
  %157 = call i32 @MRB_ARGS_REQ(i32 1)
  %158 = call i32 @mrb_define_method(%struct.TYPE_7__* %154, %struct.RClass* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 %156, i32 %157)
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %160 = load %struct.RClass*, %struct.RClass** %3, align 8
  %161 = load i32, i32* @mrb_ary_svalue, align 4
  %162 = call i32 (...) @MRB_ARGS_NONE()
  %163 = call i32 @mrb_define_method(%struct.TYPE_7__* %159, %struct.RClass* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i32 %161, i32 %162)
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %165 = load %struct.RClass*, %struct.RClass** %3, align 8
  %166 = call i32 @init_ary_each(%struct.TYPE_7__* %164, %struct.RClass* %165)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_define_class_method(%struct.TYPE_7__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_ANY(...) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_7__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_ARG(i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @init_ary_each(%struct.TYPE_7__*, %struct.RClass*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
