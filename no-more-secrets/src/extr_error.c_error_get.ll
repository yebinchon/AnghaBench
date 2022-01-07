; ModuleID = '/home/carl/AnghaBench/no-more-secrets/src/extr_error.c_error_get.c'
source_filename = "/home/carl/AnghaBench/no-more-secrets/src/extr_error.c_error_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N = common dso_local global i64 0, align 8
@error_stack = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @error_get() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @N, align 8
  %3 = icmp ugt i64 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i8**, i8*** @error_stack, align 8
  %6 = load i64, i64* @N, align 8
  %7 = add i64 %6, -1
  store i64 %7, i64* @N, align 8
  %8 = getelementptr inbounds i8*, i8** %5, i64 %7
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %1, align 8
  br label %11

10:                                               ; preds = %0
  store i8* null, i8** %1, align 8
  br label %11

11:                                               ; preds = %10, %4
  %12 = load i8*, i8** %1, align 8
  ret i8* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
