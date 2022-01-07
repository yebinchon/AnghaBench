; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_wrjpgcom.c_skip_variable.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_wrjpgcom.c_skip_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Erroneous JPEG marker length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @skip_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_variable() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @read_2_bytes()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @ERREXIT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* %1, align 4
  %9 = sub i32 %8, 2
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %13, %7
  %11 = load i32, i32* %1, align 4
  %12 = icmp ugt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = call i32 (...) @read_1_byte()
  %15 = load i32, i32* %1, align 4
  %16 = add i32 %15, -1
  store i32 %16, i32* %1, align 4
  br label %10

17:                                               ; preds = %10
  ret void
}

declare dso_local i32 @read_2_bytes(...) #1

declare dso_local i32 @ERREXIT(i8*) #1

declare dso_local i32 @read_1_byte(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
