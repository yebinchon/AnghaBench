; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_string_data_state.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_string_data_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i8*, i32 }

@SET_VALUE = common dso_local global i32 0, align 4
@LINE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, i8*)* @string_data_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @string_data_state(%struct.parser* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.parser*, %struct.parser** %4, align 8
  %9 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = load %struct.parser*, %struct.parser** %4, align 8
  %11 = getelementptr inbounds %struct.parser, %struct.parser* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @unescape_string(i8* %12, i8** %6)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %58

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %29, %16
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 9
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ true, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  br label %17

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 59
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %58

43:                                               ; preds = %37, %32
  %44 = load %struct.parser*, %struct.parser** %4, align 8
  %45 = getelementptr inbounds %struct.parser, %struct.parser* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @lstrlenW(i8* %46)
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = load %struct.parser*, %struct.parser** %4, align 8
  %53 = getelementptr inbounds %struct.parser, %struct.parser* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.parser*, %struct.parser** %4, align 8
  %55 = load i32, i32* @SET_VALUE, align 4
  %56 = call i32 @set_state(%struct.parser* %54, i32 %55)
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** %3, align 8
  br label %65

58:                                               ; preds = %42, %15
  %59 = load %struct.parser*, %struct.parser** %4, align 8
  %60 = call i32 @free_parser_data(%struct.parser* %59)
  %61 = load %struct.parser*, %struct.parser** %4, align 8
  %62 = load i32, i32* @LINE_START, align 4
  %63 = call i32 @set_state(%struct.parser* %61, i32 %62)
  %64 = load i8*, i8** %6, align 8
  store i8* %64, i8** %3, align 8
  br label %65

65:                                               ; preds = %58, %43
  %66 = load i8*, i8** %3, align 8
  ret i8* %66
}

declare dso_local i32 @unescape_string(i8*, i8**) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

declare dso_local i32 @free_parser_data(%struct.parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
