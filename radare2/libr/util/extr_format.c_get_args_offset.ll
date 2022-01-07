; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_format.c_get_args_offset.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_format.c_get_args_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_args_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_args_offset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 32)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @strchr(i8* %9, i8 signext 91)
  store i8* %10, i8** %4, align 8
  store i32 30, i32* %5, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load i8*, i8** %2, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 93)
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %35, %16
  %20 = load i8*, i8** %3, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = icmp ugt i8* %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  %32 = icmp ne i32 %30, 0
  br label %33

33:                                               ; preds = %29, %25, %22, %19
  %34 = phi i1 [ false, %25 ], [ false, %22 ], [ false, %19 ], [ %32, %29 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 32)
  store i8* %37, i8** %3, align 8
  br label %19

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %13, %1
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
