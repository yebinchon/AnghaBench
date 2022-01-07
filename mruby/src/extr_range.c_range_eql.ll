; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_range.c_range_eql.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_range.c_range_eql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.RRange = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @range_eql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @range_eql(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.RRange*, align 8
  %8 = alloca %struct.RRange*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = call i32 @mrb_get_args(%struct.TYPE_8__* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @mrb_obj_equal(%struct.TYPE_8__* %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @mrb_true_value()
  store i32 %17, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mrb_obj_is_kind_of(%struct.TYPE_8__* %19, i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = call i32 (...) @mrb_false_value()
  store i32 %27, i32* %3, align 4
  br label %66

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @mrb_range_p(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call i32 (...) @mrb_false_value()
  store i32 %33, i32* %3, align 4
  br label %66

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.RRange* @mrb_range_ptr(%struct.TYPE_8__* %35, i32 %36)
  store %struct.RRange* %37, %struct.RRange** %7, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.RRange* @mrb_range_ptr(%struct.TYPE_8__* %38, i32 %39)
  store %struct.RRange* %40, %struct.RRange** %8, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = load %struct.RRange*, %struct.RRange** %7, align 8
  %43 = call i32 @RANGE_BEG(%struct.RRange* %42)
  %44 = load %struct.RRange*, %struct.RRange** %8, align 8
  %45 = call i32 @RANGE_BEG(%struct.RRange* %44)
  %46 = call i32 @mrb_eql(%struct.TYPE_8__* %41, i32 %43, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %34
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = load %struct.RRange*, %struct.RRange** %7, align 8
  %51 = call i32 @RANGE_END(%struct.RRange* %50)
  %52 = load %struct.RRange*, %struct.RRange** %8, align 8
  %53 = call i32 @RANGE_END(%struct.RRange* %52)
  %54 = call i32 @mrb_eql(%struct.TYPE_8__* %49, i32 %51, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.RRange*, %struct.RRange** %7, align 8
  %58 = call i64 @RANGE_EXCL(%struct.RRange* %57)
  %59 = load %struct.RRange*, %struct.RRange** %8, align 8
  %60 = call i64 @RANGE_EXCL(%struct.RRange* %59)
  %61 = icmp ne i64 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %48, %34
  %63 = call i32 (...) @mrb_false_value()
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %56
  %65 = call i32 (...) @mrb_true_value()
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %62, %32, %26, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @mrb_get_args(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i64 @mrb_obj_equal(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mrb_true_value(...) #1

declare dso_local i32 @mrb_obj_is_kind_of(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mrb_false_value(...) #1

declare dso_local i32 @mrb_range_p(i32) #1

declare dso_local %struct.RRange* @mrb_range_ptr(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mrb_eql(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @RANGE_BEG(%struct.RRange*) #1

declare dso_local i32 @RANGE_END(%struct.RRange*) #1

declare dso_local i64 @RANGE_EXCL(%struct.RRange*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
