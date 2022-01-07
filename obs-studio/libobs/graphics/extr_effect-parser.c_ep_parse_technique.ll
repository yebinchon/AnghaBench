; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_technique.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_technique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32, i32 }
%struct.ep_technique = type { i32, i32 }
%struct.ep_pass = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@PARSE_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.effect_parser*)* @ep_parse_technique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_parse_technique(%struct.effect_parser* %0) #0 {
  %2 = alloca %struct.effect_parser*, align 8
  %3 = alloca %struct.ep_technique, align 4
  %4 = alloca %struct.ep_pass, align 4
  store %struct.effect_parser* %0, %struct.effect_parser** %2, align 8
  %5 = call i32 @ep_technique_init(%struct.ep_technique* %3)
  %6 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %7 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.ep_technique, %struct.ep_technique* %3, i32 0, i32 1
  %9 = call i64 @cf_next_name(i32* %7, i32* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i64, i64* @PARSE_SUCCESS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %87

13:                                               ; preds = %1
  %14 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %15 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %14, i32 0, i32 0
  %16 = call i32 @cf_next_valid_token(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %92

19:                                               ; preds = %13
  %20 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %21 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %20, i32 0, i32 0
  %22 = call i32 @cf_token_is(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %19
  %25 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %26 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %25, i32 0, i32 0
  %27 = call i32 @cf_go_to_token(i32* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %31 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %30, i32 0, i32 0
  %32 = call i32 @cf_adderror_expecting(i32* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %92

33:                                               ; preds = %24
  %34 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %35 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %34, i32 0, i32 0
  %36 = call i32 @cf_adderror_expecting(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %87

37:                                               ; preds = %19
  %38 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %39 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %38, i32 0, i32 0
  %40 = call i32 @cf_next_valid_token(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %87

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %78, %64, %43
  %45 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %46 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %45, i32 0, i32 0
  %47 = call i32 @cf_token_is(i32* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %50, label %79

50:                                               ; preds = %44
  %51 = bitcast %struct.ep_pass* %4 to %struct.ep_technique*
  %52 = call i32 @ep_pass_init(%struct.ep_technique* %51)
  %53 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %54 = bitcast %struct.ep_pass* %4 to %struct.ep_technique*
  %55 = call i32 @ep_parse_pass(%struct.effect_parser* %53, %struct.ep_technique* %54)
  switch i32 %55, label %68 [
    i32 128, label %56
    i32 129, label %65
  ]

56:                                               ; preds = %50
  %57 = bitcast %struct.ep_pass* %4 to %struct.ep_technique*
  %58 = call i32 @ep_pass_free(%struct.ep_technique* %57)
  %59 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %60 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %59, i32 0, i32 0
  %61 = call i32 @cf_go_to_token(i32* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %87

64:                                               ; preds = %56
  br label %44

65:                                               ; preds = %50
  %66 = bitcast %struct.ep_pass* %4 to %struct.ep_technique*
  %67 = call i32 @ep_pass_free(%struct.ep_technique* %66)
  br label %87

68:                                               ; preds = %50
  %69 = getelementptr inbounds %struct.ep_technique, %struct.ep_technique* %3, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = bitcast %struct.ep_pass* %4 to %struct.ep_technique*
  %72 = call i32 @da_push_back(i32 %70, %struct.ep_technique* %71)
  %73 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %74 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %73, i32 0, i32 0
  %75 = call i32 @cf_next_valid_token(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  br label %87

78:                                               ; preds = %68
  br label %44

79:                                               ; preds = %44
  %80 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %81 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %80, i32 0, i32 0
  %82 = call i32 @cf_next_token(i32* %81)
  %83 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %84 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @da_push_back(i32 %85, %struct.ep_technique* %3)
  br label %92

87:                                               ; preds = %77, %65, %63, %42, %33, %12
  %88 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %89 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %88, i32 0, i32 0
  %90 = call i32 @cf_next_token(i32* %89)
  %91 = call i32 @ep_technique_free(%struct.ep_technique* %3)
  br label %92

92:                                               ; preds = %87, %79, %29, %18
  ret void
}

declare dso_local i32 @ep_technique_init(%struct.ep_technique*) #1

declare dso_local i64 @cf_next_name(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @cf_next_valid_token(i32*) #1

declare dso_local i32 @cf_token_is(i32*, i8*) #1

declare dso_local i32 @cf_go_to_token(i32*, i8*, i32*) #1

declare dso_local i32 @cf_adderror_expecting(i32*, i8*) #1

declare dso_local i32 @ep_pass_init(%struct.ep_technique*) #1

declare dso_local i32 @ep_parse_pass(%struct.effect_parser*, %struct.ep_technique*) #1

declare dso_local i32 @ep_pass_free(%struct.ep_technique*) #1

declare dso_local i32 @da_push_back(i32, %struct.ep_technique*) #1

declare dso_local i32 @cf_next_token(i32*) #1

declare dso_local i32 @ep_technique_free(%struct.ep_technique*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
