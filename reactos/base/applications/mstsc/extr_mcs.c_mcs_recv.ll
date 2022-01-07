; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_mcs.c_mcs_recv.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_mcs.c_mcs_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCS_SDIN = common dso_local global i32 0, align 4
@MCS_DPUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"expected data, got %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mcs_recv(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @iso_recv(i32* %10)
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %62

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32*, i32** %9, align 8
  store i32* %23, i32** %3, align 8
  br label %62

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @in_uint8(i32* %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 2
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MCS_SDIN, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MCS_DPUM, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %34
  store i32* null, i32** %3, align 8
  br label %62

42:                                               ; preds = %25
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @in_uint8s(i32* %43, i32 2)
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @in_uint16_be(i32* %45, i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @in_uint8s(i32* %49, i32 1)
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @in_uint8(i32* %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 128
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @in_uint8s(i32* %58, i32 1)
  br label %60

60:                                               ; preds = %57, %42
  %61 = load i32*, i32** %9, align 8
  store i32* %61, i32** %3, align 8
  br label %62

62:                                               ; preds = %60, %41, %22, %14
  %63 = load i32*, i32** %3, align 8
  ret i32* %63
}

declare dso_local i32* @iso_recv(i32*) #1

declare dso_local i32 @in_uint8(i32*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @in_uint8s(i32*, i32) #1

declare dso_local i32 @in_uint16_be(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
