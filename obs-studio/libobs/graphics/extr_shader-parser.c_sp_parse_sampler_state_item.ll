; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_sampler_state_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_sampler_state_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_parser = type { i32 }
%struct.shader_sampler = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"state name\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shader_parser*, %struct.shader_sampler*)* @sp_parse_sampler_state_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_parse_sampler_state_item(%struct.shader_parser* %0, %struct.shader_sampler* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shader_parser*, align 8
  %5 = alloca %struct.shader_sampler*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.shader_parser* %0, %struct.shader_parser** %4, align 8
  store %struct.shader_sampler* %1, %struct.shader_sampler** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %10 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %9, i32 0, i32 0
  %11 = call i32 @cf_next_name(i32* %10, i8** %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @PARSE_SUCCESS, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %18 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %17, i32 0, i32 0
  %19 = call i32 @cf_next_token_should_be(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PARSE_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %50

24:                                               ; preds = %16
  %25 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %26 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %25, i32 0, i32 0
  %27 = call i32 @cf_next_token_copy(i32* %26, i8** %8)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PARSE_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %50

32:                                               ; preds = %24
  %33 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %34 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %33, i32 0, i32 0
  %35 = call i32 @cf_next_token_should_be(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PARSE_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %50

40:                                               ; preds = %32
  %41 = load %struct.shader_sampler*, %struct.shader_sampler** %5, align 8
  %42 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @da_push_back(i32 %43, i8** %7)
  %45 = load %struct.shader_sampler*, %struct.shader_sampler** %5, align 8
  %46 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @da_push_back(i32 %47, i8** %8)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %56

50:                                               ; preds = %39, %31, %23, %15
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @bfree(i8* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @bfree(i8* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %40
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @cf_next_name(i32*, i8**, i8*, i8*) #1

declare dso_local i32 @cf_next_token_should_be(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @cf_next_token_copy(i32*, i8**) #1

declare dso_local i32 @da_push_back(i32, i8**) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
