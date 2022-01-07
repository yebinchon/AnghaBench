; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_number.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_info = type { i32 }

@INT_MAX = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d_info*)* @d_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d_number(%struct.d_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.d_info*, %struct.d_info** %3, align 8
  %8 = call signext i8 @d_peek_char(%struct.d_info* %7)
  store i8 %8, i8* %5, align 1
  %9 = load i8, i8* %5, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 110
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  %13 = load %struct.d_info*, %struct.d_info** %3, align 8
  %14 = call i32 @d_advance(%struct.d_info* %13, i32 1)
  %15 = load %struct.d_info*, %struct.d_info** %3, align 8
  %16 = call signext i8 @d_peek_char(%struct.d_info* %15)
  store i8 %16, i8* %5, align 1
  br label %17

17:                                               ; preds = %12, %1
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %17, %41
  %19 = load i8, i8* %5, align 1
  %20 = call i32 @IS_DIGIT(i8 signext %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %52

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  %32 = load i8, i8* @INT_MAX, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* %5, align 1
  %35 = sext i8 %34 to i32
  %36 = sub nsw i32 %35, 48
  %37 = sub nsw i32 %33, %36
  %38 = sdiv i32 %37, 10
  %39 = icmp sgt i32 %31, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %52

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %42, 10
  %44 = load i8, i8* %5, align 1
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %43, %45
  %47 = sub nsw i32 %46, 48
  store i32 %47, i32* %6, align 4
  %48 = load %struct.d_info*, %struct.d_info** %3, align 8
  %49 = call i32 @d_advance(%struct.d_info* %48, i32 1)
  %50 = load %struct.d_info*, %struct.d_info** %3, align 8
  %51 = call signext i8 @d_peek_char(%struct.d_info* %50)
  store i8 %51, i8* %5, align 1
  br label %18

52:                                               ; preds = %40, %28
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local i32 @IS_DIGIT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
