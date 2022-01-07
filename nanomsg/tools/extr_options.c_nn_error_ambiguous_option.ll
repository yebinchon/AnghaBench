; ModuleID = '/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_error_ambiguous_option.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_error_ambiguous_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_parse_context = type { i8*, i8**, %struct.nn_option* }
%struct.nn_option = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: Ambiguous option ``%s'':\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_parse_context*)* @nn_error_ambiguous_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_error_ambiguous_option(%struct.nn_parse_context* %0) #0 {
  %2 = alloca %struct.nn_parse_context*, align 8
  %3 = alloca %struct.nn_option*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.nn_parse_context* %0, %struct.nn_parse_context** %2, align 8
  %7 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %8 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %10, i8** %6, align 8
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %13 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %12, i32 0, i32 1
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %18 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %19)
  %21 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %22 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %21, i32 0, i32 2
  %23 = load %struct.nn_option*, %struct.nn_option** %22, align 8
  store %struct.nn_option* %23, %struct.nn_option** %3, align 8
  br label %24

24:                                               ; preds = %67, %1
  %25 = load %struct.nn_option*, %struct.nn_option** %3, align 8
  %26 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %70

29:                                               ; preds = %24
  %30 = load %struct.nn_option*, %struct.nn_option** %3, align 8
  %31 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %5, align 8
  br label %34

34:                                               ; preds = %61, %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 61
  br i1 %43, label %44, label %50

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @stderr, align 4
  %46 = load %struct.nn_option*, %struct.nn_option** %3, align 8
  %47 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %66

50:                                               ; preds = %39
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8*, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %66

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  br label %34

66:                                               ; preds = %58, %44
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.nn_option*, %struct.nn_option** %3, align 8
  %69 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %68, i32 1
  store %struct.nn_option* %69, %struct.nn_option** %3, align 8
  br label %24

70:                                               ; preds = %24
  %71 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

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
