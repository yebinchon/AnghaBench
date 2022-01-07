; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_udis86.c_ud_set_input_buffer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_udis86.c_ud_set_input_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ud_set_input_buffer(%struct.ud* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ud*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.ud* %0, %struct.ud** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ud*, %struct.ud** %4, align 8
  %8 = call i32 @ud_inp_init(%struct.ud* %7)
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.ud*, %struct.ud** %4, align 8
  %11 = getelementptr inbounds %struct.ud, %struct.ud* %10, i32 0, i32 2
  store i32* %9, i32** %11, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.ud*, %struct.ud** %4, align 8
  %14 = getelementptr inbounds %struct.ud, %struct.ud* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.ud*, %struct.ud** %4, align 8
  %16 = getelementptr inbounds %struct.ud, %struct.ud* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  ret void
}

declare dso_local i32 @ud_inp_init(%struct.ud*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
