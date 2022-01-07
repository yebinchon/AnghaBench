; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_input_range.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_input_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8, i8, i8**)* @mpc_input_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_input_range(i32* %0, i8 signext %1, i8 signext %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8**, align 8
  %10 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8** %3, i8*** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call signext i8 @mpc_input_getc(i32* %11)
  store i8 %12, i8* %10, align 1
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @mpc_input_terminated(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %40

17:                                               ; preds = %4
  %18 = load i8, i8* %10, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* %7, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load i8, i8* %10, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* %8, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sle i32 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32*, i32** %6, align 8
  %31 = load i8, i8* %10, align 1
  %32 = load i8**, i8*** %9, align 8
  %33 = call i32 @mpc_input_success(i32* %30, i8 signext %31, i8** %32)
  br label %38

34:                                               ; preds = %23, %17
  %35 = load i32*, i32** %6, align 8
  %36 = load i8, i8* %10, align 1
  %37 = call i32 @mpc_input_failure(i32* %35, i8 signext %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i32 [ %33, %29 ], [ %37, %34 ]
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %16
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local signext i8 @mpc_input_getc(i32*) #1

declare dso_local i64 @mpc_input_terminated(i32*) #1

declare dso_local i32 @mpc_input_success(i32*, i8 signext, i8**) #1

declare dso_local i32 @mpc_input_failure(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
