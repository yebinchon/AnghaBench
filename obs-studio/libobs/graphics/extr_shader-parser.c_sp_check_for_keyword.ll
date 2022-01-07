; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_check_for_keyword.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_check_for_keyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_parser = type { i32 }

@PARSE_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"'$1' keyword already specified\00", align 1
@LEX_WARNING = common dso_local global i32 0, align 4
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shader_parser*, i8*, i32*)* @sp_check_for_keyword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_check_for_keyword(%struct.shader_parser* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shader_parser*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.shader_parser* %0, %struct.shader_parser** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.shader_parser*, %struct.shader_parser** %5, align 8
  %10 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %9, i32 0, i32 0
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @cf_token_is(i32* %10, i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load %struct.shader_parser*, %struct.shader_parser** %5, align 8
  %17 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %16, i32 0, i32 0
  %18 = call i32 @cf_next_valid_token(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @PARSE_EOF, align 4
  store i32 %21, i32* %4, align 4
  br label %41

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.shader_parser*, %struct.shader_parser** %5, align 8
  %31 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %30, i32 0, i32 0
  %32 = load i32, i32* @LEX_WARNING, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @cf_adderror(i32* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %33, i32* null, i32* null)
  br label %35

35:                                               ; preds = %29, %25, %22
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @PARSE_CONTINUE, align 4
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %35, %20
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @cf_token_is(i32*, i8*) #1

declare dso_local i32 @cf_next_valid_token(i32*) #1

declare dso_local i32 @cf_adderror(i32*, i8*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
