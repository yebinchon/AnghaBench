; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_param_assignment_val.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_param_assignment_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_parser = type { i32 }
%struct.shader_var = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid type '$1' used for assignment\00", align 1
@LEX_ERROR = common dso_local global i32 0, align 4
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shader_parser*, %struct.shader_var*)* @sp_parse_param_assignment_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_parse_param_assignment_val(%struct.shader_parser* %0, %struct.shader_var* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shader_parser*, align 8
  %5 = alloca %struct.shader_var*, align 8
  store %struct.shader_parser* %0, %struct.shader_parser** %4, align 8
  store %struct.shader_var* %1, %struct.shader_var** %5, align 8
  %6 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %7 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @strcmp(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %13 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %14 = call i32 @sp_parse_param_assign_intfloat(%struct.shader_parser* %12, %struct.shader_var* %13, i32 0)
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %17 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @strcmp(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %23 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %24 = call i32 @sp_parse_param_assign_intfloat(%struct.shader_parser* %22, %struct.shader_var* %23, i32 1)
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %15
  %26 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %27 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @astrcmp_n(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %33 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %34 = call i32 @sp_parse_param_assign_float_array(%struct.shader_parser* %32, %struct.shader_var* %33)
  store i32 %34, i32* %3, align 4
  br label %46

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %39 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %38, i32 0, i32 0
  %40 = load i32, i32* @LEX_ERROR, align 4
  %41 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %42 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cf_adderror(i32* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %43, i32* null, i32* null)
  %45 = load i32, i32* @PARSE_CONTINUE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %37, %31, %21, %11
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @sp_parse_param_assign_intfloat(%struct.shader_parser*, %struct.shader_var*, i32) #1

declare dso_local i64 @astrcmp_n(i32, i8*, i32) #1

declare dso_local i32 @sp_parse_param_assign_float_array(%struct.shader_parser*, %struct.shader_var*) #1

declare dso_local i32 @cf_adderror(i32*, i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
