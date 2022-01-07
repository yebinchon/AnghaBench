; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_eventfd.c_ioeventfd_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_eventfd.c_ioeventfd_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ioeventfd = type { i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._ioeventfd*, i64, i32, i8*)* @ioeventfd_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioeventfd_in_range(%struct._ioeventfd* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._ioeventfd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct._ioeventfd* %0, %struct._ioeventfd** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load %struct._ioeventfd*, %struct._ioeventfd** %6, align 8
  %13 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %71

17:                                               ; preds = %4
  %18 = load %struct._ioeventfd*, %struct._ioeventfd** %6, align 8
  %19 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %71

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = load %struct._ioeventfd*, %struct._ioeventfd** %6, align 8
  %26 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %71

30:                                               ; preds = %23
  %31 = load %struct._ioeventfd*, %struct._ioeventfd** %6, align 8
  %32 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %71

36:                                               ; preds = %30
  %37 = load i8*, i8** %9, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @IS_ALIGNED(i64 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %62 [
    i32 1, label %46
    i32 2, label %50
    i32 4, label %54
    i32 8, label %58
  ]

46:                                               ; preds = %36
  %47 = load i8*, i8** %9, align 8
  %48 = bitcast i8* %47 to i64*
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %10, align 8
  br label %63

50:                                               ; preds = %36
  %51 = load i8*, i8** %9, align 8
  %52 = bitcast i8* %51 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  br label %63

54:                                               ; preds = %36
  %55 = load i8*, i8** %9, align 8
  %56 = bitcast i8* %55 to i64*
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  br label %63

58:                                               ; preds = %36
  %59 = load i8*, i8** %9, align 8
  %60 = bitcast i8* %59 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %10, align 8
  br label %63

62:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %71

63:                                               ; preds = %58, %54, %50, %46
  %64 = load i64, i64* %10, align 8
  %65 = load %struct._ioeventfd*, %struct._ioeventfd** %6, align 8
  %66 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %63, %62, %35, %29, %22, %16
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
