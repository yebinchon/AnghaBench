; ModuleID = '/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_parse_options.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_commandline = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nn_parse_context = type { i32, i8**, i32, i8**, i32, i64, %struct.TYPE_2__*, i32, i8*, %struct.nn_commandline* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_parse_options(%struct.nn_commandline* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.nn_commandline*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.nn_parse_context, align 8
  %10 = alloca i32, align 4
  store %struct.nn_commandline* %0, %struct.nn_commandline** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %11 = load %struct.nn_commandline*, %struct.nn_commandline** %5, align 8
  %12 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 9
  store %struct.nn_commandline* %11, %struct.nn_commandline** %12, align 8
  %13 = load %struct.nn_commandline*, %struct.nn_commandline** %5, align 8
  %14 = getelementptr inbounds %struct.nn_commandline, %struct.nn_commandline* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 6
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 8
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i8**, i8*** %8, align 8
  %22 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 1
  store i8** %21, i8*** %22, align 8
  %23 = load %struct.nn_commandline*, %struct.nn_commandline** %5, align 8
  %24 = getelementptr inbounds %struct.nn_commandline, %struct.nn_commandline* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 7
  store i32 %25, i32* %26, align 8
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %37, %4
  %28 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 6
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %27

40:                                               ; preds = %27
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @calloc(i32 8, i32 %41)
  %43 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = call i32 @nn_memory_error(%struct.nn_parse_context* %9)
  br label %49

49:                                               ; preds = %47, %40
  %50 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  %53 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  %54 = load i8**, i8*** %8, align 8
  %55 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 3
  store i8** %54, i8*** %55, align 8
  %56 = call i32 @nn_parse_arg0(%struct.nn_parse_context* %9)
  br label %57

57:                                               ; preds = %60, %49
  %58 = call i64 @nn_get_arg(%struct.nn_parse_context* %9)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @nn_parse_arg(%struct.nn_parse_context* %9)
  br label %57

62:                                               ; preds = %57
  %63 = call i32 @nn_check_requires(%struct.nn_parse_context* %9)
  %64 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @free(i32 %65)
  ret void
}

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @nn_memory_error(%struct.nn_parse_context*) #1

declare dso_local i32 @nn_parse_arg0(%struct.nn_parse_context*) #1

declare dso_local i64 @nn_get_arg(%struct.nn_parse_context*) #1

declare dso_local i32 @nn_parse_arg(%struct.nn_parse_context*) #1

declare dso_local i32 @nn_check_requires(%struct.nn_parse_context*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
