; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font.c_get_font_path.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font.c_get_font_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.font_path_info* }
%struct.font_path_info = type { double, i64, i32, i32, i8*, i32, i64*, i64 }
%struct.dstr = type { i32 }

@OBS_FONT_BOLD = common dso_local global i64 0, align 8
@OBS_FONT_ITALIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@font_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_font_path(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.dstr, align 4
  %15 = alloca %struct.dstr, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.font_path_info*, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %12, align 8
  store double 0.000000e+00, double* %13, align 8
  %24 = bitcast %struct.dstr* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 4, i1 false)
  %25 = bitcast %struct.dstr* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @OBS_FONT_BOLD, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %16, align 4
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @OBS_FONT_ITALIC, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %17, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %5
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42, %5
  store i8* null, i8** %6, align 8
  br label %159

47:                                               ; preds = %42
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @dstr_copy(%struct.dstr* %15, i8* %51)
  %53 = call i32 @dstr_replace(%struct.dstr* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @dstr_replace(%struct.dstr* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @dstr_replace(%struct.dstr* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %56 = call i32 @dstr_depad(%struct.dstr* %15)
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @dstr_copy(%struct.dstr* %14, i8* %58)
  %60 = call i32 @dstr_is_empty(%struct.dstr* %15)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = call i32 @dstr_cat(%struct.dstr* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %64 = call i32 @dstr_cat_dstr(%struct.dstr* %14, %struct.dstr* %15)
  br label %65

65:                                               ; preds = %62, %57
  store i64 0, i64* %18, align 8
  br label %66

66:                                               ; preds = %152, %65
  %67 = load i64, i64* %18, align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @font_list, i32 0, i32 0), align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %155

70:                                               ; preds = %66
  %71 = load %struct.font_path_info*, %struct.font_path_info** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @font_list, i32 0, i32 1), align 8
  %72 = load i64, i64* %18, align 8
  %73 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %71, i64 %72
  store %struct.font_path_info* %73, %struct.font_path_info** %19, align 8
  %74 = load %struct.font_path_info*, %struct.font_path_info** %19, align 8
  %75 = call i64 @get_rating(%struct.font_path_info* %74, %struct.dstr* %14)
  %76 = sitofp i64 %75 to double
  store double %76, double* %20, align 8
  %77 = load double, double* %20, align 8
  %78 = load %struct.font_path_info*, %struct.font_path_info** %19, align 8
  %79 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %78, i32 0, i32 0
  %80 = load double, double* %79, align 8
  %81 = fcmp olt double %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %152

83:                                               ; preds = %70
  %84 = load %struct.font_path_info*, %struct.font_path_info** %19, align 8
  %85 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %120

88:                                               ; preds = %83
  store i32 1000, i32* %21, align 4
  store i64 0, i64* %22, align 8
  br label %89

89:                                               ; preds = %111, %88
  %90 = load i64, i64* %22, align 8
  %91 = load %struct.font_path_info*, %struct.font_path_info** %19, align 8
  %92 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %90, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %89
  %96 = load %struct.font_path_info*, %struct.font_path_info** %19, align 8
  %97 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %96, i32 0, i32 6
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %22, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = sub nsw i64 %101, %102
  %104 = call i32 @abs(i64 %103)
  store i32 %104, i32* %23, align 4
  %105 = load i32, i32* %23, align 4
  %106 = load i32, i32* %21, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %95
  %109 = load i32, i32* %23, align 4
  store i32 %109, i32* %21, align 4
  br label %110

110:                                              ; preds = %108, %95
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %22, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %22, align 8
  br label %89

114:                                              ; preds = %89
  %115 = load i32, i32* %21, align 4
  %116 = sitofp i32 %115 to double
  %117 = fadd double %116, 1.000000e+00
  %118 = load double, double* %20, align 8
  %119 = fdiv double %118, %117
  store double %119, double* %20, align 8
  br label %120

120:                                              ; preds = %114, %83
  %121 = load %struct.font_path_info*, %struct.font_path_info** %19, align 8
  %122 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load double, double* %20, align 8
  %128 = fadd double %127, 1.000000e+00
  store double %128, double* %20, align 8
  br label %129

129:                                              ; preds = %126, %120
  %130 = load %struct.font_path_info*, %struct.font_path_info** %19, align 8
  %131 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load double, double* %20, align 8
  %137 = fadd double %136, 1.000000e+00
  store double %137, double* %20, align 8
  br label %138

138:                                              ; preds = %135, %129
  %139 = load double, double* %20, align 8
  %140 = load double, double* %13, align 8
  %141 = fcmp ogt double %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load %struct.font_path_info*, %struct.font_path_info** %19, align 8
  %144 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %143, i32 0, i32 4
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %12, align 8
  %146 = load %struct.font_path_info*, %struct.font_path_info** %19, align 8
  %147 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = load i32*, i32** %11, align 8
  store i32 %148, i32* %149, align 4
  %150 = load double, double* %20, align 8
  store double %150, double* %13, align 8
  br label %151

151:                                              ; preds = %142, %138
  br label %152

152:                                              ; preds = %151, %82
  %153 = load i64, i64* %18, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %18, align 8
  br label %66

155:                                              ; preds = %66
  %156 = call i32 @dstr_free(%struct.dstr* %15)
  %157 = call i32 @dstr_free(%struct.dstr* %14)
  %158 = load i8*, i8** %12, align 8
  store i8* %158, i8** %6, align 8
  br label %159

159:                                              ; preds = %155, %46
  %160 = load i8*, i8** %6, align 8
  ret i8* %160
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #2

declare dso_local i32 @dstr_depad(%struct.dstr*) #2

declare dso_local i32 @dstr_is_empty(%struct.dstr*) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_cat_dstr(%struct.dstr*, %struct.dstr*) #2

declare dso_local i64 @get_rating(%struct.font_path_info*, %struct.dstr*) #2

declare dso_local i32 @abs(i64) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
