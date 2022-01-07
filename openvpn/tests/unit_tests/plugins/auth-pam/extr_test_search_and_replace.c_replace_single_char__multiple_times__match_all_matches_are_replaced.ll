; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/plugins/auth-pam/extr_test_search_and_replace.c_replace_single_char__multiple_times__match_all_matches_are_replaced.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/plugins/auth-pam/extr_test_search_and_replace.c_replace_single_char__multiple_times__match_all_matches_are_replaced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"XaX\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"YaY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @replace_single_char__multiple_times__match_all_matches_are_replaced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_single_char__multiple_times__match_all_matches_are_replaced() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @searchandreplace(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 @assert_non_null(i8* %3)
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @assert_string_equal(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %5)
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 @free(i8* %7)
  ret void
}

declare dso_local i8* @searchandreplace(i8*, i8*, i8*) #1

declare dso_local i32 @assert_non_null(i8*) #1

declare dso_local i32 @assert_string_equal(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
