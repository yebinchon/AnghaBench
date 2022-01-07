; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_get_var_specifiers.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_get_var_specifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_parser = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"const\00", align 1
@PARSE_EOF = common dso_local global i32 0, align 4
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shader_parser*, i32*, i32*)* @sp_get_var_specifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_get_var_specifiers(%struct.shader_parser* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shader_parser*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.shader_parser* %0, %struct.shader_parser** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  br label %9

9:                                                ; preds = %3, %21, %35
  %10 = load %struct.shader_parser*, %struct.shader_parser** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @sp_check_for_keyword(%struct.shader_parser* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @PARSE_EOF, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %39

17:                                               ; preds = %9
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PARSE_CONTINUE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %9

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.shader_parser*, %struct.shader_parser** %5, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @sp_check_for_keyword(%struct.shader_parser* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PARSE_EOF, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %39

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @PARSE_CONTINUE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %9

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %30, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @sp_check_for_keyword(%struct.shader_parser*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
