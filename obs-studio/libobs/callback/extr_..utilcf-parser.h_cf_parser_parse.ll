; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utilcf-parser.h_cf_parser_parse.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utilcf-parser.h_cf_parser_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_parser*, i8*, i8*)* @cf_parser_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_parser_parse(%struct.cf_parser* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_parser*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.cf_parser* %0, %struct.cf_parser** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %9 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %8, i32 0, i32 3
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @cf_lexer_lex(i32* %9, i8* %10, i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

15:                                               ; preds = %3
  %16 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %17 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %16, i32 0, i32 0
  %18 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %19 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %18, i32 0, i32 3
  %20 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %21 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %20, i32 0, i32 2
  %22 = call i32 @cf_preprocess(i32* %17, i32* %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %31

25:                                               ; preds = %15
  %26 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %27 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %26, i32 0, i32 0
  %28 = call i32 @cf_preprocessor_get_tokens(i32* %27)
  %29 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %30 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %24, %14
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @cf_lexer_lex(i32*, i8*, i8*) #1

declare dso_local i32 @cf_preprocess(i32*, i32*, i32*) #1

declare dso_local i32 @cf_preprocessor_get_tokens(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
