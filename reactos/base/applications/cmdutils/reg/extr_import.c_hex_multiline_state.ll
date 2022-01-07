; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_hex_multiline_state.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_hex_multiline_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32 }

@SET_VALUE = common dso_local global i32 0, align 4
@HEX_DATA = common dso_local global i32 0, align 4
@LINE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, i8*)* @hex_multiline_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hex_multiline_state(%struct.parser* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.parser*, %struct.parser** %4, align 8
  %8 = getelementptr inbounds %struct.parser, %struct.parser* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @get_line(i32 %9)
  store i8* %10, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.parser*, %struct.parser** %4, align 8
  %14 = call i32 @prepare_hex_string_data(%struct.parser* %13)
  %15 = load %struct.parser*, %struct.parser** %4, align 8
  %16 = load i32, i32* @SET_VALUE, align 4
  %17 = call i32 @set_state(%struct.parser* %15, i32 %16)
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %3, align 8
  br label %64

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 9
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ true, %20 ], [ %29, %25 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  br label %20

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 59
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %35
  %45 = load i8*, i8** %6, align 8
  store i8* %45, i8** %3, align 8
  br label %64

46:                                               ; preds = %39
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @isxdigitW(i8 signext %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %57

52:                                               ; preds = %46
  %53 = load %struct.parser*, %struct.parser** %4, align 8
  %54 = load i32, i32* @HEX_DATA, align 4
  %55 = call i32 @set_state(%struct.parser* %53, i32 %54)
  %56 = load i8*, i8** %6, align 8
  store i8* %56, i8** %3, align 8
  br label %64

57:                                               ; preds = %51
  %58 = load %struct.parser*, %struct.parser** %4, align 8
  %59 = call i32 @free_parser_data(%struct.parser* %58)
  %60 = load %struct.parser*, %struct.parser** %4, align 8
  %61 = load i32, i32* @LINE_START, align 4
  %62 = call i32 @set_state(%struct.parser* %60, i32 %61)
  %63 = load i8*, i8** %6, align 8
  store i8* %63, i8** %3, align 8
  br label %64

64:                                               ; preds = %57, %52, %44, %12
  %65 = load i8*, i8** %3, align 8
  ret i8* %65
}

declare dso_local i8* @get_line(i32) #1

declare dso_local i32 @prepare_hex_string_data(%struct.parser*) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

declare dso_local i32 @isxdigitW(i8 signext) #1

declare dso_local i32 @free_parser_data(%struct.parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
