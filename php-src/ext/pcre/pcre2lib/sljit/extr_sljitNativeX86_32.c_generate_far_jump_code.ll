; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeX86_32.c_generate_far_jump_code.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeX86_32.c_generate_far_jump_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_jump = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SLJIT_JUMP = common dso_local global i64 0, align 8
@JMP_i32 = common dso_local global i32 0, align 4
@SLJIT_FAST_CALL = common dso_local global i64 0, align 8
@CALL_i32 = common dso_local global i32 0, align 4
@GROUP_0F = common dso_local global i32 0, align 4
@JUMP_LABEL = common dso_local global i32 0, align 4
@PATCH_MW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.sljit_jump*, i32*, i64, i64)* @generate_far_jump_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @generate_far_jump_code(%struct.sljit_jump* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sljit_jump*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sljit_jump* %0, %struct.sljit_jump** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @SLJIT_JUMP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load i32, i32* @JMP_i32, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  %16 = load %struct.sljit_jump*, %struct.sljit_jump** %5, align 8
  %17 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  br label %45

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @SLJIT_FAST_CALL, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32, i32* @CALL_i32, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  %28 = load %struct.sljit_jump*, %struct.sljit_jump** %5, align 8
  %29 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  br label %44

32:                                               ; preds = %20
  %33 = load i32, i32* @GROUP_0F, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @get_jump_code(i64 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  %40 = load %struct.sljit_jump*, %struct.sljit_jump** %5, align 8
  %41 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 2
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %32, %24
  br label %45

45:                                               ; preds = %44, %12
  %46 = load %struct.sljit_jump*, %struct.sljit_jump** %5, align 8
  %47 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @JUMP_LABEL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* @PATCH_MW, align 4
  %54 = load %struct.sljit_jump*, %struct.sljit_jump** %5, align 8
  %55 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %72

58:                                               ; preds = %45
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.sljit_jump*, %struct.sljit_jump** %5, align 8
  %61 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.sljit_jump*, %struct.sljit_jump** %5, align 8
  %65 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 4
  %68 = sub nsw i64 %63, %67
  %69 = load i64, i64* %8, align 8
  %70 = sub nsw i64 %68, %69
  %71 = call i32 @sljit_unaligned_store_sw(i32* %59, i64 %70)
  br label %72

72:                                               ; preds = %58, %52
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  store i32* %74, i32** %6, align 8
  %75 = load i32*, i32** %6, align 8
  ret i32* %75
}

declare dso_local i32 @get_jump_code(i64) #1

declare dso_local i32 @sljit_unaligned_store_sw(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
