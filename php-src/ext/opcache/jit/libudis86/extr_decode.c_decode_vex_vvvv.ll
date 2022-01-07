; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_vex_vvvv.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_vex_vvvv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32, i32 }
%struct.ud_operand = type { i32 }

@REGCLASS_XMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ud*, %struct.ud_operand*, i32)* @decode_vex_vvvv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_vex_vvvv(%struct.ud* %0, %struct.ud_operand* %1, i32 %2) #0 {
  %4 = alloca %struct.ud*, align 8
  %5 = alloca %struct.ud_operand*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %4, align 8
  store %struct.ud_operand* %1, %struct.ud_operand** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ud*, %struct.ud** %4, align 8
  %9 = getelementptr inbounds %struct.ud, %struct.ud* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @UD_ASSERT(i32 %12)
  %14 = load %struct.ud*, %struct.ud** %4, align 8
  %15 = getelementptr inbounds %struct.ud, %struct.ud* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 196
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.ud*, %struct.ud** %4, align 8
  %20 = getelementptr inbounds %struct.ud, %struct.ud* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.ud*, %struct.ud** %4, align 8
  %24 = getelementptr inbounds %struct.ud, %struct.ud* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %21, %18 ], [ %25, %22 ]
  %28 = ashr i32 %27, 3
  %29 = and i32 %28, 15
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ud*, %struct.ud** %4, align 8
  %31 = load %struct.ud_operand*, %struct.ud_operand** %5, align 8
  %32 = load i32, i32* @REGCLASS_XMM, align 4
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 15, %34
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @decode_reg(%struct.ud* %30, %struct.ud_operand* %31, i32 %32, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @UD_ASSERT(i32) #1

declare dso_local i32 @decode_reg(%struct.ud*, %struct.ud_operand*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
