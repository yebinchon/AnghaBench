; ModuleID = '/home/carl/AnghaBench/mruby/oss-fuzz/extr_mruby_fuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/mruby/oss-fuzz/extr_mruby_fuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = add i64 %12, 1
  %14 = call i8* @malloc(i64 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @memcpy(i8* %15, i32* %16, i64 %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8 0, i8* %21, align 1
  %22 = call i32* (...) @mrb_open()
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @mrb_load_string(i32* %23, i8* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @mrb_close(i32* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @free(i8* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %11, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32* @mrb_open(...) #1

declare dso_local i32 @mrb_load_string(i32*, i8*) #1

declare dso_local i32 @mrb_close(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
