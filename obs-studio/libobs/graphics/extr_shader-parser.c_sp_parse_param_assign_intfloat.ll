; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_param_assign_intfloat.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_param_assign_intfloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_parser = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.shader_var = type { i32 }

@PARSE_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@CFTOKEN_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"numeric value\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shader_parser*, %struct.shader_var*, i32)* @sp_parse_param_assign_intfloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_parse_param_assign_intfloat(%struct.shader_parser* %0, %struct.shader_var* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shader_parser*, align 8
  %6 = alloca %struct.shader_var*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i64, align 8
  store %struct.shader_parser* %0, %struct.shader_parser** %5, align 8
  store %struct.shader_var* %1, %struct.shader_var** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.shader_parser*, %struct.shader_parser** %5, align 8
  %13 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %12, i32 0, i32 0
  %14 = call i32 @cf_next_valid_token(%struct.TYPE_9__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @PARSE_EOF, align 4
  store i32 %17, i32* %4, align 4
  br label %85

18:                                               ; preds = %3
  %19 = load %struct.shader_parser*, %struct.shader_parser** %5, align 8
  %20 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %19, i32 0, i32 0
  %21 = call i64 @cf_token_is(%struct.TYPE_9__* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  store i32 1, i32* %9, align 4
  %24 = load %struct.shader_parser*, %struct.shader_parser** %5, align 8
  %25 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %24, i32 0, i32 0
  %26 = call i32 @cf_next_token(%struct.TYPE_9__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @PARSE_EOF, align 4
  store i32 %29, i32* %4, align 4
  br label %85

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %18
  %32 = load %struct.shader_parser*, %struct.shader_parser** %5, align 8
  %33 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %32, i32 0, i32 0
  %34 = load i32, i32* @CFTOKEN_NUM, align 4
  %35 = call i32 @cf_token_is_type(%struct.TYPE_9__* %33, i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PARSE_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %85

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.shader_parser*, %struct.shader_parser** %5, align 8
  %46 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @os_strtod(i32 %51)
  %53 = sitofp i64 %52 to float
  store float %53, float* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load float, float* %10, align 4
  %58 = fneg float %57
  store float %58, float* %10, align 4
  br label %59

59:                                               ; preds = %56, %44
  %60 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %61 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, ...) @da_push_back_array(i32 %62, float* %10, i64 4)
  br label %83

64:                                               ; preds = %41
  %65 = load %struct.shader_parser*, %struct.shader_parser** %5, align 8
  %66 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @strtol(i32 %71, i32* null, i32 10)
  store i64 %72, i64* %11, align 8
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load i64, i64* %11, align 8
  %77 = sub nsw i64 0, %76
  store i64 %77, i64* %11, align 8
  br label %78

78:                                               ; preds = %75, %64
  %79 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %80 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, ...) @da_push_back_array(i32 %81, i64* %11, i64 8)
  br label %83

83:                                               ; preds = %78, %59
  %84 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %39, %28, %16
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @cf_next_valid_token(%struct.TYPE_9__*) #1

declare dso_local i64 @cf_token_is(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @cf_next_token(%struct.TYPE_9__*) #1

declare dso_local i32 @cf_token_is_type(%struct.TYPE_9__*, i32, i8*, i8*) #1

declare dso_local i64 @os_strtod(i32) #1

declare dso_local i32 @da_push_back_array(i32, ...) #1

declare dso_local i64 @strtol(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
