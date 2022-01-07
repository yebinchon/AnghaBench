; ModuleID = '/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_option_conflict.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_option_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_parse_context = type { i8**, i64*, %struct.nn_option* }
%struct.nn_option = type { i64, i64, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s: Option\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"conflicts with the following options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_parse_context*, i32)* @nn_option_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_option_conflict(%struct.nn_parse_context* %0, i32 %1) #0 {
  %3 = alloca %struct.nn_parse_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nn_option*, align 8
  store %struct.nn_parse_context* %0, %struct.nn_parse_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @stderr, align 4
  %10 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %11 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @nn_print_option(%struct.nn_parse_context* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %23 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %22, i32 0, i32 2
  %24 = load %struct.nn_option*, %struct.nn_option** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %24, i64 %26
  %28 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %75, %2
  %31 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %32 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %31, i32 0, i32 2
  %33 = load %struct.nn_option*, %struct.nn_option** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %33, i64 %35
  store %struct.nn_option* %36, %struct.nn_option** %8, align 8
  %37 = load %struct.nn_option*, %struct.nn_option** %8, align 8
  %38 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  br label %78

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %75

47:                                               ; preds = %42
  %48 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %49 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %47
  %57 = load %struct.nn_option*, %struct.nn_option** %8, align 8
  %58 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 @nn_print_option(%struct.nn_parse_context* %68, i32 %69, i32 %70)
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %63, %56, %47
  br label %75

75:                                               ; preds = %74, %46
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %30

78:                                               ; preds = %41
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @stderr, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 @nn_print_option(%struct.nn_parse_context* %84, i32 %85, i32 %86)
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %81, %78
  %91 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @nn_print_option(%struct.nn_parse_context*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
