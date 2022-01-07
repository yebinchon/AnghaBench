; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_param_assign_intfloat_array.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_param_assign_intfloat_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.ep_param = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"Invalid row count\00", align 1
@LEX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid column count\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c";\00", align 1
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.ep_param*, i32)* @ep_parse_param_assign_intfloat_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_parse_param_assign_intfloat_array(%struct.effect_parser* %0, %struct.ep_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.effect_parser*, align 8
  %6 = alloca %struct.ep_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %5, align 8
  store %struct.ep_param* %1, %struct.ep_param** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ep_param*, %struct.ep_param** %6, align 8
  %14 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 5, i32 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %15, i64 %20
  store i8* %21, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp slt i32 %25, 49
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sgt i32 %31, 52
  br i1 %32, label %33, label %38

33:                                               ; preds = %27, %3
  %34 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %35 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %34, i32 0, i32 0
  %36 = load i32, i32* @LEX_ERROR, align 4
  %37 = call i32 @cf_adderror(i32* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %36, i32* null, i32* null, i32* null)
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = sub nsw i32 %42, 48
  store i32 %43, i32* %9, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 120
  br i1 %48, label %49, label %74

49:                                               ; preds = %38
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp slt i32 %53, 49
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sgt i32 %59, 52
  br i1 %60, label %61, label %66

61:                                               ; preds = %55, %49
  %62 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %63 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %62, i32 0, i32 0
  %64 = load i32, i32* @LEX_ERROR, align 4
  %65 = call i32 @cf_adderror(i32* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32* null, i32* null, i32* null)
  br label %66

66:                                               ; preds = %61, %55
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %70, 48
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %66, %38
  %75 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %76 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %75, i32 0, i32 0
  %77 = call i32 @cf_next_token_should_be(i32* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @PARSE_SUCCESS, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %120

83:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %115, %83
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %118

88:                                               ; preds = %84
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  store i8* %94, i8** %12, align 8
  %95 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %96 = load %struct.ep_param*, %struct.ep_param** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @ep_parse_param_assign_intfloat(%struct.effect_parser* %95, %struct.ep_param* %96, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @PARSE_SUCCESS, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %88
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %4, align 4
  br label %120

104:                                              ; preds = %88
  %105 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %106 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %105, i32 0, i32 0
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 @cf_next_token_should_be(i32* %106, i8* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @PARSE_SUCCESS, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %4, align 4
  br label %120

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %84

118:                                              ; preds = %84
  %119 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %112, %102, %81
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @cf_adderror(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @cf_next_token_should_be(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @ep_parse_param_assign_intfloat(%struct.effect_parser*, %struct.ep_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
