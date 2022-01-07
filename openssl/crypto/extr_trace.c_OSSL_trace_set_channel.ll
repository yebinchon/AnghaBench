; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_trace.c_OSSL_trace_set_channel.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_trace.c_OSSL_trace_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_TRACE_CATEGORY_NUM = common dso_local global i32 0, align 4
@SIMPLE_CHANNEL = common dso_local global i32 0, align 4
@trace_attach_cb = common dso_local global i32 0, align 4
@trace_detach_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OSSL_trace_set_channel(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @OSSL_TRACE_CATEGORY_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SIMPLE_CHANNEL, align 4
  %15 = load i32, i32* @trace_attach_cb, align 4
  %16 = load i32, i32* @trace_detach_cb, align 4
  %17 = call i32 @set_trace_data(i32 %13, i32 %14, i32** %5, i32* null, i32* null, i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %19

18:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %12
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @set_trace_data(i32, i32, i32**, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
