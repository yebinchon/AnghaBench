; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_store_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_store_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@show_bytes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @store_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_size(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 1, i64* %5, align 8
  store i8 0, i8* %6, align 1
  %8 = load i32, i32* @show_bytes, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp ugt i64 %11, 1000000000
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i64 100000000, i64* %5, align 8
  store i8 71, i8* %6, align 1
  br label %24

14:                                               ; preds = %10
  %15 = load i64, i64* %4, align 8
  %16 = icmp ugt i64 %15, 1000000
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i64 100000, i64* %5, align 8
  store i8 77, i8* %6, align 1
  br label %23

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = icmp ugt i64 %19, 1000
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i64 100, i64* %5, align 8
  store i8 75, i8* %6, align 1
  br label %22

22:                                               ; preds = %21, %18
  br label %23

23:                                               ; preds = %22, %17
  br label %24

24:                                               ; preds = %23, %13
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = udiv i64 %27, %26
  store i64 %28, i64* %4, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i8, i8* %6, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = load i8, i8* %6, align 1
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 %35, i8* %39, align 1
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %34, %25
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 1
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load i8*, i8** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = getelementptr inbounds i8, i8* %53, i64 -2
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = getelementptr inbounds i8, i8* %58, i64 -3
  %60 = call i32 @memmove(i8* %54, i8* %59, i32 4)
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 46, i8* %65, align 1
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %49, %46
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
