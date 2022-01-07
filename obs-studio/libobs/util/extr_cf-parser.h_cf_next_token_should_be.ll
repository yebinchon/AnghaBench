; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-parser.h_cf_next_token_should_be.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-parser.h_cf_next_token_should_be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PARSE_EOF = common dso_local global i32 0, align 4
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_parser*, i8*, i8*, i8*)* @cf_next_token_should_be to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_next_token_should_be(%struct.cf_parser* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_parser*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.cf_parser* %0, %struct.cf_parser** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %11 = call i32 @cf_next_token(%struct.cf_parser* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %15 = call i32 @cf_adderror_unexpected_eof(%struct.cf_parser* %14)
  %16 = load i32, i32* @PARSE_EOF, align 4
  store i32 %16, i32* %5, align 4
  br label %45

17:                                               ; preds = %4
  %18 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %19 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strref_cmp(i32* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %26, i32* %5, align 4
  br label %45

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @cf_go_to_token(%struct.cf_parser* %32, i8* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @PARSE_EOF, align 4
  store i32 %38, i32* %5, align 4
  br label %45

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @cf_adderror_expecting(%struct.cf_parser* %41, i8* %42)
  %44 = load i32, i32* @PARSE_CONTINUE, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %37, %25, %13
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @cf_next_token(%struct.cf_parser*) #1

declare dso_local i32 @cf_adderror_unexpected_eof(%struct.cf_parser*) #1

declare dso_local i64 @strref_cmp(i32*, i8*) #1

declare dso_local i32 @cf_go_to_token(%struct.cf_parser*, i8*, i8*) #1

declare dso_local i32 @cf_adderror_expecting(%struct.cf_parser*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
