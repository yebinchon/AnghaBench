; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_term.c_grub_putcode.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_term.c_grub_putcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_term_output = type { i32 (...)*, i32 (i8)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grub_putcode(i8 signext %0, %struct.grub_term_output* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.grub_term_output*, align 8
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store %struct.grub_term_output* %1, %struct.grub_term_output** %4, align 8
  %6 = load i8, i8* %3, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %struct.grub_term_output*, %struct.grub_term_output** %4, align 8
  %11 = getelementptr inbounds %struct.grub_term_output, %struct.grub_term_output* %10, i32 0, i32 0
  %12 = load i32 (...)*, i32 (...)** %11, align 8
  %13 = icmp ne i32 (...)* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.grub_term_output*, %struct.grub_term_output** %4, align 8
  %16 = getelementptr inbounds %struct.grub_term_output, %struct.grub_term_output* %15, i32 0, i32 0
  %17 = load i32 (...)*, i32 (...)** %16, align 8
  %18 = call i32 (...) %17()
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 7
  %21 = sub nsw i32 8, %20
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %26, %14
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %5, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load %struct.grub_term_output*, %struct.grub_term_output** %4, align 8
  call void @grub_putcode(i8 signext 32, %struct.grub_term_output* %27)
  br label %22

28:                                               ; preds = %22
  br label %43

29:                                               ; preds = %9, %2
  %30 = load %struct.grub_term_output*, %struct.grub_term_output** %4, align 8
  %31 = getelementptr inbounds %struct.grub_term_output, %struct.grub_term_output* %30, i32 0, i32 1
  %32 = load i32 (i8)*, i32 (i8)** %31, align 8
  %33 = load i8, i8* %3, align 1
  %34 = call i32 %32(i8 signext %33)
  %35 = load i8, i8* %3, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.grub_term_output*, %struct.grub_term_output** %4, align 8
  %40 = getelementptr inbounds %struct.grub_term_output, %struct.grub_term_output* %39, i32 0, i32 1
  %41 = load i32 (i8)*, i32 (i8)** %40, align 8
  %42 = call i32 %41(i8 signext 13)
  br label %43

43:                                               ; preds = %28, %38, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
