; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_vex_immreg.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_vex_immreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i64 }
%struct.ud_operand = type { i32 }

@REGCLASS_XMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ud*, %struct.ud_operand*, i32)* @decode_vex_immreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_vex_immreg(%struct.ud* %0, %struct.ud_operand* %1, i32 %2) #0 {
  %4 = alloca %struct.ud*, align 8
  %5 = alloca %struct.ud_operand*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %4, align 8
  store %struct.ud_operand* %1, %struct.ud_operand** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ud*, %struct.ud** %4, align 8
  %10 = call i32 @inp_next(%struct.ud* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ud*, %struct.ud** %4, align 8
  %12 = getelementptr inbounds %struct.ud, %struct.ud* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 64
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 15, i32 7
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ud*, %struct.ud** %4, align 8
  %18 = call i32 @UD_RETURN_ON_ERROR(%struct.ud* %17)
  %19 = load %struct.ud*, %struct.ud** %4, align 8
  %20 = getelementptr inbounds %struct.ud, %struct.ud* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @UD_ASSERT(i32 %23)
  %25 = load %struct.ud*, %struct.ud** %4, align 8
  %26 = load %struct.ud_operand*, %struct.ud_operand** %5, align 8
  %27 = load i32, i32* @REGCLASS_XMM, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 4
  %31 = and i32 %28, %30
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @decode_reg(%struct.ud* %25, %struct.ud_operand* %26, i32 %27, i32 %31, i32 %32)
  ret i32 0
}

declare dso_local i32 @inp_next(%struct.ud*) #1

declare dso_local i32 @UD_RETURN_ON_ERROR(%struct.ud*) #1

declare dso_local i32 @UD_ASSERT(i32) #1

declare dso_local i32 @decode_reg(%struct.ud*, %struct.ud_operand*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
