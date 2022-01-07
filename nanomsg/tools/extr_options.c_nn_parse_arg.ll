; ModuleID = '/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_parse_arg.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_parse_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_parse_context = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_parse_context*)* @nn_parse_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_parse_arg(%struct.nn_parse_context* %0) #0 {
  %2 = alloca %struct.nn_parse_context*, align 8
  store %struct.nn_parse_context* %0, %struct.nn_parse_context** %2, align 8
  %3 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %4 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 45
  br i1 %9, label %10, label %46

10:                                               ; preds = %1
  %11 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %12 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %30

18:                                               ; preds = %10
  %19 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %20 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %49

27:                                               ; preds = %18
  %28 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %29 = call i32 @nn_parse_long_option(%struct.nn_parse_context* %28)
  br label %45

30:                                               ; preds = %10
  %31 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %32 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %32, align 8
  br label %35

35:                                               ; preds = %41, %30
  %36 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %37 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %43 = call i32 @nn_parse_short_option(%struct.nn_parse_context* %42)
  br label %35

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %27
  br label %49

46:                                               ; preds = %1
  %47 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %48 = call i32 @nn_error_unexpected_argument(%struct.nn_parse_context* %47)
  br label %49

49:                                               ; preds = %26, %46, %45
  ret void
}

declare dso_local i32 @nn_parse_long_option(%struct.nn_parse_context*) #1

declare dso_local i32 @nn_parse_short_option(%struct.nn_parse_context*) #1

declare dso_local i32 @nn_error_unexpected_argument(%struct.nn_parse_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
