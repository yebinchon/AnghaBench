; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_convert_text2number.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_convert_text2number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@calc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"0.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @convert_text2number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_text2number(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 0), align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 1), align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 0), align 8
  %8 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @_tcscmp(i64 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 0), align 8
  %13 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @_tcscmp(i64 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %6
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @rpn_zero(i32* %17)
  br label %22

19:                                               ; preds = %11
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @rpn_copy(i32* %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 2))
  br label %22

22:                                               ; preds = %19, %16
  br label %28

23:                                               ; preds = %1
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @rpn_zero(i32* %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @convert_text2number_2(i32* %26)
  br label %28

28:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @_tcscmp(i64, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @rpn_zero(i32*) #1

declare dso_local i32 @rpn_copy(i32*, i32*) #1

declare dso_local i32 @convert_text2number_2(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
