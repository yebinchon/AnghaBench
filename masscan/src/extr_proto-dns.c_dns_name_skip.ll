; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-dns.c_dns_name_skip.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-dns.c_dns_name_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_name_skip(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %72, %41, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp uge i32 %10, 255
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %4, align 4
  br label %73

15:                                               ; preds = %9
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %73

22:                                               ; preds = %15
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = ashr i32 %28, 6
  switch i32 %29, label %72 [
    i32 0, label %30
    i32 3, label %60
    i32 2, label %66
    i32 1, label %69
  ]

30:                                               ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %73

41:                                               ; preds = %30
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %9

60:                                               ; preds = %22
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dns_name_skip_validate(i8* %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %4, align 4
  br label %73

66:                                               ; preds = %22
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %73

69:                                               ; preds = %22
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %73

72:                                               ; preds = %22
  br label %9

73:                                               ; preds = %69, %66, %60, %38, %19, %12
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @dns_name_skip_validate(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
