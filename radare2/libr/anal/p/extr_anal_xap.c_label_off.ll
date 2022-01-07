; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xap.c_label_off.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xap.c_label_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.directive = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.directive*)* @label_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @label_off(%struct.directive* %0) #0 {
  %2 = alloca %struct.directive*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.directive* %0, %struct.directive** %2, align 8
  %5 = load %struct.directive*, %struct.directive** %2, align 8
  %6 = getelementptr inbounds %struct.directive, %struct.directive* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 128
  store i32 %9, i32* %4, align 4
  %10 = load %struct.directive*, %struct.directive** %2, align 8
  %11 = getelementptr inbounds %struct.directive, %struct.directive* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 255
  %17 = trunc i32 %16 to i8
  %18 = sext i8 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %59

19:                                               ; preds = %1
  %20 = load %struct.directive*, %struct.directive** %2, align 8
  %21 = getelementptr inbounds %struct.directive, %struct.directive* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 65535
  %27 = trunc i32 %26 to i16
  %28 = sext i16 %27 to i32
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 256
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %24
  br label %58

35:                                               ; preds = %19
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 16777215
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, 8388608
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, -16777216
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 32768
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = sub nsw i32 %49, 65536
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  %56 = sub nsw i32 %55, 256
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %34
  br label %59

59:                                               ; preds = %58, %14
  %60 = load %struct.directive*, %struct.directive** %2, align 8
  %61 = getelementptr inbounds %struct.directive, %struct.directive* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %62, %63
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
