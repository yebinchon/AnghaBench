; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32, i32 }
%struct.ep_param = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.effect_parser*, i8*, i8*, i32, i32, i32)* @ep_parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_parse_param(%struct.effect_parser* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.effect_parser*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ep_param, align 4
  store %struct.effect_parser* %0, %struct.effect_parser** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @ep_param_init(%struct.ep_param* %13, i8* %14, i8* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.effect_parser*, %struct.effect_parser** %7, align 8
  %21 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %20, i32 0, i32 1
  %22 = call i64 @cf_token_is(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %62

25:                                               ; preds = %6
  %26 = load %struct.effect_parser*, %struct.effect_parser** %7, align 8
  %27 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %26, i32 0, i32 1
  %28 = call i64 @cf_token_is(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.effect_parser*, %struct.effect_parser** %7, align 8
  %32 = call i32 @ep_parse_param_array(%struct.effect_parser* %31, %struct.ep_param* %13)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %67

35:                                               ; preds = %30, %25
  %36 = load %struct.effect_parser*, %struct.effect_parser** %7, align 8
  %37 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %36, i32 0, i32 1
  %38 = call i64 @cf_token_is(i32* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.effect_parser*, %struct.effect_parser** %7, align 8
  %42 = call i32 @ep_parse_param_annotations(%struct.effect_parser* %41, %struct.ep_param* %13)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %67

45:                                               ; preds = %40, %35
  %46 = load %struct.effect_parser*, %struct.effect_parser** %7, align 8
  %47 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %46, i32 0, i32 1
  %48 = call i64 @cf_token_is(i32* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.effect_parser*, %struct.effect_parser** %7, align 8
  %52 = call i32 @ep_parse_param_assign(%struct.effect_parser* %51, %struct.ep_param* %13)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %67

55:                                               ; preds = %50, %45
  %56 = load %struct.effect_parser*, %struct.effect_parser** %7, align 8
  %57 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %56, i32 0, i32 1
  %58 = call i64 @cf_token_is(i32* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %67

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %24
  %63 = load %struct.effect_parser*, %struct.effect_parser** %7, align 8
  %64 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @da_push_back(i32 %65, %struct.ep_param* %13)
  br label %69

67:                                               ; preds = %60, %54, %44, %34
  %68 = call i32 @ep_param_free(%struct.ep_param* %13)
  br label %69

69:                                               ; preds = %67, %62
  ret void
}

declare dso_local i32 @ep_param_init(%struct.ep_param*, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @cf_token_is(i32*, i8*) #1

declare dso_local i32 @ep_parse_param_array(%struct.effect_parser*, %struct.ep_param*) #1

declare dso_local i32 @ep_parse_param_annotations(%struct.effect_parser*, %struct.ep_param*) #1

declare dso_local i32 @ep_parse_param_assign(%struct.effect_parser*, %struct.ep_param*) #1

declare dso_local i32 @da_push_back(i32, %struct.ep_param*) #1

declare dso_local i32 @ep_param_free(%struct.ep_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
