; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_array.c_ary_new_capa.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_array.c_ary_new_capa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RArray = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@ARY_MAX_SIZE = common dso_local global i32 0, align 4
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"array size too big\00", align 1
@MRB_TT_ARRAY = common dso_local global i32 0, align 4
@MRB_ARY_EMBED_LEN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RArray* (%struct.TYPE_12__*, i32)* @ary_new_capa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RArray* @ary_new_capa(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RArray*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @ARY_MAX_SIZE, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %13 = call i32 @mrb_raise(%struct.TYPE_12__* %11, i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = load i32, i32* @MRB_TT_ARRAY, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @mrb_obj_alloc(%struct.TYPE_12__* %18, i32 %19, i32 %22)
  %24 = inttoptr i64 %23 to %struct.RArray*
  store %struct.RArray* %24, %struct.RArray** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MRB_ARY_EMBED_LEN_MAX, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load %struct.RArray*, %struct.RArray** %5, align 8
  %30 = call i32 @ARY_SET_EMBED_LEN(%struct.RArray* %29, i32 0)
  br label %50

31:                                               ; preds = %14
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @mrb_malloc(%struct.TYPE_12__* %32, i64 %33)
  %35 = inttoptr i64 %34 to i32*
  %36 = load %struct.RArray*, %struct.RArray** %5, align 8
  %37 = getelementptr inbounds %struct.RArray, %struct.RArray* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  store i32* %35, i32** %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.RArray*, %struct.RArray** %5, align 8
  %42 = getelementptr inbounds %struct.RArray, %struct.RArray* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 8
  %46 = load %struct.RArray*, %struct.RArray** %5, align 8
  %47 = getelementptr inbounds %struct.RArray, %struct.RArray* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %31, %28
  %51 = load %struct.RArray*, %struct.RArray** %5, align 8
  ret %struct.RArray* %51
}

declare dso_local i32 @mrb_raise(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i64 @mrb_obj_alloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ARY_SET_EMBED_LEN(%struct.RArray*, i32) #1

declare dso_local i64 @mrb_malloc(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
