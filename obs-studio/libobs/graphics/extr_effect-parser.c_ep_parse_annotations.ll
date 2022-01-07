; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_annotations.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_annotations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.darray = type { i32 }
%struct.ep_param = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.darray*)* @ep_parse_annotations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_parse_annotations(%struct.effect_parser* %0, %struct.darray* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.effect_parser*, align 8
  %5 = alloca %struct.darray*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ep_param, align 4
  store %struct.effect_parser* %0, %struct.effect_parser** %4, align 8
  store %struct.darray* %1, %struct.darray** %5, align 8
  %8 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %9 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %8, i32 0, i32 0
  %10 = call i32 @cf_token_is(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %14 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %13, i32 0, i32 0
  %15 = call i32 @cf_adderror_expecting(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %60

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %27, %41
  store i32 0, i32* %6, align 4
  %18 = call i32 @bstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @bstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @ep_param_init(%struct.ep_param* %7, i32 %18, i32 %19, i32 0, i32 0, i32 0)
  %21 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %22 = call i32 @ep_parse_param_annotation_var(%struct.effect_parser* %21, %struct.ep_param* %7)
  switch i32 %22, label %37 [
    i32 128, label %23
    i32 131, label %27
    i32 129, label %29
    i32 132, label %33
    i32 130, label %35
  ]

23:                                               ; preds = %17
  %24 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %25 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %24, i32 0, i32 0
  %26 = call i32 @cf_adderror_syntax_error(i32* %25)
  br label %27

27:                                               ; preds = %17, %23
  %28 = call i32 @ep_param_free(%struct.ep_param* %7)
  br label %17

29:                                               ; preds = %17
  %30 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %31 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %30, i32 0, i32 0
  %32 = call i32 @cf_adderror_syntax_error(i32* %31)
  br label %33

33:                                               ; preds = %17, %29
  %34 = call i32 @ep_param_free(%struct.ep_param* %7)
  store i32 1, i32* %6, align 4
  br label %37

35:                                               ; preds = %17
  %36 = call i32 @ep_param_free(%struct.ep_param* %7)
  br label %60

37:                                               ; preds = %17, %33
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %44

41:                                               ; preds = %37
  %42 = load %struct.darray*, %struct.darray** %5, align 8
  %43 = call i32 @darray_push_back(i32 4, %struct.darray* %42, %struct.ep_param* %7)
  br label %17

44:                                               ; preds = %40
  %45 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %46 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %45, i32 0, i32 0
  %47 = call i32 @cf_token_is(i32* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %51 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %50, i32 0, i32 0
  %52 = call i32 @cf_adderror_expecting(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %60

53:                                               ; preds = %44
  %54 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %55 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %54, i32 0, i32 0
  %56 = call i32 @cf_next_valid_token(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %60

59:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %61

60:                                               ; preds = %58, %49, %35, %12
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @cf_token_is(i32*, i8*) #1

declare dso_local i32 @cf_adderror_expecting(i32*, i8*) #1

declare dso_local i32 @ep_param_init(%struct.ep_param*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bstrdup(i8*) #1

declare dso_local i32 @ep_parse_param_annotation_var(%struct.effect_parser*, %struct.ep_param*) #1

declare dso_local i32 @cf_adderror_syntax_error(i32*) #1

declare dso_local i32 @ep_param_free(%struct.ep_param*) #1

declare dso_local i32 @darray_push_back(i32, %struct.darray*, %struct.ep_param*) #1

declare dso_local i32 @cf_next_valid_token(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
