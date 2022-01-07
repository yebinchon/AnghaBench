; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/whitespace/extr_wsdis.c_get_ws_optype.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/whitespace/extr_wsdis.c_get_ws_optype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WS_OP_PREF = common dso_local global i64 0, align 8
@WS_OP_NOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_ws_optype(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @get_ws_pref_optype(i32* %7, i32 %8)
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* @WS_OP_PREF, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32* %15, i32** %6, align 8
  br label %16

16:                                               ; preds = %32, %13
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = sub nsw i64 %19, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @get_ws_suf_optype(i32* %17, i32 %27)
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @WS_OP_NOP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %6, align 8
  br label %16

35:                                               ; preds = %16
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = ptrtoint i32* %39 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = sub nsw i64 %38, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @get_ws_suf_optype(i32* %36, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %52

48:                                               ; preds = %2
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @get_ws_pref_optype(i32* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %35
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @get_ws_pref_optype(i32*, i32) #1

declare dso_local i32 @get_ws_suf_optype(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
