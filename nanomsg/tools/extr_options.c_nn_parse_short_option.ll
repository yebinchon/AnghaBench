; ModuleID = '/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_parse_short_option.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_parse_short_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_parse_context = type { i64*, i64**, %struct.nn_option* }
%struct.nn_option = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"requires an argument\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_parse_context*)* @nn_parse_short_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_parse_short_option(%struct.nn_parse_context* %0) #0 {
  %2 = alloca %struct.nn_parse_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_option*, align 8
  store %struct.nn_parse_context* %0, %struct.nn_parse_context** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %89, %1
  %6 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %7 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %6, i32 0, i32 2
  %8 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %8, i64 %10
  store %struct.nn_option* %11, %struct.nn_option** %4, align 8
  %12 = load %struct.nn_option*, %struct.nn_option** %4, align 8
  %13 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  br label %92

17:                                               ; preds = %5
  %18 = load %struct.nn_option*, %struct.nn_option** %4, align 8
  %19 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %89

23:                                               ; preds = %17
  %24 = load %struct.nn_option*, %struct.nn_option** %4, align 8
  %25 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %28 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %88

32:                                               ; preds = %23
  %33 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %34 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %37 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %36, i32 0, i32 1
  %38 = load i64**, i64*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64*, i64** %38, i64 %40
  store i64* %35, i64** %41, align 8
  %42 = load %struct.nn_option*, %struct.nn_option** %4, align 8
  %43 = call i64 @nn_has_arg(%struct.nn_option* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %32
  %46 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %47 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %56 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = call i32 @nn_process_option(%struct.nn_parse_context* %53, i32 %54, i64* %58)
  br label %76

60:                                               ; preds = %45
  %61 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %62 = call i64 @nn_get_arg(%struct.nn_parse_context* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %68 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = call i32 @nn_process_option(%struct.nn_parse_context* %65, i32 %66, i64* %69)
  br label %75

71:                                               ; preds = %60
  %72 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @nn_option_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.nn_parse_context* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %64
  br label %76

76:                                               ; preds = %75, %52
  %77 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %78 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %77, i32 0, i32 0
  store i64* bitcast ([1 x i8]* @.str.1 to i64*), i64** %78, align 8
  br label %87

79:                                               ; preds = %32
  %80 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @nn_process_option(%struct.nn_parse_context* %80, i32 %81, i64* null)
  %83 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %84 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  store i64* %86, i64** %84, align 8
  br label %87

87:                                               ; preds = %79, %76
  br label %95

88:                                               ; preds = %23
  br label %89

89:                                               ; preds = %88, %22
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %5

92:                                               ; preds = %16
  %93 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %94 = call i32 @nn_error_unknown_short_option(%struct.nn_parse_context* %93)
  br label %95

95:                                               ; preds = %92, %87
  ret void
}

declare dso_local i64 @nn_has_arg(%struct.nn_option*) #1

declare dso_local i32 @nn_process_option(%struct.nn_parse_context*, i32, i64*) #1

declare dso_local i64 @nn_get_arg(%struct.nn_parse_context*) #1

declare dso_local i32 @nn_option_error(i8*, %struct.nn_parse_context*, i32) #1

declare dso_local i32 @nn_error_unknown_short_option(%struct.nn_parse_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
