; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_quoted_value_name_state.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_quoted_value_name_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32* }

@DATA_START = common dso_local global i32 0, align 4
@LINE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.parser*, i32*)* @quoted_value_name_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @quoted_value_name_state(%struct.parser* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32* %8, i32** %6, align 8
  %9 = load %struct.parser*, %struct.parser** %4, align 8
  %10 = getelementptr inbounds %struct.parser, %struct.parser* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.parser*, %struct.parser** %4, align 8
  %15 = getelementptr inbounds %struct.parser, %struct.parser* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @heap_free(i32* %16)
  %18 = load %struct.parser*, %struct.parser** %4, align 8
  %19 = getelementptr inbounds %struct.parser, %struct.parser* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %13, %2
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @unescape_string(i32* %21, i32** %7)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %44

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @lstrlenW(i32* %26)
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i32* @heap_xalloc(i32 %31)
  %33 = load %struct.parser*, %struct.parser** %4, align 8
  %34 = getelementptr inbounds %struct.parser, %struct.parser* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.parser*, %struct.parser** %4, align 8
  %36 = getelementptr inbounds %struct.parser, %struct.parser* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @lstrcpyW(i32* %37, i32* %38)
  %40 = load %struct.parser*, %struct.parser** %4, align 8
  %41 = load i32, i32* @DATA_START, align 4
  %42 = call i32 @set_state(%struct.parser* %40, i32 %41)
  %43 = load i32*, i32** %7, align 8
  store i32* %43, i32** %3, align 8
  br label %49

44:                                               ; preds = %24
  %45 = load %struct.parser*, %struct.parser** %4, align 8
  %46 = load i32, i32* @LINE_START, align 4
  %47 = call i32 @set_state(%struct.parser* %45, i32 %46)
  %48 = load i32*, i32** %6, align 8
  store i32* %48, i32** %3, align 8
  br label %49

49:                                               ; preds = %44, %25
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @unescape_string(i32*, i32**) #1

declare dso_local i32* @heap_xalloc(i32) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @lstrcpyW(i32*, i32*) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
