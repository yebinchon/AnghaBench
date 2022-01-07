; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_next_is_type_qual.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_next_is_type_qual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d_info*)* @next_is_type_qual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_is_type_qual(%struct.d_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i8, align 1
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %5 = load %struct.d_info*, %struct.d_info** %3, align 8
  %6 = call signext i8 @d_peek_char(%struct.d_info* %5)
  store i8 %6, i8* %4, align 1
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 114
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load i8, i8* %4, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 86
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8, i8* %4, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 75
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10, %1
  store i32 1, i32* %2, align 4
  br label %44

19:                                               ; preds = %14
  %20 = load i8, i8* %4, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 68
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load %struct.d_info*, %struct.d_info** %3, align 8
  %25 = call signext i8 @d_peek_next_char(%struct.d_info* %24)
  store i8 %25, i8* %4, align 1
  %26 = load i8, i8* %4, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 120
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load i8, i8* %4, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 111
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i8, i8* %4, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 79
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8, i8* %4, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 119
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33, %29, %23
  store i32 1, i32* %2, align 4
  br label %44

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %19
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %41, %18
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local signext i8 @d_peek_next_char(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
