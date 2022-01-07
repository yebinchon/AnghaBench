; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_sampler_state.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_sampler_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_parser = type { i32, i32 }
%struct.shader_sampler = type { i32 }
%struct.cf_token = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@PARSE_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@PARSE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_parser*)* @sp_parse_sampler_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp_parse_sampler_state(%struct.shader_parser* %0) #0 {
  %2 = alloca %struct.shader_parser*, align 8
  %3 = alloca %struct.shader_sampler, align 4
  %4 = alloca %struct.cf_token, align 4
  %5 = alloca i32, align 4
  store %struct.shader_parser* %0, %struct.shader_parser** %2, align 8
  %6 = call i32 @shader_sampler_init(%struct.shader_sampler* %3)
  %7 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %8 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %3, i32 0, i32 0
  %10 = call i64 @cf_next_name(i32* %8, i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i64, i64* @PARSE_SUCCESS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %65

14:                                               ; preds = %1
  %15 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %16 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %15, i32 0, i32 1
  %17 = call i64 @cf_next_token_should_be(i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %18 = load i64, i64* @PARSE_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %65

21:                                               ; preds = %14
  %22 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %23 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %22, i32 0, i32 1
  %24 = call i32 @cf_peek_valid_token(i32* %23, %struct.cf_token* %4)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %65

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %45, %27
  %29 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %4, i32 0, i32 0
  %30 = call i64 @strref_cmp(i32* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %34 = call i32 @sp_parse_sampler_state_item(%struct.shader_parser* %33, %struct.shader_sampler* %3)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @PARSE_EOF, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %65

39:                                               ; preds = %32
  %40 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %41 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %40, i32 0, i32 1
  %42 = call i32 @cf_peek_valid_token(i32* %41, %struct.cf_token* %4)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %65

45:                                               ; preds = %39
  br label %28

46:                                               ; preds = %28
  %47 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %48 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %47, i32 0, i32 1
  %49 = call i64 @cf_next_token_should_be(i32* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %50 = load i64, i64* @PARSE_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %65

53:                                               ; preds = %46
  %54 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %55 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %54, i32 0, i32 1
  %56 = call i64 @cf_next_token_should_be(i32* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* null, i32* null)
  %57 = load i64, i64* @PARSE_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %65

60:                                               ; preds = %53
  %61 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %62 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @da_push_back(i32 %63, %struct.shader_sampler* %3)
  br label %67

65:                                               ; preds = %59, %52, %44, %38, %26, %20, %13
  %66 = call i32 @shader_sampler_free(%struct.shader_sampler* %3)
  br label %67

67:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32 @shader_sampler_init(%struct.shader_sampler*) #1

declare dso_local i64 @cf_next_name(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @cf_next_token_should_be(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @cf_peek_valid_token(i32*, %struct.cf_token*) #1

declare dso_local i64 @strref_cmp(i32*, i8*) #1

declare dso_local i32 @sp_parse_sampler_state_item(%struct.shader_parser*, %struct.shader_sampler*) #1

declare dso_local i32 @da_push_back(i32, %struct.shader_sampler*) #1

declare dso_local i32 @shader_sampler_free(%struct.shader_sampler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
