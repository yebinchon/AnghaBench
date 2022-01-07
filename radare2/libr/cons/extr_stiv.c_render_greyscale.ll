; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_stiv.c_render_greyscale.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_stiv.c_render_greyscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"\1B[%d;5;%dm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i8*, i32, i32)*, i32*, i32*)* @render_greyscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_greyscale(i32 (i8*, i32, i32)* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32 (i8*, i32, i32)*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 (i8*, i32, i32)* %0, i32 (i8*, i32, i32)** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = sdiv i32 %20, 3
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = sdiv i32 %32, 3
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sitofp i32 %34 to float
  %36 = fpext float %35 to double
  %37 = fdiv double %36, 1.030000e+01
  %38 = fptosi double %37 to i32
  %39 = add nsw i32 231, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 232
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  store i32 232, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %3
  %44 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 %44(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 48, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = sitofp i32 %47 to float
  %49 = fpext float %48 to double
  %50 = fdiv double %49, 1.030000e+01
  %51 = fptosi double %50 to i32
  %52 = add nsw i32 231, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 232
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store i32 232, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %4, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 %57(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 38, i32 %58)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
