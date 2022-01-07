; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_argv.c_argv_parse_cmd__command_and_extra_options__argc_correct.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_argv.c_argv_parse_cmd__command_and_extra_options__argc_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv = type { i32 }

@SCRIPT_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bar baz %d %s\00", align 1
@PATH1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @argv_parse_cmd__command_and_extra_options__argc_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @argv_parse_cmd__command_and_extra_options__argc_correct(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.argv, align 4
  store i8** %0, i8*** %2, align 8
  %4 = call i32 (...) @argv_new()
  %5 = getelementptr inbounds %struct.argv, %struct.argv* %3, i32 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @SCRIPT_CMD, align 4
  %7 = call i32 @argv_parse_cmd(%struct.argv* %3, i32 %6)
  %8 = load i32, i32* @PATH1, align 4
  %9 = call i32 @argv_printf_cat(%struct.argv* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 42, i32 %8)
  %10 = getelementptr inbounds %struct.argv, %struct.argv* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @assert_int_equal(i32 %11, i32 7)
  %13 = call i32 @argv_reset(%struct.argv* %3)
  ret void
}

declare dso_local i32 @argv_new(...) #1

declare dso_local i32 @argv_parse_cmd(%struct.argv*, i32) #1

declare dso_local i32 @argv_printf_cat(%struct.argv*, i8*, i32, i32) #1

declare dso_local i32 @assert_int_equal(i32, i32) #1

declare dso_local i32 @argv_reset(%struct.argv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
