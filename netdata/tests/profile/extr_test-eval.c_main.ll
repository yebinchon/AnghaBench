; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_test-eval.c_main.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_test-eval.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"I need an epxression (enclose it in single-quotes (') as a single parameter)\0A\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"\0APARSING FAILED\0AExpression: '%s'\0AParsing stopped at: '%s'\0AParsing error code: %d (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"<END OF EXPRESSION>\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"<NONE>\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"\0APARSING OK\0AExpression: '%s'\0AParsed as : '%s'\0AParsing error code: %d (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\0AEvaluates to: %Lf\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"\0AEvaluation failed with code %d and message: %s\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %2
  store i8* null, i8** %6, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call %struct.TYPE_5__* @expression_parse(i8* %18, i8** %6, i32* %7)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %8, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %15
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  br label %36

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i8* [ %34, %33 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %35 ]
  br label %39

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i8* [ %37, %36 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %38 ]
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @expression_strerror(i32 %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %40, i32 %41, i8* %43)
  br label %76

45:                                               ; preds = %15
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i8* @expression_strerror(i32 %53)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i8* %48, i8* %51, i32 %52, i8* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = call i64 @expression_evaluate(%struct.TYPE_5__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  br label %73

64:                                               ; preds = %45
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @buffer_tostring(i32 %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %67, i8* %71)
  br label %73

73:                                               ; preds = %64, %59
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = call i32 @expression_free(%struct.TYPE_5__* %74)
  br label %76

76:                                               ; preds = %73, %39
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_5__* @expression_parse(i8*, i8**, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @expression_strerror(i32) #1

declare dso_local i64 @expression_evaluate(%struct.TYPE_5__*) #1

declare dso_local i8* @buffer_tostring(i32) #1

declare dso_local i32 @expression_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
