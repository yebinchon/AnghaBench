; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_eol_backslash_state.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_eol_backslash_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32 }

@HEX_MULTILINE = common dso_local global i32 0, align 4
@LINE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, i8*)* @eol_backslash_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eol_backslash_state(%struct.parser* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  store i8* %7, i8** %6, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 9
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ true, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  br label %8

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 59
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %39

34:                                               ; preds = %28, %23
  %35 = load %struct.parser*, %struct.parser** %4, align 8
  %36 = load i32, i32* @HEX_MULTILINE, align 4
  %37 = call i32 @set_state(%struct.parser* %35, i32 %36)
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %3, align 8
  br label %46

39:                                               ; preds = %33
  %40 = load %struct.parser*, %struct.parser** %4, align 8
  %41 = call i32 @free_parser_data(%struct.parser* %40)
  %42 = load %struct.parser*, %struct.parser** %4, align 8
  %43 = load i32, i32* @LINE_START, align 4
  %44 = call i32 @set_state(%struct.parser* %42, i32 %43)
  %45 = load i8*, i8** %6, align 8
  store i8* %45, i8** %3, align 8
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i8*, i8** %3, align 8
  ret i8* %47
}

declare dso_local i32 @set_state(%struct.parser*, i32) #1

declare dso_local i32 @free_parser_data(%struct.parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
