; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_xor.c_xor_init.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_xor.c_xor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xor_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xor_state*, i32*, i32)* @xor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xor_init(%struct.xor_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xor_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.xor_state* %0, %struct.xor_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.xor_state*, %struct.xor_state** %5, align 8
  %9 = icmp ne %struct.xor_state* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %3
  store i32 0, i32* %4, align 4
  br label %31

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.xor_state*, %struct.xor_state** %5, align 8
  %20 = getelementptr inbounds %struct.xor_state, %struct.xor_state* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @malloc(i32 %21)
  %23 = load %struct.xor_state*, %struct.xor_state** %5, align 8
  %24 = getelementptr inbounds %struct.xor_state, %struct.xor_state* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.xor_state*, %struct.xor_state** %5, align 8
  %26 = getelementptr inbounds %struct.xor_state, %struct.xor_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @memcpy(i32 %27, i32* %28, i32 %29)
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %17, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
