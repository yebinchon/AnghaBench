; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_set_target.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_jump = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@JUMP_LABEL = common dso_local global i32 0, align 4
@JUMP_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sljit_set_target(%struct.sljit_jump* %0, i32 %1) #0 {
  %3 = alloca %struct.sljit_jump*, align 8
  %4 = alloca i32, align 4
  store %struct.sljit_jump* %0, %struct.sljit_jump** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sljit_jump*, %struct.sljit_jump** %3, align 8
  %6 = icmp ne %struct.sljit_jump* %5, null
  %7 = xor i1 %6, true
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @SLJIT_LIKELY(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i32, i32* @JUMP_LABEL, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.sljit_jump*, %struct.sljit_jump** %3, align 8
  %16 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @JUMP_ADDR, align 4
  %20 = load %struct.sljit_jump*, %struct.sljit_jump** %3, align 8
  %21 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.sljit_jump*, %struct.sljit_jump** %3, align 8
  %26 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %12, %2
  ret void
}

declare dso_local i64 @SLJIT_LIKELY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
