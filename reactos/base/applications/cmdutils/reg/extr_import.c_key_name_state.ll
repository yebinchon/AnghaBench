; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_key_name_state.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_key_name_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32 }

@DELETE_KEY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@STRING_OPEN_KEY_FAILED = common dso_local global i32 0, align 4
@LINE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, i8*)* @key_name_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @key_name_state(%struct.parser* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strrchrW(i8* %19, i8 signext 93)
  store i8* %20, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %13, %2
  br label %47

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.parser*, %struct.parser** %4, align 8
  %31 = load i32, i32* @DELETE_KEY, align 4
  %32 = call i32 @set_state(%struct.parser* %30, i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %3, align 8
  br label %52

35:                                               ; preds = %23
  %36 = load %struct.parser*, %struct.parser** %4, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @open_key(%struct.parser* %36, i8* %37)
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @STRING_OPEN_KEY_FAILED, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @output_message(i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46, %22
  %48 = load %struct.parser*, %struct.parser** %4, align 8
  %49 = load i32, i32* @LINE_START, align 4
  %50 = call i32 @set_state(%struct.parser* %48, i32 %49)
  %51 = load i8*, i8** %6, align 8
  store i8* %51, i8** %3, align 8
  br label %52

52:                                               ; preds = %47, %29
  %53 = load i8*, i8** %3, align 8
  ret i8* %53
}

declare dso_local i8* @strrchrW(i8*, i8 signext) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

declare dso_local i64 @open_key(%struct.parser*, i8*) #1

declare dso_local i32 @output_message(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
