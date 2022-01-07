; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_mem_disp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_mem_disp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32 }
%struct.ud_operand = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ud*, i32, %struct.ud_operand*)* @decode_mem_disp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_mem_disp(%struct.ud* %0, i32 %1, %struct.ud_operand* %2) #0 {
  %4 = alloca %struct.ud*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ud_operand*, align 8
  store %struct.ud* %0, %struct.ud** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ud_operand* %2, %struct.ud_operand** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %40 [
    i32 8, label %8
    i32 16, label %16
    i32 32, label %24
    i32 64, label %32
  ]

8:                                                ; preds = %3
  %9 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %10 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %9, i32 0, i32 0
  store i32 8, i32* %10, align 4
  %11 = load %struct.ud*, %struct.ud** %4, align 8
  %12 = call i32 @inp_uint8(%struct.ud* %11)
  %13 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %14 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 4
  br label %41

16:                                               ; preds = %3
  %17 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %18 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %17, i32 0, i32 0
  store i32 16, i32* %18, align 4
  %19 = load %struct.ud*, %struct.ud** %4, align 8
  %20 = call i32 @inp_uint16(%struct.ud* %19)
  %21 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %22 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %26 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %25, i32 0, i32 0
  store i32 32, i32* %26, align 4
  %27 = load %struct.ud*, %struct.ud** %4, align 8
  %28 = call i32 @inp_uint32(%struct.ud* %27)
  %29 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %30 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %34 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %33, i32 0, i32 0
  store i32 64, i32* %34, align 4
  %35 = load %struct.ud*, %struct.ud** %4, align 8
  %36 = call i32 @inp_uint64(%struct.ud* %35)
  %37 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %38 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  br label %41

40:                                               ; preds = %3
  br label %41

41:                                               ; preds = %40, %32, %24, %16, %8
  ret void
}

declare dso_local i32 @inp_uint8(%struct.ud*) #1

declare dso_local i32 @inp_uint16(%struct.ud*) #1

declare dso_local i32 @inp_uint32(%struct.ud*) #1

declare dso_local i32 @inp_uint64(%struct.ud*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
