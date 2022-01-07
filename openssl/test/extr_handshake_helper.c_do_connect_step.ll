; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_do_connect_step.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_do_connect_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Action after connection done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @do_connect_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_connect_step(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %29 [
    i32 132, label %8
    i32 131, label %11
    i32 129, label %14
    i32 130, label %18
    i32 134, label %21
    i32 128, label %24
    i32 133, label %27
  ]

8:                                                ; preds = %3
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @do_handshake_step(i32* %9)
  br label %29

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @do_app_data_step(i32* %12)
  br label %29

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @do_reneg_setup_step(i32* %15, i32* %16)
  br label %29

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @do_handshake_step(i32* %19)
  br label %29

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @do_app_data_step(i32* %22)
  br label %29

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @do_shutdown_step(i32* %25)
  br label %29

27:                                               ; preds = %3
  %28 = call i32 @TEST_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %3, %27, %24, %21, %18, %14, %11, %8
  ret void
}

declare dso_local i32 @do_handshake_step(i32*) #1

declare dso_local i32 @do_app_data_step(i32*) #1

declare dso_local i32 @do_reneg_setup_step(i32*, i32*) #1

declare dso_local i32 @do_shutdown_step(i32*) #1

declare dso_local i32 @TEST_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
