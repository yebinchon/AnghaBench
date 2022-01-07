; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_alloc_memory.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_alloc_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sljit_alloc_memory(%struct.sljit_compiler* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sljit_compiler*, align 8
  %5 = alloca i32, align 4
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 (...) @CHECK_ERROR_PTR()
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 64
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i8* null, i8** %3, align 8
  br label %20

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 3
  %16 = and i32 %15, -4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @ensure_abuf(%struct.sljit_compiler* %17, i32 %18)
  store i8* %19, i8** %3, align 8
  br label %20

20:                                               ; preds = %13, %12
  %21 = load i8*, i8** %3, align 8
  ret i8* %21
}

declare dso_local i32 @CHECK_ERROR_PTR(...) #1

declare dso_local i8* @ensure_abuf(%struct.sljit_compiler*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
