; ModuleID = '/home/carl/AnghaBench/netdata/backends/extr_backends.c_backend_set_json_variables.c'
source_filename = "/home/carl/AnghaBench/netdata/backends/extr_backends.c_backend_set_json_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@process_json_response = common dso_local global i32 0, align 4
@global_backend_options = common dso_local global i32 0, align 4
@BACKEND_SOURCE_DATA_AS_COLLECTED = common dso_local global i64 0, align 8
@format_dimension_collected_json_plaintext = common dso_local global i32 0, align 4
@format_dimension_stored_json_plaintext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backend_set_json_variables(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  store i32 5448, i32* %7, align 4
  %8 = load i32, i32* @process_json_response, align 4
  %9 = load i32*, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @global_backend_options, align 4
  %11 = call i64 @BACKEND_OPTIONS_DATA_SOURCE(i32 %10)
  %12 = load i64, i64* @BACKEND_SOURCE_DATA_AS_COLLECTED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @format_dimension_collected_json_plaintext, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  br label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @format_dimension_stored_json_plaintext, align 4
  %19 = load i32*, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %14
  ret void
}

declare dso_local i64 @BACKEND_OPTIONS_DATA_SOURCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
