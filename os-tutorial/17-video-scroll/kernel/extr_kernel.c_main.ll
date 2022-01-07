; ModuleID = '/home/carl/AnghaBench/os-tutorial/17-video-scroll/kernel/extr_kernel.c_main.c'
source_filename = "/home/carl/AnghaBench/os-tutorial/17-video-scroll/kernel/extr_kernel.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [62 x i8] c"This text forces the kernel to scroll. Row 0 will disappear. \00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"And with this text, the kernel will scroll again, and row 1 will disappear too!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [255 x i8], align 16
  %3 = call i32 (...) @clear_screen()
  store i32 0, i32* %1, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %14, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 24
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  %10 = call i32 @int_to_ascii(i32 %8, i8* %9)
  %11 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @kprint_at(i8* %11, i32 0, i32 %12)
  br label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %4

17:                                               ; preds = %4
  %18 = call i32 @kprint_at(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 60, i32 24)
  %19 = call i32 @kprint(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @clear_screen(...) #1

declare dso_local i32 @int_to_ascii(i32, i8*) #1

declare dso_local i32 @kprint_at(i8*, i32, i32) #1

declare dso_local i32 @kprint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
