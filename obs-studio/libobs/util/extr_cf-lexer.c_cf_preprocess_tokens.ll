; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_tokens.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_tokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cf_token = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@CFTOKEN_NONE = common dso_local global i64 0, align 8
@CFTOKEN_SPACETAB = common dso_local global i64 0, align 8
@CFTOKEN_NEWLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_preprocessor*, i32, %struct.cf_token**)* @cf_preprocess_tokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_preprocess_tokens(%struct.cf_preprocessor* %0, i32 %1, %struct.cf_token** %2) #0 {
  %4 = alloca %struct.cf_preprocessor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_token**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cf_token*, align 8
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cf_token** %2, %struct.cf_token*** %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.cf_token**, %struct.cf_token*** %6, align 8
  %12 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  store %struct.cf_token* %12, %struct.cf_token** %9, align 8
  br label %13

13:                                               ; preds = %77, %60, %3
  %14 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %15 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CFTOKEN_NONE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %83

19:                                               ; preds = %13
  %20 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %21 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CFTOKEN_SPACETAB, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %19
  %26 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %27 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CFTOKEN_NEWLINE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %4, align 8
  %36 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %37 = call i32 @cf_adderror_expected_newline(%struct.cf_preprocessor* %35, %struct.cf_token* %36)
  %38 = call i32 @go_to_newline(%struct.cf_token** %9)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %83

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %47 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 35
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = call i32 @next_token(%struct.cf_token** %9, i32 1)
  store i32 1, i32* %8, align 4
  %55 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @cf_preprocessor(%struct.cf_preprocessor* %55, i32 %56, %struct.cf_token** %9)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %83

60:                                               ; preds = %53
  br label %13

61:                                               ; preds = %45, %42
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %25, %19
  %63 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %64 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CFTOKEN_NEWLINE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %77

69:                                               ; preds = %62
  %70 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %71 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CFTOKEN_NONE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %83

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %68
  %78 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %4, align 8
  %79 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %4, align 8
  %80 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @cf_preprocess_addtoken(%struct.cf_preprocessor* %78, i32* %81, %struct.cf_token** %9, i32* null, i32* null)
  br label %13

83:                                               ; preds = %75, %59, %40, %13
  %84 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %85 = load %struct.cf_token**, %struct.cf_token*** %6, align 8
  store %struct.cf_token* %84, %struct.cf_token** %85, align 8
  ret void
}

declare dso_local i32 @cf_adderror_expected_newline(%struct.cf_preprocessor*, %struct.cf_token*) #1

declare dso_local i32 @go_to_newline(%struct.cf_token**) #1

declare dso_local i32 @next_token(%struct.cf_token**, i32) #1

declare dso_local i32 @cf_preprocessor(%struct.cf_preprocessor*, i32, %struct.cf_token**) #1

declare dso_local i32 @cf_preprocess_addtoken(%struct.cf_preprocessor*, i32*, %struct.cf_token**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
