; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_set_compiler_memory_error.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_set_compiler_memory_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i64 }

@SLJIT_SUCCESS = common dso_local global i64 0, align 8
@SLJIT_ERR_ALLOC_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sljit_set_compiler_memory_error(%struct.sljit_compiler* %0) #0 {
  %2 = alloca %struct.sljit_compiler*, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %2, align 8
  %3 = load %struct.sljit_compiler*, %struct.sljit_compiler** %2, align 8
  %4 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SLJIT_SUCCESS, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i64, i64* @SLJIT_ERR_ALLOC_FAILED, align 8
  %10 = load %struct.sljit_compiler*, %struct.sljit_compiler** %2, align 8
  %11 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  br label %12

12:                                               ; preds = %8, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
