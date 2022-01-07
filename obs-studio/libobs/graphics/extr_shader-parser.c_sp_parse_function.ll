; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_function.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_parser = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.shader_func = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mapping\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_parser*, i8*, i8*)* @sp_parse_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp_parse_function(%struct.shader_parser* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.shader_parser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.shader_func, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.shader_parser* %0, %struct.shader_parser** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @shader_func_init(%struct.shader_func* %7, i8* %10, i8* %11)
  %13 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %14 = call i32 @sp_parse_func_params(%struct.shader_parser* %13, %struct.shader_func* %7)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %78

17:                                               ; preds = %3
  %18 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %19 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %18, i32 0, i32 1
  %20 = call i32 @cf_next_valid_token(%struct.TYPE_7__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %78

23:                                               ; preds = %17
  %24 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %25 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %24, i32 0, i32 1
  %26 = call i64 @cf_token_is(%struct.TYPE_7__* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  store i8* null, i8** %8, align 8
  %29 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %30 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %29, i32 0, i32 1
  %31 = call i32 @cf_next_name(%struct.TYPE_7__* %30, i8** %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @PARSE_SUCCESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %78

36:                                               ; preds = %28
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %7, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %40 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %39, i32 0, i32 1
  %41 = call i32 @cf_next_valid_token(%struct.TYPE_7__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %78

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %23
  %46 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %47 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %46, i32 0, i32 1
  %48 = call i64 @cf_token_is(%struct.TYPE_7__* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %52 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %51, i32 0, i32 1
  %53 = call i32 @cf_adderror_expecting(%struct.TYPE_7__* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %78

54:                                               ; preds = %45
  %55 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %56 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %7, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %61 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %60, i32 0, i32 1
  %62 = call i32 @cf_pass_pair(%struct.TYPE_7__* %61, i8 signext 123, i8 signext 125)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %54
  br label %78

65:                                               ; preds = %54
  %66 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %67 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %66, i32 0, i32 1
  %68 = call i32 @cf_next_token(%struct.TYPE_7__* %67)
  %69 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %70 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %7, i32 0, i32 1
  store i32 %72, i32* %73, align 8
  %74 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %75 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @da_push_back(i32 %76, %struct.shader_func* %7)
  br label %80

78:                                               ; preds = %64, %50, %43, %35, %22, %16
  %79 = call i32 @shader_func_free(%struct.shader_func* %7)
  br label %80

80:                                               ; preds = %78, %65
  ret void
}

declare dso_local i32 @shader_func_init(%struct.shader_func*, i8*, i8*) #1

declare dso_local i32 @sp_parse_func_params(%struct.shader_parser*, %struct.shader_func*) #1

declare dso_local i32 @cf_next_valid_token(%struct.TYPE_7__*) #1

declare dso_local i64 @cf_token_is(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @cf_next_name(%struct.TYPE_7__*, i8**, i8*, i8*) #1

declare dso_local i32 @cf_adderror_expecting(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @cf_pass_pair(%struct.TYPE_7__*, i8 signext, i8 signext) #1

declare dso_local i32 @cf_next_token(%struct.TYPE_7__*) #1

declare dso_local i32 @da_push_back(i32, %struct.shader_func*) #1

declare dso_local i32 @shader_func_free(%struct.shader_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
