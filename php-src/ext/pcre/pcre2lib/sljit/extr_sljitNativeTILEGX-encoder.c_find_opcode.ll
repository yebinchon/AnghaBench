; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX-encoder.c_find_opcode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX-encoder.c_find_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tilegx_opcode = type { i32 }

@tilegx_bundle_decoder_fsms = common dso_local global i16** null, align 8
@TILEGX_OPC_NONE = common dso_local global i16 0, align 2
@tilegx_opcodes = common dso_local global %struct.tilegx_opcode* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tilegx_opcode* @find_opcode(i16 zeroext %0, i64 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i64, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i64 %1, i64* %4, align 8
  %10 = load i16**, i16*** @tilegx_bundle_decoder_fsms, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i16*, i16** %10, i64 %11
  %13 = load i16*, i16** %12, align 8
  store i16* %13, i16** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %2, %48
  %15 = load i16*, i16** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16, i16* %15, i64 %17
  %19 = load i16, i16* %18, align 2
  store i16 %19, i16* %7, align 2
  %20 = load i16, i16* %3, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* %7, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 63
  %25 = ashr i32 %21, %24
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = ashr i32 %27, 6
  %29 = and i32 %25, %28
  store i32 %29, i32* %8, align 4
  %30 = load i16*, i16** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %30, i64 %35
  %37 = load i16, i16* %36, align 2
  store i16 %37, i16* %9, align 2
  %38 = load i16, i16* %9, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* @TILEGX_OPC_NONE, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp sle i32 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %14
  %44 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** @tilegx_opcodes, align 8
  %45 = load i16, i16* %9, align 2
  %46 = zext i16 %45 to i64
  %47 = getelementptr inbounds %struct.tilegx_opcode, %struct.tilegx_opcode* %44, i64 %46
  ret %struct.tilegx_opcode* %47

48:                                               ; preds = %14
  %49 = load i16, i16* %9, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* @TILEGX_OPC_NONE, align 2
  %52 = zext i16 %51 to i32
  %53 = sub nsw i32 %50, %52
  store i32 %53, i32* %6, align 4
  br label %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
