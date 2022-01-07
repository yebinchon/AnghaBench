; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sigreturn.c_find_cs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sigreturn.c_find_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@code16_sel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[WARN]\09Could not find %d-bit CS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_cs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  %5 = call i16 asm "mov %cs,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i16 %5, i16* %4, align 2
  %6 = load i16, i16* %4, align 2
  %7 = zext i16 %6 to i32
  %8 = call i32 @cs_bitness(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i16, i16* %4, align 2
  %13 = zext i16 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load i16, i16* %4, align 2
  %16 = zext i16 %15 to i32
  %17 = add nsw i32 %16, 16
  %18 = call i32 @cs_bitness(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i16, i16* %4, align 2
  %23 = zext i16 %22 to i32
  %24 = add nsw i32 %23, 16
  store i32 %24, i32* %2, align 4
  br label %50

25:                                               ; preds = %14
  %26 = load i16, i16* %4, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp sgt i32 %27, 16
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i16, i16* %4, align 2
  %31 = zext i16 %30 to i32
  %32 = sub nsw i32 %31, 16
  %33 = call i32 @cs_bitness(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i16, i16* %4, align 2
  %38 = zext i16 %37 to i32
  %39 = sub nsw i32 %38, 16
  store i32 %39, i32* %2, align 4
  br label %50

40:                                               ; preds = %29, %25
  %41 = load i32, i32* @code16_sel, align 4
  %42 = call i32 @cs_bitness(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @code16_sel, align 4
  store i32 %46, i32* %2, align 4
  br label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 -1, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %45, %36, %21, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @cs_bitness(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 259}
