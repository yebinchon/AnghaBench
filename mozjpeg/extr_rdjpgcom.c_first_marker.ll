; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_rdjpgcom.c_first_marker.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_rdjpgcom.c_first_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_SOI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Not a JPEG file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @first_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @first_marker() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @NEXTBYTE()
  store i32 %3, i32* %1, align 4
  %4 = call i32 (...) @NEXTBYTE()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 255
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @M_SOI, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %0
  %12 = call i32 @ERREXIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %7
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i32 @NEXTBYTE(...) #1

declare dso_local i32 @ERREXIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
