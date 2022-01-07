; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_pass_command_call.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_pass_command_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.cf_token* }
%struct.cf_token = type { i32 }
%struct.darray = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@PARSE_EOF = common dso_local global i32 0, align 4
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.darray*)* @ep_parse_pass_command_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_parse_pass_command_call(%struct.effect_parser* %0, %struct.darray* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.effect_parser*, align 8
  %5 = alloca %struct.darray*, align 8
  %6 = alloca %struct.cf_token, align 4
  store %struct.effect_parser* %0, %struct.effect_parser** %4, align 8
  store %struct.darray* %1, %struct.darray** %5, align 8
  %7 = call i32 @cf_token_clear(%struct.cf_token* %6)
  br label %8

8:                                                ; preds = %37, %2
  %9 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %10 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %9, i32 0, i32 0
  %11 = call i64 @cf_token_is(%struct.TYPE_4__* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %38

14:                                               ; preds = %8
  %15 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %16 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %15, i32 0, i32 0
  %17 = call i64 @cf_token_is(%struct.TYPE_4__* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %21 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %20, i32 0, i32 0
  %22 = call i32 @cf_adderror_expecting(%struct.TYPE_4__* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @PARSE_CONTINUE, align 4
  store i32 %23, i32* %3, align 4
  br label %48

24:                                               ; preds = %14
  %25 = load %struct.darray*, %struct.darray** %5, align 8
  %26 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %27 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.cf_token*, %struct.cf_token** %28, align 8
  %30 = call i32 @darray_push_back(i32 4, %struct.darray* %25, %struct.cf_token* %29)
  %31 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %32 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %31, i32 0, i32 0
  %33 = call i32 @cf_next_valid_token(%struct.TYPE_4__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @PARSE_EOF, align 4
  store i32 %36, i32* %3, align 4
  br label %48

37:                                               ; preds = %24
  br label %8

38:                                               ; preds = %8
  %39 = load %struct.darray*, %struct.darray** %5, align 8
  %40 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %41 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.cf_token*, %struct.cf_token** %42, align 8
  %44 = call i32 @darray_push_back(i32 4, %struct.darray* %39, %struct.cf_token* %43)
  %45 = load %struct.darray*, %struct.darray** %5, align 8
  %46 = call i32 @darray_push_back(i32 4, %struct.darray* %45, %struct.cf_token* %6)
  %47 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %38, %35, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @cf_token_clear(%struct.cf_token*) #1

declare dso_local i64 @cf_token_is(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @cf_adderror_expecting(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @darray_push_back(i32, %struct.darray*, %struct.cf_token*) #1

declare dso_local i32 @cf_next_valid_token(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
