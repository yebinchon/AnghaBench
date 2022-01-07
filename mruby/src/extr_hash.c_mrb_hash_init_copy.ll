; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_hash.c_mrb_hash_init_copy.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_hash.c_mrb_hash_init_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.RHash = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"initialize_copy should take same class object\00", align 1
@MRB_TT_HASH = common dso_local global i32 0, align 4
@MRB_HASH_DEFAULT = common dso_local global i32 0, align 4
@MRB_HASH_PROC_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ifnone\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @mrb_hash_init_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_hash_init_copy(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.RHash*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = call i32 @mrb_get_args(%struct.TYPE_11__* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @mrb_obj_equal(%struct.TYPE_11__* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %3, align 4
  br label %89

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @mrb_type(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @mrb_type(i32 %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @mrb_obj_class(%struct.TYPE_11__* %27, i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @mrb_obj_class(%struct.TYPE_11__* %30, i32 %31)
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26, %20
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = load i32, i32* @E_TYPE_ERROR, align 4
  %37 = call i32 @mrb_raise(%struct.TYPE_11__* %35, i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %26
  %39 = load i32, i32* %5, align 4
  %40 = call i32* @RHASH_TBL(i32 %39)
  store i32* %40, i32** %8, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = load i32, i32* @MRB_TT_HASH, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @mrb_obj_alloc(%struct.TYPE_11__* %41, i32 %42, i32 %45)
  %47 = inttoptr i64 %46 to %struct.RHash*
  store %struct.RHash* %47, %struct.RHash** %7, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @ht_copy(%struct.TYPE_11__* %48, i32* %49)
  %51 = load %struct.RHash*, %struct.RHash** %7, align 8
  %52 = getelementptr inbounds %struct.RHash, %struct.RHash* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @MRB_RHASH_DEFAULT_P(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %38
  %57 = load i32, i32* @MRB_HASH_DEFAULT, align 4
  %58 = load %struct.RHash*, %struct.RHash** %7, align 8
  %59 = getelementptr inbounds %struct.RHash, %struct.RHash* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %38
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @MRB_RHASH_PROCDEFAULT_P(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* @MRB_HASH_PROC_DEFAULT, align 4
  %68 = load %struct.RHash*, %struct.RHash** %7, align 8
  %69 = getelementptr inbounds %struct.RHash, %struct.RHash* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %62
  %73 = load %struct.RHash*, %struct.RHash** %7, align 8
  %74 = call i32 @mrb_obj_value(%struct.RHash* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @RHASH_IFNONE(i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @mrb_nil_p(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %72
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = call i32 @mrb_intern_lit(%struct.TYPE_11__* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @mrb_iv_set(%struct.TYPE_11__* %81, i32 %82, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %72
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %18
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @mrb_get_args(%struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i64 @mrb_obj_equal(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @mrb_type(i32) #1

declare dso_local i64 @mrb_obj_class(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mrb_raise(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32* @RHASH_TBL(i32) #1

declare dso_local i64 @mrb_obj_alloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ht_copy(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @MRB_RHASH_DEFAULT_P(i32) #1

declare dso_local i64 @MRB_RHASH_PROCDEFAULT_P(i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RHash*) #1

declare dso_local i32 @RHASH_IFNONE(i32) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_iv_set(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
