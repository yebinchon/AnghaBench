; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_other.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_parser = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@PARSE_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_parser*)* @sp_parse_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp_parse_other(%struct.shader_parser* %0) #0 {
  %2 = alloca %struct.shader_parser*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.shader_parser* %0, %struct.shader_parser** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %8 = call i32 @sp_get_var_specifiers(%struct.shader_parser* %7, i32* %3, i32* %4)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %54

11:                                               ; preds = %1
  %12 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %13 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %12, i32 0, i32 0
  %14 = call i64 @cf_get_name(i32* %13, i8** %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i64, i64* @PARSE_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %54

18:                                               ; preds = %11
  %19 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %20 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %19, i32 0, i32 0
  %21 = call i64 @cf_next_name(i32* %20, i8** %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* @PARSE_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %54

25:                                               ; preds = %18
  %26 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %27 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %26, i32 0, i32 0
  %28 = call i32 @cf_next_valid_token(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %54

31:                                               ; preds = %25
  %32 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %33 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %32, i32 0, i32 0
  %34 = call i64 @cf_token_is(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @report_invalid_func_keyword(%struct.shader_parser* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @report_invalid_func_keyword(%struct.shader_parser* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @sp_parse_function(%struct.shader_parser* %43, i8* %44, i8* %45)
  br label %59

47:                                               ; preds = %31
  %48 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @sp_parse_param(%struct.shader_parser* %48, i8* %49, i8* %50, i32 %51, i32 %52)
  br label %59

54:                                               ; preds = %30, %24, %17, %10
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @bfree(i8* %55)
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @bfree(i8* %57)
  br label %59

59:                                               ; preds = %54, %47, %36
  ret void
}

declare dso_local i32 @sp_get_var_specifiers(%struct.shader_parser*, i32*, i32*) #1

declare dso_local i64 @cf_get_name(i32*, i8**, i8*, i8*) #1

declare dso_local i64 @cf_next_name(i32*, i8**, i8*, i8*) #1

declare dso_local i32 @cf_next_valid_token(i32*) #1

declare dso_local i64 @cf_token_is(i32*, i8*) #1

declare dso_local i32 @report_invalid_func_keyword(%struct.shader_parser*, i8*, i32) #1

declare dso_local i32 @sp_parse_function(%struct.shader_parser*, i8*, i8*) #1

declare dso_local i32 @sp_parse_param(%struct.shader_parser*, i8*, i8*, i32, i32) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
