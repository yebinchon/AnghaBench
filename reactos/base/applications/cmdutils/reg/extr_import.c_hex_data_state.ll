; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_hex_data_state.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_hex_data_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i64 }

@EOL_BACKSLASH = common dso_local global i32 0, align 4
@SET_VALUE = common dso_local global i32 0, align 4
@LINE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.parser*, i32*)* @hex_data_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hex_data_state(%struct.parser* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  store i32* %7, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.parser*, %struct.parser** %4, align 8
  %14 = call i32 @convert_hex_csv_to_hex(%struct.parser* %13, i32** %6)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %35

17:                                               ; preds = %12
  %18 = load %struct.parser*, %struct.parser** %4, align 8
  %19 = getelementptr inbounds %struct.parser, %struct.parser* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.parser*, %struct.parser** %4, align 8
  %24 = load i32, i32* @EOL_BACKSLASH, align 4
  %25 = call i32 @set_state(%struct.parser* %23, i32 %24)
  %26 = load i32*, i32** %6, align 8
  store i32* %26, i32** %3, align 8
  br label %42

27:                                               ; preds = %17
  %28 = load %struct.parser*, %struct.parser** %4, align 8
  %29 = call i32 @prepare_hex_string_data(%struct.parser* %28)
  br label %30

30:                                               ; preds = %27, %11
  %31 = load %struct.parser*, %struct.parser** %4, align 8
  %32 = load i32, i32* @SET_VALUE, align 4
  %33 = call i32 @set_state(%struct.parser* %31, i32 %32)
  %34 = load i32*, i32** %6, align 8
  store i32* %34, i32** %3, align 8
  br label %42

35:                                               ; preds = %16
  %36 = load %struct.parser*, %struct.parser** %4, align 8
  %37 = call i32 @free_parser_data(%struct.parser* %36)
  %38 = load %struct.parser*, %struct.parser** %4, align 8
  %39 = load i32, i32* @LINE_START, align 4
  %40 = call i32 @set_state(%struct.parser* %38, i32 %39)
  %41 = load i32*, i32** %6, align 8
  store i32* %41, i32** %3, align 8
  br label %42

42:                                               ; preds = %35, %30, %22
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

declare dso_local i32 @convert_hex_csv_to_hex(%struct.parser*, i32**) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

declare dso_local i32 @prepare_hex_string_data(%struct.parser*) #1

declare dso_local i32 @free_parser_data(%struct.parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
