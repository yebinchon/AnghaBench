; ModuleID = '/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_check_requires.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_check_requires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_parse_context = type { i32, i32, i8**, i32*, %struct.nn_option* }
%struct.nn_option = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: At least one of the following required:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_check_requires(%struct.nn_parse_context* %0) #0 {
  %2 = alloca %struct.nn_parse_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_option*, align 8
  store %struct.nn_parse_context* %0, %struct.nn_parse_context** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %49, %1
  %6 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %7 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %6, i32 0, i32 4
  %8 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %8, i64 %10
  store %struct.nn_option* %11, %struct.nn_option** %4, align 8
  %12 = load %struct.nn_option*, %struct.nn_option** %4, align 8
  %13 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  br label %52

17:                                               ; preds = %5
  %18 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %19 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %49

27:                                               ; preds = %17
  %28 = load %struct.nn_option*, %struct.nn_option** %4, align 8
  %29 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.nn_option*, %struct.nn_option** %4, align 8
  %34 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %37 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %35, %38
  %40 = load %struct.nn_option*, %struct.nn_option** %4, align 8
  %41 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @nn_option_requires(%struct.nn_parse_context* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %32, %27
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %5

52:                                               ; preds = %16
  %53 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %54 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %57 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %55, %58
  %60 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %61 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %52
  %65 = load i32, i32* @stderr, align 4
  %66 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %67 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %66, i32 0, i32 2
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @fprintf(i32 %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %70)
  %72 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %73 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %74 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %77 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = xor i32 %78, -1
  %80 = and i32 %75, %79
  %81 = call i32 @nn_print_requires(%struct.nn_parse_context* %72, i32 %80)
  %82 = call i32 @exit(i32 1) #3
  unreachable

83:                                               ; preds = %52
  ret void
}

declare dso_local i32 @nn_option_requires(%struct.nn_parse_context*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @nn_print_requires(%struct.nn_parse_context*, i32) #1

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
