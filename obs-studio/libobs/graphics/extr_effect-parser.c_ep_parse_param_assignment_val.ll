; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_param_assignment_val.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_param_assignment_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.ep_param = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Invalid type '$1' used for assignment\00", align 1
@LEX_ERROR = common dso_local global i32 0, align 4
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.ep_param*)* @ep_parse_param_assignment_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_parse_param_assignment_val(%struct.effect_parser* %0, %struct.ep_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.effect_parser*, align 8
  %5 = alloca %struct.ep_param*, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %4, align 8
  store %struct.ep_param* %1, %struct.ep_param** %5, align 8
  %6 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %7 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %12 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %13 = call i32 @ep_parse_param_assign_texture(%struct.effect_parser* %11, %struct.ep_param* %12)
  store i32 %13, i32* %3, align 4
  br label %89

14:                                               ; preds = %2
  %15 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %16 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @strcmp(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %22 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %23 = call i32 @ep_parse_param_assign_intfloat(%struct.effect_parser* %21, %struct.ep_param* %22, i32 0)
  store i32 %23, i32* %3, align 4
  br label %89

24:                                               ; preds = %14
  %25 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %26 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @strcmp(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %32 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %33 = call i32 @ep_parse_param_assign_intfloat(%struct.effect_parser* %31, %struct.ep_param* %32, i32 1)
  store i32 %33, i32* %3, align 4
  br label %89

34:                                               ; preds = %24
  %35 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %36 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @astrcmp_n(i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %42 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %43 = call i32 @ep_parse_param_assign_intfloat_array(%struct.effect_parser* %41, %struct.ep_param* %42, i32 0)
  store i32 %43, i32* %3, align 4
  br label %89

44:                                               ; preds = %34
  %45 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %46 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @astrcmp_n(i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %52 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %53 = call i32 @ep_parse_param_assign_intfloat_array(%struct.effect_parser* %51, %struct.ep_param* %52, i32 1)
  store i32 %53, i32* %3, align 4
  br label %89

54:                                               ; preds = %44
  %55 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %56 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @astrcmp_n(i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %62 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %63 = call i32 @ep_parse_param_assign_string(%struct.effect_parser* %61, %struct.ep_param* %62)
  store i32 %63, i32* %3, align 4
  br label %89

64:                                               ; preds = %54
  %65 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %66 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @strcmp(i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %72 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %73 = call i32 @ep_parse_param_assign_bool(%struct.effect_parser* %71, %struct.ep_param* %72)
  store i32 %73, i32* %3, align 4
  br label %89

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %82 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %81, i32 0, i32 0
  %83 = load i32, i32* @LEX_ERROR, align 4
  %84 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %85 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @cf_adderror(i32* %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %83, i32 %86, i32* null, i32* null)
  %88 = load i32, i32* @PARSE_CONTINUE, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %80, %70, %60, %50, %40, %30, %20, %10
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @ep_parse_param_assign_texture(%struct.effect_parser*, %struct.ep_param*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ep_parse_param_assign_intfloat(%struct.effect_parser*, %struct.ep_param*, i32) #1

declare dso_local i64 @astrcmp_n(i32, i8*, i32) #1

declare dso_local i32 @ep_parse_param_assign_intfloat_array(%struct.effect_parser*, %struct.ep_param*, i32) #1

declare dso_local i32 @ep_parse_param_assign_string(%struct.effect_parser*, %struct.ep_param*) #1

declare dso_local i32 @ep_parse_param_assign_bool(%struct.effect_parser*, %struct.ep_param*) #1

declare dso_local i32 @cf_adderror(i32*, i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
