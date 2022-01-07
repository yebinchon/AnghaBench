; ModuleID = '/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_parse_arg0.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_parse_arg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_parse_context = type { i8**, i8**, %struct.nn_option* }
%struct.nn_option = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_parse_context*)* @nn_parse_arg0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_parse_arg0(%struct.nn_parse_context* %0) #0 {
  %2 = alloca %struct.nn_parse_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_option*, align 8
  %5 = alloca i8*, align 8
  store %struct.nn_parse_context* %0, %struct.nn_parse_context** %2, align 8
  %6 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %7 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %6, i32 0, i32 0
  %8 = load i8**, i8*** %7, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @strrchr(i8* %10, i8 signext 47)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %16 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  br label %23

20:                                               ; preds = %1
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %20, %14
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %70, %23
  %25 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %26 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %25, i32 0, i32 2
  %27 = load %struct.nn_option*, %struct.nn_option** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %27, i64 %29
  store %struct.nn_option* %30, %struct.nn_option** %4, align 8
  %31 = load %struct.nn_option*, %struct.nn_option** %4, align 8
  %32 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  ret void

36:                                               ; preds = %24
  %37 = load %struct.nn_option*, %struct.nn_option** %4, align 8
  %38 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.nn_option*, %struct.nn_option** %4, align 8
  %44 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @strcmp(i8* %42, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %41
  %49 = load %struct.nn_option*, %struct.nn_option** %4, align 8
  %50 = call i32 @nn_has_arg(%struct.nn_option* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %56 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %61 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %60, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %59, i8** %65, align 8
  %66 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @nn_process_option(%struct.nn_parse_context* %66, i32 %67, i32* null)
  br label %69

69:                                               ; preds = %48, %41, %36
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %24
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nn_has_arg(%struct.nn_option*) #1

declare dso_local i32 @nn_process_option(%struct.nn_parse_context*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
