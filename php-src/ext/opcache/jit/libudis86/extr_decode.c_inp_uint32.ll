; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_inp_uint32.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_inp_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ud*)* @inp_uint32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inp_uint32(%struct.ud* %0) #0 {
  %2 = alloca %struct.ud*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %2, align 8
  %5 = load %struct.ud*, %struct.ud** %2, align 8
  %6 = call i32 @inp_next(%struct.ud* %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.ud*, %struct.ud** %2, align 8
  %8 = call i32 @inp_next(%struct.ud* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 %10, 8
  %12 = or i32 %9, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ud*, %struct.ud** %2, align 8
  %14 = call i32 @inp_next(%struct.ud* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 %16, 16
  %18 = or i32 %15, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.ud*, %struct.ud** %2, align 8
  %20 = call i32 @inp_next(%struct.ud* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = shl i32 %22, 24
  %24 = or i32 %21, %23
  ret i32 %24
}

declare dso_local i32 @inp_next(%struct.ud*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
