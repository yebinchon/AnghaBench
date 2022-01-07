; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_struct.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_parser = type { i32, i32 }
%struct.shader_struct = type { i32, i32 }
%struct.shader_var = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@PARSE_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_parser*)* @sp_parse_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp_parse_struct(%struct.shader_parser* %0) #0 {
  %2 = alloca %struct.shader_parser*, align 8
  %3 = alloca %struct.shader_struct, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.shader_var, align 4
  store %struct.shader_parser* %0, %struct.shader_parser** %2, align 8
  %6 = bitcast %struct.shader_struct* %3 to %struct.shader_var*
  %7 = call i32 @shader_struct_init(%struct.shader_var* %6)
  %8 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %9 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.shader_struct, %struct.shader_struct* %3, i32 0, i32 1
  %11 = call i64 @cf_next_name(i32* %9, i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i64, i64* @PARSE_SUCCESS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %62

15:                                               ; preds = %1
  %16 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %17 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %16, i32 0, i32 1
  %18 = call i64 @cf_next_token_should_be(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %19 = load i64, i64* @PARSE_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %62

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %31, %45
  store i32 0, i32* %4, align 4
  %24 = call i32 @shader_var_init(%struct.shader_var* %5)
  %25 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %26 = call i32 @sp_parse_struct_var(%struct.shader_parser* %25, %struct.shader_var* %5)
  switch i32 %26, label %41 [
    i32 128, label %27
    i32 131, label %31
    i32 129, label %33
    i32 132, label %37
    i32 130, label %39
  ]

27:                                               ; preds = %23
  %28 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %29 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %28, i32 0, i32 1
  %30 = call i32 @cf_adderror_syntax_error(i32* %29)
  br label %31

31:                                               ; preds = %23, %27
  %32 = call i32 @shader_var_free(%struct.shader_var* %5)
  br label %23

33:                                               ; preds = %23
  %34 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %35 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %34, i32 0, i32 1
  %36 = call i32 @cf_adderror_syntax_error(i32* %35)
  br label %37

37:                                               ; preds = %23, %33
  %38 = call i32 @shader_var_free(%struct.shader_var* %5)
  store i32 1, i32* %4, align 4
  br label %41

39:                                               ; preds = %23
  %40 = call i32 @shader_var_free(%struct.shader_var* %5)
  br label %62

41:                                               ; preds = %23, %37
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.shader_struct, %struct.shader_struct* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @da_push_back(i32 %47, %struct.shader_var* %5)
  br label %23

49:                                               ; preds = %44
  %50 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %51 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %50, i32 0, i32 1
  %52 = call i64 @cf_next_token_should_be(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* null, i32* null)
  %53 = load i64, i64* @PARSE_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %62

56:                                               ; preds = %49
  %57 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %58 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = bitcast %struct.shader_struct* %3 to %struct.shader_var*
  %61 = call i32 @da_push_back(i32 %59, %struct.shader_var* %60)
  br label %65

62:                                               ; preds = %55, %39, %21, %14
  %63 = bitcast %struct.shader_struct* %3 to %struct.shader_var*
  %64 = call i32 @shader_struct_free(%struct.shader_var* %63)
  br label %65

65:                                               ; preds = %62, %56
  ret void
}

declare dso_local i32 @shader_struct_init(%struct.shader_var*) #1

declare dso_local i64 @cf_next_name(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @cf_next_token_should_be(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @shader_var_init(%struct.shader_var*) #1

declare dso_local i32 @sp_parse_struct_var(%struct.shader_parser*, %struct.shader_var*) #1

declare dso_local i32 @cf_adderror_syntax_error(i32*) #1

declare dso_local i32 @shader_var_free(%struct.shader_var*) #1

declare dso_local i32 @da_push_back(i32, %struct.shader_var*) #1

declare dso_local i32 @shader_struct_free(%struct.shader_var*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
