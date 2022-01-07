; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_ifdef.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_ifdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i32 }
%struct.cf_token = type { i64, i32 }
%struct.cf_def = type { i32 }

@CFTOKEN_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_preprocessor*, i32, %struct.cf_token**)* @cf_preprocess_ifdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_preprocess_ifdef(%struct.cf_preprocessor* %0, i32 %1, %struct.cf_token** %2) #0 {
  %4 = alloca %struct.cf_preprocessor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_token**, align 8
  %7 = alloca %struct.cf_token*, align 8
  %8 = alloca %struct.cf_def*, align 8
  %9 = alloca i32, align 4
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cf_token** %2, %struct.cf_token*** %6, align 8
  %10 = load %struct.cf_token**, %struct.cf_token*** %6, align 8
  %11 = load %struct.cf_token*, %struct.cf_token** %10, align 8
  store %struct.cf_token* %11, %struct.cf_token** %7, align 8
  %12 = call i32 @next_token(%struct.cf_token** %7, i32 1)
  %13 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %14 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CFTOKEN_NAME, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %4, align 8
  %20 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %21 = call i32 @cf_adderror_expecting(%struct.cf_preprocessor* %19, %struct.cf_token* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @go_to_newline(%struct.cf_token** %7)
  br label %57

23:                                               ; preds = %3
  %24 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %4, align 8
  %25 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %26 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %25, i32 0, i32 1
  %27 = call %struct.cf_def* @cf_preprocess_get_def(%struct.cf_preprocessor* %24, i32* %26)
  store %struct.cf_def* %27, %struct.cf_def** %8, align 8
  %28 = load %struct.cf_def*, %struct.cf_def** %8, align 8
  %29 = icmp eq %struct.cf_def* %28, null
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @cf_preprocess_subblock(%struct.cf_preprocessor* %34, i32 %38, %struct.cf_token** %7)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %23
  br label %57

42:                                               ; preds = %23
  %43 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %44 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %43, i32 0, i32 1
  %45 = call i64 @strref_cmp(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @cf_preprocess_subblock(%struct.cf_preprocessor* %48, i32 %49, %struct.cf_token** %7)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %57

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %42
  %55 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %56 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %55, i32 1
  store %struct.cf_token* %56, %struct.cf_token** %7, align 8
  br label %57

57:                                               ; preds = %54, %52, %41, %18
  %58 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %59 = load %struct.cf_token**, %struct.cf_token*** %6, align 8
  store %struct.cf_token* %58, %struct.cf_token** %59, align 8
  ret void
}

declare dso_local i32 @next_token(%struct.cf_token**, i32) #1

declare dso_local i32 @cf_adderror_expecting(%struct.cf_preprocessor*, %struct.cf_token*, i8*) #1

declare dso_local i32 @go_to_newline(%struct.cf_token**) #1

declare dso_local %struct.cf_def* @cf_preprocess_get_def(%struct.cf_preprocessor*, i32*) #1

declare dso_local i32 @cf_preprocess_subblock(%struct.cf_preprocessor*, i32, %struct.cf_token**) #1

declare dso_local i64 @strref_cmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
