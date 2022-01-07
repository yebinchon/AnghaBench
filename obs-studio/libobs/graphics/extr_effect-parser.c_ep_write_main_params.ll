; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_write_main_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_write_main_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.dstr = type { i32 }
%struct.ep_func = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.ep_var* }
%struct.ep_var = type { i8*, i8*, i8* }
%struct.ep_struct = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.effect_parser*, %struct.dstr*, %struct.dstr*, %struct.ep_func*)* @ep_write_main_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_write_main_params(%struct.effect_parser* %0, %struct.dstr* %1, %struct.dstr* %2, %struct.ep_func* %3) #0 {
  %5 = alloca %struct.effect_parser*, align 8
  %6 = alloca %struct.dstr*, align 8
  %7 = alloca %struct.dstr*, align 8
  %8 = alloca %struct.ep_func*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ep_var*, align 8
  %12 = alloca %struct.ep_struct*, align 8
  %13 = alloca i32, align 4
  store %struct.effect_parser* %0, %struct.effect_parser** %5, align 8
  store %struct.dstr* %1, %struct.dstr** %6, align 8
  store %struct.dstr* %2, %struct.dstr** %7, align 8
  store %struct.ep_func* %3, %struct.ep_func** %8, align 8
  %14 = load %struct.dstr*, %struct.dstr** %7, align 8
  %15 = call i32 @dstr_is_empty(%struct.dstr* %14)
  store i32 %15, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %89, %4
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.ep_func*, %struct.ep_func** %8, align 8
  %19 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %17, %21
  br i1 %22, label %23, label %92

23:                                               ; preds = %16
  %24 = load %struct.ep_func*, %struct.ep_func** %8, align 8
  %25 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.ep_var*, %struct.ep_var** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %27, i64 %28
  store %struct.ep_var* %29, %struct.ep_var** %11, align 8
  store %struct.ep_struct* null, %struct.ep_struct** %12, align 8
  %30 = load %struct.ep_var*, %struct.ep_var** %11, align 8
  %31 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %23
  %38 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %39 = load %struct.ep_var*, %struct.ep_var** %11, align 8
  %40 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call %struct.ep_struct* @ep_getstruct(%struct.effect_parser* %38, i8* %41)
  store %struct.ep_struct* %42, %struct.ep_struct** %12, align 8
  %43 = load %struct.ep_struct*, %struct.ep_struct** %12, align 8
  %44 = icmp ne %struct.ep_struct* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.ep_struct*, %struct.ep_struct** %12, align 8
  %47 = call i32 @ep_struct_mapped(%struct.ep_struct* %46)
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %45, %37
  br label %49

49:                                               ; preds = %48, %23
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %88

52:                                               ; preds = %49
  %53 = load %struct.dstr*, %struct.dstr** %6, align 8
  %54 = load %struct.ep_var*, %struct.ep_var** %11, align 8
  %55 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @dstr_cat(%struct.dstr* %53, i8* %56)
  %58 = load %struct.dstr*, %struct.dstr** %6, align 8
  %59 = call i32 @dstr_cat(%struct.dstr* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.dstr*, %struct.dstr** %6, align 8
  %61 = load %struct.ep_var*, %struct.ep_var** %11, align 8
  %62 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @dstr_cat(%struct.dstr* %60, i8* %63)
  %65 = load %struct.ep_struct*, %struct.ep_struct** %12, align 8
  %66 = icmp ne %struct.ep_struct* %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %52
  %68 = load %struct.dstr*, %struct.dstr** %6, align 8
  %69 = call i32 @dstr_cat(%struct.dstr* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.dstr*, %struct.dstr** %6, align 8
  %71 = load %struct.ep_var*, %struct.ep_var** %11, align 8
  %72 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @dstr_cat(%struct.dstr* %70, i8* %73)
  br label %75

75:                                               ; preds = %67, %52
  %76 = load %struct.dstr*, %struct.dstr** %7, align 8
  %77 = call i32 @dstr_is_empty(%struct.dstr* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load %struct.dstr*, %struct.dstr** %7, align 8
  %81 = call i32 @dstr_cat(%struct.dstr* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %75
  %83 = load %struct.dstr*, %struct.dstr** %7, align 8
  %84 = load %struct.ep_var*, %struct.ep_var** %11, align 8
  %85 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @dstr_cat(%struct.dstr* %83, i8* %86)
  br label %88

88:                                               ; preds = %82, %49
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %16

92:                                               ; preds = %16
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load %struct.dstr*, %struct.dstr** %7, align 8
  %97 = call i32 @dstr_cat(%struct.dstr* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %92
  ret void
}

declare dso_local i32 @dstr_is_empty(%struct.dstr*) #1

declare dso_local %struct.ep_struct* @ep_getstruct(%struct.effect_parser*, i8*) #1

declare dso_local i32 @ep_struct_mapped(%struct.ep_struct*) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
