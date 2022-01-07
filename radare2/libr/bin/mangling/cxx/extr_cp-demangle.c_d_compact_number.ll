; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_compact_number.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_compact_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d_info*)* @d_compact_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d_compact_number(%struct.d_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i32, align 4
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %5 = load %struct.d_info*, %struct.d_info** %3, align 8
  %6 = call signext i8 @d_peek_char(%struct.d_info* %5)
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 95
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.d_info*, %struct.d_info** %3, align 8
  %12 = call signext i8 @d_peek_char(%struct.d_info* %11)
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 110
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %31

16:                                               ; preds = %10
  %17 = load %struct.d_info*, %struct.d_info** %3, align 8
  %18 = call i32 @d_number(%struct.d_info* %17)
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %9
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load %struct.d_info*, %struct.d_info** %3, align 8
  %26 = call i32 @d_check_char(%struct.d_info* %25, i8 signext 95)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %21
  store i32 -1, i32* %2, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %28, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i32 @d_number(%struct.d_info*) #1

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
