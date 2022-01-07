; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_param_is_whitespace.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_param_is_whitespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.cf_token* }
%struct.cf_token = type { i64 }

@CFTOKEN_NONE = common dso_local global i64 0, align 8
@CFTOKEN_SPACETAB = common dso_local global i64 0, align 8
@CFTOKEN_NEWLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macro_param*)* @param_is_whitespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @param_is_whitespace(%struct.macro_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.macro_param*, align 8
  %4 = alloca %struct.cf_token*, align 8
  %5 = alloca i64, align 8
  store %struct.macro_param* %0, %struct.macro_param** %3, align 8
  %6 = load %struct.macro_param*, %struct.macro_param** %3, align 8
  %7 = getelementptr inbounds %struct.macro_param, %struct.macro_param* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  store %struct.cf_token* %9, %struct.cf_token** %4, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %43, %1
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.macro_param*, %struct.macro_param** %3, align 8
  %13 = getelementptr inbounds %struct.macro_param, %struct.macro_param* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %10
  %18 = load %struct.cf_token*, %struct.cf_token** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %18, i64 %19
  %21 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CFTOKEN_NONE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %17
  %26 = load %struct.cf_token*, %struct.cf_token** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %26, i64 %27
  %29 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CFTOKEN_SPACETAB, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.cf_token*, %struct.cf_token** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %34, i64 %35
  %37 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CFTOKEN_NEWLINE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %47

42:                                               ; preds = %33, %25, %17
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %10

46:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
