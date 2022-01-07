; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_range.c_range_include.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_range.c_range_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RRange = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @range_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @range_include(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.RRange*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.RRange* @mrb_range_ptr(i32* %10, i32 %11)
  store %struct.RRange* %12, %struct.RRange** %6, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @mrb_get_args(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %5)
  %15 = load %struct.RRange*, %struct.RRange** %6, align 8
  %16 = call i32 @RANGE_BEG(%struct.RRange* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.RRange*, %struct.RRange** %6, align 8
  %18 = call i32 @RANGE_END(%struct.RRange* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @r_le(i32* %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load %struct.RRange*, %struct.RRange** %6, align 8
  %26 = call i64 @RANGE_EXCL(%struct.RRange* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @r_gt(i32* %29, i32 %30, i32 %31)
  br label %38

33:                                               ; preds = %24
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @r_ge(i32* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i64 [ %32, %28 ], [ %37, %33 ]
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %38, %2
  %42 = phi i1 [ false, %2 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @mrb_bool_value(i32 %44)
  ret i32 %45
}

declare dso_local %struct.RRange* @mrb_range_ptr(i32*, i32) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @RANGE_BEG(%struct.RRange*) #1

declare dso_local i32 @RANGE_END(%struct.RRange*) #1

declare dso_local i64 @r_le(i32*, i32, i32) #1

declare dso_local i64 @RANGE_EXCL(%struct.RRange*) #1

declare dso_local i64 @r_gt(i32*, i32, i32) #1

declare dso_local i64 @r_ge(i32*, i32, i32) #1

declare dso_local i32 @mrb_bool_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
