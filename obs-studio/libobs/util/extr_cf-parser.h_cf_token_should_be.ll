; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-parser.h_cf_token_should_be.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-parser.h_cf_token_should_be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PARSE_SUCCESS = common dso_local global i32 0, align 4
@PARSE_EOF = common dso_local global i32 0, align 4
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_parser*, i8*, i8*, i8*)* @cf_token_should_be to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_token_should_be(%struct.cf_parser* %0, i8* %1, i8* %2, i8* %3) #0 {
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
  %11 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strref_cmp(i32* %13, i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %18, i32* %5, align 4
  br label %36

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @cf_go_to_token(%struct.cf_parser* %23, i8* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @PARSE_EOF, align 4
  store i32 %29, i32* %5, align 4
  br label %36

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @cf_adderror_expecting(%struct.cf_parser* %32, i8* %33)
  %35 = load i32, i32* @PARSE_CONTINUE, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %28, %17
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @strref_cmp(i32*, i8*) #1

declare dso_local i32 @cf_go_to_token(%struct.cf_parser*, i8*, i8*) #1

declare dso_local i32 @cf_adderror_expecting(%struct.cf_parser*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
