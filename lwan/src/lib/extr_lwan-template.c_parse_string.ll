; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_parse_string.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_tpl = type { i32 }
%struct.lwan_var_descriptor = type { i32 }
%struct.parser = type { i32, i32, %struct.lwan_var_descriptor*, i32*, %struct.lwan_tpl* }
%struct.lexeme = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_tpl*, i8*, %struct.lwan_var_descriptor*, i32)* @parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_string(%struct.lwan_tpl* %0, i8* %1, %struct.lwan_var_descriptor* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lwan_tpl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lwan_var_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.parser, align 8
  %11 = alloca i8* (%struct.parser*, %struct.lexeme*)*, align 8
  %12 = alloca %struct.lexeme*, align 8
  store %struct.lwan_tpl* %0, %struct.lwan_tpl** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.lwan_var_descriptor* %2, %struct.lwan_var_descriptor** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds %struct.parser, %struct.parser* %10, i32 0, i32 0
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.parser, %struct.parser* %10, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.parser, %struct.parser* %10, i32 0, i32 2
  %17 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %8, align 8
  store %struct.lwan_var_descriptor* %17, %struct.lwan_var_descriptor** %16, align 8
  %18 = getelementptr inbounds %struct.parser, %struct.parser* %10, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.parser, %struct.parser* %10, i32 0, i32 4
  %20 = load %struct.lwan_tpl*, %struct.lwan_tpl** %6, align 8
  store %struct.lwan_tpl* %20, %struct.lwan_tpl** %19, align 8
  store i8* (%struct.parser*, %struct.lexeme*)* @parser_text, i8* (%struct.parser*, %struct.lexeme*)** %11, align 8
  %21 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @parser_init(%struct.parser* %10, %struct.lwan_var_descriptor* %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %43

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %35, %26
  %28 = load i8* (%struct.parser*, %struct.lexeme*)*, i8* (%struct.parser*, %struct.lexeme*)** %11, align 8
  %29 = icmp ne i8* (%struct.parser*, %struct.lexeme*)* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.parser, %struct.parser* %10, i32 0, i32 1
  %32 = call %struct.lexeme* @lex_next(i32* %31)
  store %struct.lexeme* %32, %struct.lexeme** %12, align 8
  %33 = icmp ne %struct.lexeme* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %40

35:                                               ; preds = %30
  %36 = load i8* (%struct.parser*, %struct.lexeme*)*, i8* (%struct.parser*, %struct.lexeme*)** %11, align 8
  %37 = load %struct.lexeme*, %struct.lexeme** %12, align 8
  %38 = call i8* %36(%struct.parser* %10, %struct.lexeme* %37)
  %39 = bitcast i8* %38 to i8* (%struct.parser*, %struct.lexeme*)*
  store i8* (%struct.parser*, %struct.lexeme*)* %39, i8* (%struct.parser*, %struct.lexeme*)** %11, align 8
  br label %27

40:                                               ; preds = %34, %27
  %41 = load %struct.lexeme*, %struct.lexeme** %12, align 8
  %42 = call i32 @parser_shutdown(%struct.parser* %10, %struct.lexeme* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %25
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i8* @parser_text(%struct.parser*, %struct.lexeme*) #1

declare dso_local i32 @parser_init(%struct.parser*, %struct.lwan_var_descriptor*, i8*) #1

declare dso_local %struct.lexeme* @lex_next(i32*) #1

declare dso_local i32 @parser_shutdown(%struct.parser*, %struct.lexeme*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
