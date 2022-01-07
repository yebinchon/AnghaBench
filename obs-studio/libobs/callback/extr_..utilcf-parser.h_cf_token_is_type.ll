; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utilcf-parser.h_cf_token_is_type.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utilcf-parser.h_cf_token_is_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PARSE_EOF = common dso_local global i32 0, align 4
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_parser*, i32, i8*, i8*)* @cf_token_is_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_token_is_type(%struct.cf_parser* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_parser*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.cf_parser* %0, %struct.cf_parser** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %11 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %4
  %18 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @cf_adderror_expecting(%struct.cf_parser* %18, i8* %19)
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @cf_go_to_valid_token(%struct.cf_parser* %24, i8* %25, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @PARSE_EOF, align 4
  store i32 %29, i32* %5, align 4
  br label %35

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %17
  %32 = load i32, i32* @PARSE_CONTINUE, align 4
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %31, %28
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @cf_adderror_expecting(%struct.cf_parser*, i8*) #1

declare dso_local i32 @cf_go_to_valid_token(%struct.cf_parser*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
