; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_udis86.c_ud_inp_init.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_udis86.c_ud_inp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32*, i32, i64, i64, i64, i64, i64, i32*, i32* }

@UD_EOI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ud*)* @ud_inp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ud_inp_init(%struct.ud* %0) #0 {
  %2 = alloca %struct.ud*, align 8
  store %struct.ud* %0, %struct.ud** %2, align 8
  %3 = load %struct.ud*, %struct.ud** %2, align 8
  %4 = getelementptr inbounds %struct.ud, %struct.ud* %3, i32 0, i32 8
  store i32* null, i32** %4, align 8
  %5 = load %struct.ud*, %struct.ud** %2, align 8
  %6 = getelementptr inbounds %struct.ud, %struct.ud* %5, i32 0, i32 7
  store i32* null, i32** %6, align 8
  %7 = load %struct.ud*, %struct.ud** %2, align 8
  %8 = getelementptr inbounds %struct.ud, %struct.ud* %7, i32 0, i32 6
  store i64 0, i64* %8, align 8
  %9 = load %struct.ud*, %struct.ud** %2, align 8
  %10 = getelementptr inbounds %struct.ud, %struct.ud* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.ud*, %struct.ud** %2, align 8
  %12 = getelementptr inbounds %struct.ud, %struct.ud* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.ud*, %struct.ud** %2, align 8
  %14 = getelementptr inbounds %struct.ud, %struct.ud* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.ud*, %struct.ud** %2, align 8
  %16 = getelementptr inbounds %struct.ud, %struct.ud* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @UD_EOI, align 4
  %18 = load %struct.ud*, %struct.ud** %2, align 8
  %19 = getelementptr inbounds %struct.ud, %struct.ud* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ud*, %struct.ud** %2, align 8
  %21 = getelementptr inbounds %struct.ud, %struct.ud* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = call i32 @UD_NON_STANDALONE(i32 0)
  ret void
}

declare dso_local i32 @UD_NON_STANDALONE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
