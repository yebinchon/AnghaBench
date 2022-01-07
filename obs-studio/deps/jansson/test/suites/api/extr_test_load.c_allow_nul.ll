; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load.c_allow_nul.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load.c_allow_nul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"\22nul byte \\u0000 in string\22\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"nul byte \00 in string\00", align 1
@JSON_ALLOW_NUL = common dso_local global i32 0, align 4
@JSON_DECODE_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"unable to decode embedded NUL byte\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"decoder returned wrong string length\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"decoder returned wrong string content\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @allow_nul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allow_nul() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i64 20, i64* %3, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = load i32, i32* @JSON_ALLOW_NUL, align 4
  %7 = load i32, i32* @JSON_DECODE_ANY, align 4
  %8 = or i32 %6, %7
  %9 = call i32* @json_loads(i8* %5, i32 %8, i32* null)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @json_is_string(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %0
  %17 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @json_string_length(i32* %19)
  %21 = load i64, i64* %3, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @json_string_value(i32* %26)
  %28 = load i8*, i8** %2, align 8
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  %31 = call i64 @memcmp(i32 %27, i8* %28, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %25
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @json_decref(i32* %36)
  ret void
}

declare dso_local i32* @json_loads(i8*, i32, i32*) #1

declare dso_local i32 @json_is_string(i32*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i64 @json_string_length(i32*) #1

declare dso_local i64 @memcmp(i32, i8*, i64) #1

declare dso_local i32 @json_string_value(i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
