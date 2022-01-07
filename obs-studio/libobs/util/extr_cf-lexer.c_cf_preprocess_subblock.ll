; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_subblock.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_subblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i32 }
%struct.cf_token = type { i64 }

@CFTOKEN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_preprocessor*, i32, %struct.cf_token**)* @cf_preprocess_subblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_preprocess_subblock(%struct.cf_preprocessor* %0, i32 %1, %struct.cf_token** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_preprocessor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cf_token**, align 8
  %8 = alloca i32, align 4
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cf_token** %2, %struct.cf_token*** %7, align 8
  %9 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  %10 = call i32 @next_token(%struct.cf_token** %9, i32 1)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

13:                                               ; preds = %3
  %14 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %5, align 8
  %15 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %5, align 8
  %21 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %5, align 8
  %23 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  %24 = call i32 @cf_preprocess_tokens(%struct.cf_preprocessor* %22, i32 1, %struct.cf_token** %23)
  %25 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %5, align 8
  %26 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %31

27:                                               ; preds = %13
  %28 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %5, align 8
  %29 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  %30 = call i32 @cf_preprocess_tokens(%struct.cf_preprocessor* %28, i32 1, %struct.cf_token** %29)
  br label %31

31:                                               ; preds = %27, %18
  %32 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  %33 = load %struct.cf_token*, %struct.cf_token** %32, align 8
  %34 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CFTOKEN_NONE, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %5, align 8
  %43 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  %44 = load %struct.cf_token*, %struct.cf_token** %43, align 8
  %45 = call i32 @cf_adderror_unexpected_endif_eof(%struct.cf_preprocessor* %42, %struct.cf_token* %44)
  br label %46

46:                                               ; preds = %41, %31
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %12
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @next_token(%struct.cf_token**, i32) #1

declare dso_local i32 @cf_preprocess_tokens(%struct.cf_preprocessor*, i32, %struct.cf_token**) #1

declare dso_local i32 @cf_adderror_unexpected_endif_eof(%struct.cf_preprocessor*, %struct.cf_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
