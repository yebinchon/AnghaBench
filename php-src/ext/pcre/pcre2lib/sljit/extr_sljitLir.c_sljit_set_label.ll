; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_set_label.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_set_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_jump = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.sljit_label* }
%struct.sljit_label = type { i32 }

@JUMP_ADDR = common dso_local global i32 0, align 4
@JUMP_LABEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sljit_set_label(%struct.sljit_jump* %0, %struct.sljit_label* %1) #0 {
  %3 = alloca %struct.sljit_jump*, align 8
  %4 = alloca %struct.sljit_label*, align 8
  store %struct.sljit_jump* %0, %struct.sljit_jump** %3, align 8
  store %struct.sljit_label* %1, %struct.sljit_label** %4, align 8
  %5 = load %struct.sljit_jump*, %struct.sljit_jump** %3, align 8
  %6 = icmp ne %struct.sljit_jump* %5, null
  %7 = xor i1 %6, true
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @SLJIT_LIKELY(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.sljit_label*, %struct.sljit_label** %4, align 8
  %14 = icmp ne %struct.sljit_label* %13, null
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @SLJIT_LIKELY(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %12
  %21 = load i32, i32* @JUMP_ADDR, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.sljit_jump*, %struct.sljit_jump** %3, align 8
  %24 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @JUMP_LABEL, align 4
  %28 = load %struct.sljit_jump*, %struct.sljit_jump** %3, align 8
  %29 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.sljit_label*, %struct.sljit_label** %4, align 8
  %33 = load %struct.sljit_jump*, %struct.sljit_jump** %3, align 8
  %34 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.sljit_label* %32, %struct.sljit_label** %35, align 8
  br label %36

36:                                               ; preds = %20, %12, %2
  ret void
}

declare dso_local i64 @SLJIT_LIKELY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
