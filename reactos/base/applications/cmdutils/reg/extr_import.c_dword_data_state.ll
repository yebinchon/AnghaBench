; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_dword_data_state.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_dword_data_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32, i32 }

@SET_VALUE = common dso_local global i32 0, align 4
@LINE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.parser*, i32*)* @dword_data_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dword_data_state(%struct.parser* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  store i32* %7, i32** %6, align 8
  %8 = call i32 @heap_xalloc(i32 4)
  %9 = load %struct.parser*, %struct.parser** %4, align 8
  %10 = getelementptr inbounds %struct.parser, %struct.parser* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.parser*, %struct.parser** %4, align 8
  %13 = getelementptr inbounds %struct.parser, %struct.parser* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @convert_hex_to_dword(i32* %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.parser*, %struct.parser** %4, align 8
  %20 = getelementptr inbounds %struct.parser, %struct.parser* %19, i32 0, i32 0
  store i32 4, i32* %20, align 4
  %21 = load %struct.parser*, %struct.parser** %4, align 8
  %22 = load i32, i32* @SET_VALUE, align 4
  %23 = call i32 @set_state(%struct.parser* %21, i32 %22)
  %24 = load i32*, i32** %6, align 8
  store i32* %24, i32** %3, align 8
  br label %32

25:                                               ; preds = %17
  %26 = load %struct.parser*, %struct.parser** %4, align 8
  %27 = call i32 @free_parser_data(%struct.parser* %26)
  %28 = load %struct.parser*, %struct.parser** %4, align 8
  %29 = load i32, i32* @LINE_START, align 4
  %30 = call i32 @set_state(%struct.parser* %28, i32 %29)
  %31 = load i32*, i32** %6, align 8
  store i32* %31, i32** %3, align 8
  br label %32

32:                                               ; preds = %25, %18
  %33 = load i32*, i32** %3, align 8
  ret i32* %33
}

declare dso_local i32 @heap_xalloc(i32) #1

declare dso_local i32 @convert_hex_to_dword(i32*, i32) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

declare dso_local i32 @free_parser_data(%struct.parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
