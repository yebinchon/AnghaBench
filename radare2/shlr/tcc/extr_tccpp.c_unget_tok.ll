; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_unget_tok.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_unget_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@unget_buffer_enabled = common dso_local global i32 0, align 4
@macro_ptr = common dso_local global i32* null, align 8
@unget_saved_macro_ptr = common dso_local global i32* null, align 8
@unget_saved_buffer = common dso_local global i32* null, align 8
@tok = common dso_local global i32 0, align 4
@tokc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unget_tok(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @unget_buffer_enabled, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %11

9:                                                ; preds = %1
  %10 = load i32*, i32** @macro_ptr, align 8
  store i32* %10, i32** @unget_saved_macro_ptr, align 8
  store i32 1, i32* @unget_buffer_enabled, align 4
  br label %11

11:                                               ; preds = %9, %8
  %12 = load i32*, i32** @unget_saved_buffer, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** @macro_ptr, align 8
  %14 = load i32, i32* @tok, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %17 = load i32, i32* @tok, align 4
  %18 = call i32 @tok_ext_size(i32 %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %32, %11
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tokc, i32 0, i32 0), align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load i32*, i32** %5, align 8
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %2, align 4
  store i32 %37, i32* @tok, align 4
  ret void
}

declare dso_local i32 @tok_ext_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
