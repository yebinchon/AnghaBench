; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeX86_common.c_emit_sse2_logic.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeX86_common.c_emit_sse2_logic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32 }

@EX86_PREF_66 = common dso_local global i32 0, align 4
@EX86_SSE2 = common dso_local global i32 0, align 4
@GROUP_0F = common dso_local global i32 0, align 4
@SLJIT_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sljit_compiler*, i32, i64, i64, i64, i32)* @emit_sse2_logic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @emit_sse2_logic(%struct.sljit_compiler* %0, i32 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.sljit_compiler*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.sljit_compiler*, %struct.sljit_compiler** %7, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i32, i32* @EX86_PREF_66, align 4
  br label %20

19:                                               ; preds = %6
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = or i32 2, %21
  %23 = load i32, i32* @EX86_SSE2, align 4
  %24 = or i32 %22, %23
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32* @emit_x86_instruction(%struct.sljit_compiler* %14, i32 %24, i64 %25, i32 0, i64 %26, i32 %27)
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = icmp ne i32* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @FAIL_IF(i32 %32)
  %34 = load i32, i32* @GROUP_0F, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %13, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %13, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i64, i64* @SLJIT_SUCCESS, align 8
  ret i64 %39
}

declare dso_local i32* @emit_x86_instruction(%struct.sljit_compiler*, i32, i64, i32, i64, i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
