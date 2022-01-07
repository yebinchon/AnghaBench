; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_parser = type { i32, i32 }
%struct.shader_var = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_parser*, i8*, i8*, i32, i32)* @sp_parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp_parse_param(%struct.shader_parser* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.shader_parser*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.shader_var, align 4
  store %struct.shader_parser* %0, %struct.shader_parser** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @shader_var_init_param(%struct.shader_var* %11, i8* %12, i8* %13, i32 %14, i32 %15)
  %17 = load %struct.shader_parser*, %struct.shader_parser** %6, align 8
  %18 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %17, i32 0, i32 1
  %19 = call i64 @cf_token_is(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %49

22:                                               ; preds = %5
  %23 = load %struct.shader_parser*, %struct.shader_parser** %6, align 8
  %24 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %23, i32 0, i32 1
  %25 = call i64 @cf_token_is(i32* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.shader_parser*, %struct.shader_parser** %6, align 8
  %29 = call i32 @sp_parse_param_array(%struct.shader_parser* %28, %struct.shader_var* %11)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %54

32:                                               ; preds = %27, %22
  %33 = load %struct.shader_parser*, %struct.shader_parser** %6, align 8
  %34 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %33, i32 0, i32 1
  %35 = call i64 @cf_token_is(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.shader_parser*, %struct.shader_parser** %6, align 8
  %39 = call i32 @sp_parse_param_assign(%struct.shader_parser* %38, %struct.shader_var* %11)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %54

42:                                               ; preds = %37, %32
  %43 = load %struct.shader_parser*, %struct.shader_parser** %6, align 8
  %44 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %43, i32 0, i32 1
  %45 = call i64 @cf_token_is(i32* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %54

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %21
  %50 = load %struct.shader_parser*, %struct.shader_parser** %6, align 8
  %51 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @da_push_back(i32 %52, %struct.shader_var* %11)
  br label %56

54:                                               ; preds = %47, %41, %31
  %55 = call i32 @shader_var_free(%struct.shader_var* %11)
  br label %56

56:                                               ; preds = %54, %49
  ret void
}

declare dso_local i32 @shader_var_init_param(%struct.shader_var*, i8*, i8*, i32, i32) #1

declare dso_local i64 @cf_token_is(i32*, i8*) #1

declare dso_local i32 @sp_parse_param_array(%struct.shader_parser*, %struct.shader_var*) #1

declare dso_local i32 @sp_parse_param_assign(%struct.shader_parser*, %struct.shader_var*) #1

declare dso_local i32 @da_push_back(i32, %struct.shader_var*) #1

declare dso_local i32 @shader_var_free(%struct.shader_var*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
