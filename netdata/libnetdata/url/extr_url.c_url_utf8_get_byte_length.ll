; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/url/extr_url.c_url_utf8_get_byte_length.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/url/extr_url.c_url_utf8_get_byte_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @url_utf8_get_byte_length(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %5 = load i8, i8* %3, align 1
  %6 = call i32 @IS_UTF8_BYTE(i8 signext %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8 1, i8* %2, align 1
  br label %35

9:                                                ; preds = %1
  store i8 0, i8* %4, align 1
  br label %10

10:                                               ; preds = %17, %9
  %11 = load i8, i8* %3, align 1
  %12 = sext i8 %11 to i32
  %13 = and i32 %12, 128
  %14 = trunc i32 %13 to i8
  %15 = call i64 @likely(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load i8, i8* %4, align 1
  %19 = add i8 %18, 1
  store i8 %19, i8* %4, align 1
  %20 = load i8, i8* %3, align 1
  %21 = sext i8 %20 to i32
  %22 = shl i32 %21, 1
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %3, align 1
  br label %10

24:                                               ; preds = %10
  %25 = load i8, i8* %4, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sgt i32 %26, 4
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8, i8* %4, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24
  store i8 -1, i8* %2, align 1
  br label %35

33:                                               ; preds = %28
  %34 = load i8, i8* %4, align 1
  store i8 %34, i8* %2, align 1
  br label %35

35:                                               ; preds = %33, %32, %8
  %36 = load i8, i8* %2, align 1
  ret i8 %36
}

declare dso_local i32 @IS_UTF8_BYTE(i8 signext) #1

declare dso_local i64 @likely(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
