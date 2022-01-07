; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_wrjpgcom.c_copy_variable.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_wrjpgcom.c_copy_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Erroneous JPEG marker length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @copy_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_variable() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @read_2_bytes()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i32 @write_2_bytes(i32 %3)
  %5 = load i32, i32* %1, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @ERREXIT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32, i32* %1, align 4
  %11 = sub i32 %10, 2
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %15, %9
  %13 = load i32, i32* %1, align 4
  %14 = icmp ugt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = call i32 (...) @read_1_byte()
  %17 = call i32 @write_1_byte(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = add i32 %18, -1
  store i32 %19, i32* %1, align 4
  br label %12

20:                                               ; preds = %12
  ret void
}

declare dso_local i32 @read_2_bytes(...) #1

declare dso_local i32 @write_2_bytes(i32) #1

declare dso_local i32 @ERREXIT(i8*) #1

declare dso_local i32 @write_1_byte(i32) #1

declare dso_local i32 @read_1_byte(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
