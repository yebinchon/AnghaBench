; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_tok_ext_size.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_tok_ext_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"unsupported token\00", align 1
@LDOUBLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tok_ext_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tok_ext_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %12 [
    i32 137, label %5
    i32 134, label %5
    i32 140, label %5
    i32 132, label %5
    i32 138, label %5
    i32 131, label %5
    i32 128, label %6
    i32 130, label %6
    i32 129, label %6
    i32 139, label %8
    i32 135, label %8
    i32 133, label %8
    i32 136, label %9
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %13

6:                                                ; preds = %1, %1, %1
  %7 = call i32 @tcc_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %13

8:                                                ; preds = %1, %1, %1
  store i32 2, i32* %2, align 4
  br label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @LDOUBLE_SIZE, align 4
  %11 = sdiv i32 %10, 4
  store i32 %11, i32* %2, align 4
  br label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %9, %8, %6, %5
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i32 @tcc_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
