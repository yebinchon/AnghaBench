; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_param_assign_float_array.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_param_assign_float_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_parser = type { i32 }
%struct.shader_var = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"Invalid row count\00", align 1
@LEX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid column count\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c";\00", align 1
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shader_parser*, %struct.shader_var*)* @sp_parse_param_assign_float_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_parse_param_assign_float_array(%struct.shader_parser* %0, %struct.shader_var* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shader_parser*, align 8
  %5 = alloca %struct.shader_var*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.shader_parser* %0, %struct.shader_parser** %4, align 8
  store %struct.shader_var* %1, %struct.shader_var** %5, align 8
  %11 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %12 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 5
  store i8* %14, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp slt i32 %18, 49
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sgt i32 %24, 52
  br i1 %25, label %26, label %31

26:                                               ; preds = %20, %2
  %27 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %28 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %27, i32 0, i32 0
  %29 = load i32, i32* @LEX_ERROR, align 4
  %30 = call i32 @cf_adderror(i32* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29, i32* null, i32* null, i32* null)
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = sub nsw i32 %35, 48
  store i32 %36, i32* %7, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 120
  br i1 %41, label %42, label %67

42:                                               ; preds = %31
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp slt i32 %46, 49
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sgt i32 %52, 52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48, %42
  %55 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %56 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %55, i32 0, i32 0
  %57 = load i32, i32* @LEX_ERROR, align 4
  %58 = call i32 @cf_adderror(i32* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32* null, i32* null, i32* null)
  br label %59

59:                                               ; preds = %54, %48
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = sub nsw i32 %63, 48
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %59, %31
  %68 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %69 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %68, i32 0, i32 0
  %70 = call i32 @cf_next_token_should_be(i32* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @PARSE_SUCCESS, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %112

76:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %107, %76
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %110

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %83, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  store i8* %87, i8** %10, align 8
  %88 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %89 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %90 = call i32 @sp_parse_param_assign_intfloat(%struct.shader_parser* %88, %struct.shader_var* %89, i32 1)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @PARSE_SUCCESS, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %112

96:                                               ; preds = %81
  %97 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %98 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %97, i32 0, i32 0
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @cf_next_token_should_be(i32* %98, i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @PARSE_SUCCESS, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %112

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %77

110:                                              ; preds = %77
  %111 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %104, %94, %74
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @cf_adderror(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @cf_next_token_should_be(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @sp_parse_param_assign_intfloat(%struct.shader_parser*, %struct.shader_var*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
