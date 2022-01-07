; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_input_noneof.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_input_noneof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8**)* @mpc_input_noneof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_input_noneof(i32* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call signext i8 @mpc_input_getc(i32* %9)
  store i8 %10, i8* %8, align 1
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @mpc_input_terminated(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %8, align 1
  %18 = call i64 @strchr(i8* %16, i8 signext %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = load i8, i8* %8, align 1
  %23 = load i8**, i8*** %7, align 8
  %24 = call i32 @mpc_input_success(i32* %21, i8 signext %22, i8** %23)
  br label %29

25:                                               ; preds = %15
  %26 = load i32*, i32** %5, align 8
  %27 = load i8, i8* %8, align 1
  %28 = call i32 @mpc_input_failure(i32* %26, i8 signext %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i32 [ %24, %20 ], [ %28, %25 ]
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %14
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local signext i8 @mpc_input_getc(i32*) #1

declare dso_local i64 @mpc_input_terminated(i32*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @mpc_input_success(i32*, i8 signext, i8**) #1

declare dso_local i32 @mpc_input_failure(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
