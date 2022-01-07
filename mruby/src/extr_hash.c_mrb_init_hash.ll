; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_hash.c_mrb_init_hash.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_hash.c_mrb_init_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.RClass* }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Hash\00", align 1
@MRB_TT_HASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"initialize_copy\00", align 1
@mrb_hash_init_copy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@mrb_hash_aget = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"[]=\00", align 1
@mrb_hash_aset = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@mrb_hash_clear = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@mrb_hash_default = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"default=\00", align 1
@mrb_hash_set_default = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"default_proc\00", align 1
@mrb_hash_default_proc = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"default_proc=\00", align 1
@mrb_hash_set_default_proc = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"__delete\00", align 1
@mrb_hash_delete = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"empty?\00", align 1
@mrb_hash_empty_m = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"has_key?\00", align 1
@mrb_hash_has_key = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"has_value?\00", align 1
@mrb_hash_has_value = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"include?\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@mrb_hash_init = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"key?\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@mrb_hash_keys = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@mrb_hash_size_m = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"member?\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@mrb_hash_shift = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"value?\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@mrb_hash_values = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"rehash\00", align 1
@mrb_hash_rehash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_init_hash(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.RClass* @mrb_define_class(%struct.TYPE_5__* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %7)
  store %struct.RClass* %8, %struct.RClass** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store %struct.RClass* %8, %struct.RClass** %10, align 8
  %11 = load %struct.RClass*, %struct.RClass** %3, align 8
  %12 = load i32, i32* @MRB_TT_HASH, align 4
  %13 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %11, i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = load %struct.RClass*, %struct.RClass** %3, align 8
  %16 = load i32, i32* @mrb_hash_init_copy, align 4
  %17 = call i32 @MRB_ARGS_REQ(i32 1)
  %18 = call i32 @mrb_define_method(%struct.TYPE_5__* %14, %struct.RClass* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = load %struct.RClass*, %struct.RClass** %3, align 8
  %21 = load i32, i32* @mrb_hash_aget, align 4
  %22 = call i32 @MRB_ARGS_REQ(i32 1)
  %23 = call i32 @mrb_define_method(%struct.TYPE_5__* %19, %struct.RClass* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = load %struct.RClass*, %struct.RClass** %3, align 8
  %26 = load i32, i32* @mrb_hash_aset, align 4
  %27 = call i32 @MRB_ARGS_REQ(i32 2)
  %28 = call i32 @mrb_define_method(%struct.TYPE_5__* %24, %struct.RClass* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = load %struct.RClass*, %struct.RClass** %3, align 8
  %31 = load i32, i32* @mrb_hash_clear, align 4
  %32 = call i32 (...) @MRB_ARGS_NONE()
  %33 = call i32 @mrb_define_method(%struct.TYPE_5__* %29, %struct.RClass* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = load %struct.RClass*, %struct.RClass** %3, align 8
  %36 = load i32, i32* @mrb_hash_default, align 4
  %37 = call i32 @MRB_ARGS_OPT(i32 1)
  %38 = call i32 @mrb_define_method(%struct.TYPE_5__* %34, %struct.RClass* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = load %struct.RClass*, %struct.RClass** %3, align 8
  %41 = load i32, i32* @mrb_hash_set_default, align 4
  %42 = call i32 @MRB_ARGS_REQ(i32 1)
  %43 = call i32 @mrb_define_method(%struct.TYPE_5__* %39, %struct.RClass* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = load %struct.RClass*, %struct.RClass** %3, align 8
  %46 = load i32, i32* @mrb_hash_default_proc, align 4
  %47 = call i32 (...) @MRB_ARGS_NONE()
  %48 = call i32 @mrb_define_method(%struct.TYPE_5__* %44, %struct.RClass* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = load %struct.RClass*, %struct.RClass** %3, align 8
  %51 = load i32, i32* @mrb_hash_set_default_proc, align 4
  %52 = call i32 @MRB_ARGS_REQ(i32 1)
  %53 = call i32 @mrb_define_method(%struct.TYPE_5__* %49, %struct.RClass* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = load %struct.RClass*, %struct.RClass** %3, align 8
  %56 = load i32, i32* @mrb_hash_delete, align 4
  %57 = call i32 @MRB_ARGS_REQ(i32 1)
  %58 = call i32 @mrb_define_method(%struct.TYPE_5__* %54, %struct.RClass* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = load %struct.RClass*, %struct.RClass** %3, align 8
  %61 = load i32, i32* @mrb_hash_empty_m, align 4
  %62 = call i32 (...) @MRB_ARGS_NONE()
  %63 = call i32 @mrb_define_method(%struct.TYPE_5__* %59, %struct.RClass* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = load %struct.RClass*, %struct.RClass** %3, align 8
  %66 = load i32, i32* @mrb_hash_has_key, align 4
  %67 = call i32 @MRB_ARGS_REQ(i32 1)
  %68 = call i32 @mrb_define_method(%struct.TYPE_5__* %64, %struct.RClass* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = load %struct.RClass*, %struct.RClass** %3, align 8
  %71 = load i32, i32* @mrb_hash_has_value, align 4
  %72 = call i32 @MRB_ARGS_REQ(i32 1)
  %73 = call i32 @mrb_define_method(%struct.TYPE_5__* %69, %struct.RClass* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = load %struct.RClass*, %struct.RClass** %3, align 8
  %76 = load i32, i32* @mrb_hash_has_key, align 4
  %77 = call i32 @MRB_ARGS_REQ(i32 1)
  %78 = call i32 @mrb_define_method(%struct.TYPE_5__* %74, %struct.RClass* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %80 = load %struct.RClass*, %struct.RClass** %3, align 8
  %81 = load i32, i32* @mrb_hash_init, align 4
  %82 = call i32 @MRB_ARGS_OPT(i32 1)
  %83 = call i32 (...) @MRB_ARGS_BLOCK()
  %84 = or i32 %82, %83
  %85 = call i32 @mrb_define_method(%struct.TYPE_5__* %79, %struct.RClass* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %81, i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = load %struct.RClass*, %struct.RClass** %3, align 8
  %88 = load i32, i32* @mrb_hash_has_key, align 4
  %89 = call i32 @MRB_ARGS_REQ(i32 1)
  %90 = call i32 @mrb_define_method(%struct.TYPE_5__* %86, %struct.RClass* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %92 = load %struct.RClass*, %struct.RClass** %3, align 8
  %93 = load i32, i32* @mrb_hash_keys, align 4
  %94 = call i32 (...) @MRB_ARGS_NONE()
  %95 = call i32 @mrb_define_method(%struct.TYPE_5__* %91, %struct.RClass* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = load %struct.RClass*, %struct.RClass** %3, align 8
  %98 = load i32, i32* @mrb_hash_size_m, align 4
  %99 = call i32 (...) @MRB_ARGS_NONE()
  %100 = call i32 @mrb_define_method(%struct.TYPE_5__* %96, %struct.RClass* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = load %struct.RClass*, %struct.RClass** %3, align 8
  %103 = load i32, i32* @mrb_hash_has_key, align 4
  %104 = call i32 @MRB_ARGS_REQ(i32 1)
  %105 = call i32 @mrb_define_method(%struct.TYPE_5__* %101, %struct.RClass* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %107 = load %struct.RClass*, %struct.RClass** %3, align 8
  %108 = load i32, i32* @mrb_hash_shift, align 4
  %109 = call i32 (...) @MRB_ARGS_NONE()
  %110 = call i32 @mrb_define_method(%struct.TYPE_5__* %106, %struct.RClass* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %112 = load %struct.RClass*, %struct.RClass** %3, align 8
  %113 = load i32, i32* @mrb_hash_size_m, align 4
  %114 = call i32 (...) @MRB_ARGS_NONE()
  %115 = call i32 @mrb_define_method(%struct.TYPE_5__* %111, %struct.RClass* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %117 = load %struct.RClass*, %struct.RClass** %3, align 8
  %118 = load i32, i32* @mrb_hash_aset, align 4
  %119 = call i32 @MRB_ARGS_REQ(i32 2)
  %120 = call i32 @mrb_define_method(%struct.TYPE_5__* %116, %struct.RClass* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = load %struct.RClass*, %struct.RClass** %3, align 8
  %123 = load i32, i32* @mrb_hash_has_value, align 4
  %124 = call i32 @MRB_ARGS_REQ(i32 1)
  %125 = call i32 @mrb_define_method(%struct.TYPE_5__* %121, %struct.RClass* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 %123, i32 %124)
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = load %struct.RClass*, %struct.RClass** %3, align 8
  %128 = load i32, i32* @mrb_hash_values, align 4
  %129 = call i32 (...) @MRB_ARGS_NONE()
  %130 = call i32 @mrb_define_method(%struct.TYPE_5__* %126, %struct.RClass* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %132 = load %struct.RClass*, %struct.RClass** %3, align 8
  %133 = load i32, i32* @mrb_hash_rehash, align 4
  %134 = call i32 (...) @MRB_ARGS_NONE()
  %135 = call i32 @mrb_define_method(%struct.TYPE_5__* %131, %struct.RClass* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 %133, i32 %134)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_5__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @MRB_ARGS_BLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
