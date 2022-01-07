; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_write_func.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_write_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.dstr = type { i32 }
%struct.ep_func = type { i32, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.ep_var* }
%struct.ep_var = type { i32 }
%struct.darray = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.effect_parser*, %struct.dstr*, %struct.ep_func*, %struct.darray*)* @ep_write_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_write_func(%struct.effect_parser* %0, %struct.dstr* %1, %struct.ep_func* %2, %struct.darray* %3) #0 {
  %5 = alloca %struct.effect_parser*, align 8
  %6 = alloca %struct.dstr*, align 8
  %7 = alloca %struct.ep_func*, align 8
  %8 = alloca %struct.darray*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ep_var*, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %5, align 8
  store %struct.dstr* %1, %struct.dstr** %6, align 8
  store %struct.ep_func* %2, %struct.ep_func** %7, align 8
  store %struct.darray* %3, %struct.darray** %8, align 8
  %11 = load %struct.ep_func*, %struct.ep_func** %7, align 8
  %12 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %14 = load %struct.dstr*, %struct.dstr** %6, align 8
  %15 = load %struct.ep_func*, %struct.ep_func** %7, align 8
  %16 = load %struct.darray*, %struct.darray** %8, align 8
  %17 = call i32 @ep_write_func_param_deps(%struct.effect_parser* %13, %struct.dstr* %14, %struct.ep_func* %15, %struct.darray* %16)
  %18 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %19 = load %struct.dstr*, %struct.dstr** %6, align 8
  %20 = load %struct.ep_func*, %struct.ep_func** %7, align 8
  %21 = call i32 @ep_write_func_sampler_deps(%struct.effect_parser* %18, %struct.dstr* %19, %struct.ep_func* %20)
  %22 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %23 = load %struct.dstr*, %struct.dstr** %6, align 8
  %24 = load %struct.ep_func*, %struct.ep_func** %7, align 8
  %25 = call i32 @ep_write_func_struct_deps(%struct.effect_parser* %22, %struct.dstr* %23, %struct.ep_func* %24)
  %26 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %27 = load %struct.dstr*, %struct.dstr** %6, align 8
  %28 = load %struct.ep_func*, %struct.ep_func** %7, align 8
  %29 = load %struct.darray*, %struct.darray** %8, align 8
  %30 = call i32 @ep_write_func_func_deps(%struct.effect_parser* %26, %struct.dstr* %27, %struct.ep_func* %28, %struct.darray* %29)
  %31 = load %struct.dstr*, %struct.dstr** %6, align 8
  %32 = load %struct.ep_func*, %struct.ep_func** %7, align 8
  %33 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @dstr_cat(%struct.dstr* %31, i8* %34)
  %36 = load %struct.dstr*, %struct.dstr** %6, align 8
  %37 = call i32 @dstr_cat(%struct.dstr* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.dstr*, %struct.dstr** %6, align 8
  %39 = load %struct.ep_func*, %struct.ep_func** %7, align 8
  %40 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @dstr_cat(%struct.dstr* %38, i8* %41)
  %43 = load %struct.dstr*, %struct.dstr** %6, align 8
  %44 = call i32 @dstr_cat(%struct.dstr* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %68, %4
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.ep_func*, %struct.ep_func** %7, align 8
  %48 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %46, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %45
  %53 = load %struct.ep_func*, %struct.ep_func** %7, align 8
  %54 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load %struct.ep_var*, %struct.ep_var** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %56, i64 %57
  store %struct.ep_var* %58, %struct.ep_var** %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.dstr*, %struct.dstr** %6, align 8
  %63 = call i32 @dstr_cat(%struct.dstr* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %52
  %65 = load %struct.dstr*, %struct.dstr** %6, align 8
  %66 = load %struct.ep_var*, %struct.ep_var** %10, align 8
  %67 = call i32 @ep_write_var(%struct.dstr* %65, %struct.ep_var* %66)
  br label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %45

71:                                               ; preds = %45
  %72 = load %struct.dstr*, %struct.dstr** %6, align 8
  %73 = call i32 @dstr_cat(%struct.dstr* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.dstr*, %struct.dstr** %6, align 8
  %75 = load %struct.ep_func*, %struct.ep_func** %7, align 8
  %76 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %75, i32 0, i32 3
  %77 = call i32 @dstr_cat_dstr(%struct.dstr* %74, i32* %76)
  %78 = load %struct.dstr*, %struct.dstr** %6, align 8
  %79 = call i32 @dstr_cat(%struct.dstr* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ep_write_func_param_deps(%struct.effect_parser*, %struct.dstr*, %struct.ep_func*, %struct.darray*) #1

declare dso_local i32 @ep_write_func_sampler_deps(%struct.effect_parser*, %struct.dstr*, %struct.ep_func*) #1

declare dso_local i32 @ep_write_func_struct_deps(%struct.effect_parser*, %struct.dstr*, %struct.ep_func*) #1

declare dso_local i32 @ep_write_func_func_deps(%struct.effect_parser*, %struct.dstr*, %struct.ep_func*, %struct.darray*) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i32 @ep_write_var(%struct.dstr*, %struct.ep_var*) #1

declare dso_local i32 @dstr_cat_dstr(%struct.dstr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
