; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_define.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i32, i64 }
%struct.cf_token = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.cf_def = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@CFTOKEN_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@CFTOKEN_NEWLINE = common dso_local global i64 0, align 8
@CFTOKEN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_preprocessor*, %struct.cf_token**)* @cf_preprocess_define to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_preprocess_define(%struct.cf_preprocessor* %0, %struct.cf_token** %1) #0 {
  %3 = alloca %struct.cf_preprocessor*, align 8
  %4 = alloca %struct.cf_token**, align 8
  %5 = alloca %struct.cf_token*, align 8
  %6 = alloca %struct.cf_def, align 4
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %3, align 8
  store %struct.cf_token** %1, %struct.cf_token*** %4, align 8
  %7 = load %struct.cf_token**, %struct.cf_token*** %4, align 8
  %8 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  store %struct.cf_token* %8, %struct.cf_token** %5, align 8
  %9 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %10 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.cf_token**, %struct.cf_token*** %4, align 8
  %15 = call i32 @go_to_newline(%struct.cf_token** %14)
  br label %92

16:                                               ; preds = %2
  %17 = call i32 @cf_def_init(%struct.cf_def* %6)
  %18 = call i32 @next_token(%struct.cf_token** %5, i32 1)
  %19 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %20 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CFTOKEN_NAME, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %26 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %27 = call i32 @cf_adderror_expecting(%struct.cf_preprocessor* %25, %struct.cf_token* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @go_to_newline(%struct.cf_token** %5)
  br label %89

29:                                               ; preds = %16
  %30 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %31 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %6, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @append_space(%struct.cf_preprocessor* %30, i32* %32, i32* null)
  %34 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %6, i32 0, i32 1
  %35 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %36 = call i32 @cf_token_copy(i32* %34, %struct.cf_token* %35)
  %37 = call i32 @next_token(%struct.cf_token** %5, i32 1)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %75

40:                                               ; preds = %29
  %41 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %42 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 40
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %50 = call i32 @cf_preprocess_macro_params(%struct.cf_preprocessor* %49, %struct.cf_def* %6, %struct.cf_token** %5)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %87

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %69, %54
  %56 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %57 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CFTOKEN_NEWLINE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %63 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CFTOKEN_NONE, align 8
  %66 = icmp ne i64 %64, %65
  br label %67

67:                                               ; preds = %61, %55
  %68 = phi i1 [ false, %55 ], [ %66, %61 ]
  br i1 %68, label %69, label %74

69:                                               ; preds = %67
  %70 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %71 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %70, i32 1
  store %struct.cf_token* %71, %struct.cf_token** %5, align 8
  %72 = ptrtoint %struct.cf_token* %70 to i32
  %73 = call i32 @cf_def_addtoken(%struct.cf_def* %6, i32 %72)
  br label %55

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %39
  %76 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %6, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i32 @append_end_token(i32* %77)
  %79 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %80 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %6, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @append_space(%struct.cf_preprocessor* %79, i32* %81, i32* null)
  %83 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %84 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @da_push_back(i32 %85, %struct.cf_def* %6)
  br label %89

87:                                               ; preds = %52
  %88 = call i32 @cf_def_free(%struct.cf_def* %6)
  br label %89

89:                                               ; preds = %87, %75, %24
  %90 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %91 = load %struct.cf_token**, %struct.cf_token*** %4, align 8
  store %struct.cf_token* %90, %struct.cf_token** %91, align 8
  br label %92

92:                                               ; preds = %89, %13
  ret void
}

declare dso_local i32 @go_to_newline(%struct.cf_token**) #1

declare dso_local i32 @cf_def_init(%struct.cf_def*) #1

declare dso_local i32 @next_token(%struct.cf_token**, i32) #1

declare dso_local i32 @cf_adderror_expecting(%struct.cf_preprocessor*, %struct.cf_token*, i8*) #1

declare dso_local i32 @append_space(%struct.cf_preprocessor*, i32*, i32*) #1

declare dso_local i32 @cf_token_copy(i32*, %struct.cf_token*) #1

declare dso_local i32 @cf_preprocess_macro_params(%struct.cf_preprocessor*, %struct.cf_def*, %struct.cf_token**) #1

declare dso_local i32 @cf_def_addtoken(%struct.cf_def*, i32) #1

declare dso_local i32 @append_end_token(i32*) #1

declare dso_local i32 @da_push_back(i32, %struct.cf_def*) #1

declare dso_local i32 @cf_def_free(%struct.cf_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
