; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_next_phase.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_next_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"Trying to progress after connection done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @next_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_phase(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %29 [
    i32 132, label %7
    i32 131, label %17
    i32 129, label %18
    i32 130, label %24
    i32 134, label %25
    i32 128, label %26
    i32 133, label %27
  ]

7:                                                ; preds = %2
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @renegotiate_op(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @post_handshake_op(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7
  store i32 131, i32* %3, align 4
  br label %30

16:                                               ; preds = %11
  store i32 134, i32* %3, align 4
  br label %30

17:                                               ; preds = %2
  store i32 129, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @post_handshake_op(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 134, i32* %3, align 4
  br label %30

23:                                               ; preds = %18
  store i32 130, i32* %3, align 4
  br label %30

24:                                               ; preds = %2
  store i32 134, i32* %3, align 4
  br label %30

25:                                               ; preds = %2
  store i32 128, i32* %3, align 4
  br label %30

26:                                               ; preds = %2
  store i32 133, i32* %3, align 4
  br label %30

27:                                               ; preds = %2
  %28 = call i32 @TEST_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %2, %27
  store i32 -1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %26, %25, %24, %23, %22, %17, %16, %15
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @renegotiate_op(i32*) #1

declare dso_local i32 @post_handshake_op(i32*) #1

declare dso_local i32 @TEST_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
