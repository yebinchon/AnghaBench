; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_patchtestreg.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_patchtestreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_TESTSET = common dso_local global i64 0, align 8
@OP_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @patchtestreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patchtestreg(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32* @getjumpcontrol(i32* %9, i32 %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @GET_OPCODE(i32 %13)
  %15 = load i64, i64* @OP_TESTSET, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 255
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GETARG_B(i32 %24)
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @SETARG_A(i32 %29, i32 %30)
  br label %42

32:                                               ; preds = %21, %18
  %33 = load i32, i32* @OP_TEST, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @GETARG_B(i32 %35)
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @GETARG_C(i32 %38)
  %40 = call i32 @CREATE_ABC(i32 %33, i32 %36, i32 0, i32 %39)
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %32, %27
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %17
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32* @getjumpcontrol(i32*, i32) #1

declare dso_local i64 @GET_OPCODE(i32) #1

declare dso_local i32 @GETARG_B(i32) #1

declare dso_local i32 @SETARG_A(i32, i32) #1

declare dso_local i32 @CREATE_ABC(i32, i32, i32, i32) #1

declare dso_local i32 @GETARG_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
