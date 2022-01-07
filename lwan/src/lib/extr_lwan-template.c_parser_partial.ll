; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_parser_partial.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_parser_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32 }
%struct.lexeme = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lwan_tpl = type { i32 }

@LEXEME_IDENTIFIER = common dso_local global i64 0, align 8
@ACTION_APPLY_TPL = common dso_local global i32 0, align 4
@parser_right_meta = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Could not compile template ``%s''\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, %struct.lexeme*)* @parser_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parser_partial(%struct.parser* %0, %struct.lexeme* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca %struct.lexeme*, align 8
  %6 = alloca %struct.lwan_tpl*, align 8
  %7 = alloca i8*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store %struct.lexeme* %1, %struct.lexeme** %5, align 8
  %8 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %9 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %13 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @strndupa(i32 %11, i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %18 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LEXEME_IDENTIFIER, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %24 = call i8* @unexpected_lexeme(%struct.lexeme* %23)
  store i8* %24, i8** %3, align 8
  br label %43

25:                                               ; preds = %2
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.parser*, %struct.parser** %4, align 8
  %28 = getelementptr inbounds %struct.parser, %struct.parser* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.lwan_tpl* @lwan_tpl_compile_file(i8* %26, i32 %29)
  store %struct.lwan_tpl* %30, %struct.lwan_tpl** %6, align 8
  %31 = load %struct.lwan_tpl*, %struct.lwan_tpl** %6, align 8
  %32 = icmp ne %struct.lwan_tpl* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.parser*, %struct.parser** %4, align 8
  %35 = load i32, i32* @ACTION_APPLY_TPL, align 4
  %36 = load %struct.lwan_tpl*, %struct.lwan_tpl** %6, align 8
  %37 = call i32 @emit_chunk(%struct.parser* %34, i32 %35, i32 0, %struct.lwan_tpl* %36)
  %38 = load i8*, i8** @parser_right_meta, align 8
  store i8* %38, i8** %3, align 8
  br label %43

39:                                               ; preds = %25
  %40 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i8* @error_lexeme(%struct.lexeme* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %41)
  store i8* %42, i8** %3, align 8
  br label %43

43:                                               ; preds = %39, %33, %22
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

declare dso_local i8* @strndupa(i32, i32) #1

declare dso_local i8* @unexpected_lexeme(%struct.lexeme*) #1

declare dso_local %struct.lwan_tpl* @lwan_tpl_compile_file(i8*, i32) #1

declare dso_local i32 @emit_chunk(%struct.parser*, i32, i32, %struct.lwan_tpl*) #1

declare dso_local i8* @error_lexeme(%struct.lexeme*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
