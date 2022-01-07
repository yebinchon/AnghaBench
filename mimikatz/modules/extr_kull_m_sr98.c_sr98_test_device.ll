; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_sr98.c_sr98_test_device.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_sr98.c_sr98_test_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SR98_IOCTL_TEST_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i32] [i32 82, i32 101, i32 99, i32 101, i32 105, i32 118, i32 101, i32 100, i32 32, i32 100, i32 97, i32 116, i32 97, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 111, i32 114, i32 105, i32 103, i32 105, i32 110, i32 43, i32 49, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 52, i32 120, i32 41, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [33 x i32] [i32 82, i32 101, i32 99, i32 101, i32 105, i32 118, i32 101, i32 100, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 50, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr98_test_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %3, align 4
  store i32 16962, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @SR98_IOCTL_TEST_DEVICE, align 4
  %10 = call i64 @sr98_send_receive(i32 %8, i32 %9, i32* %4, i32 4, i32** %5, i32* %6)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, 256
  %21 = icmp eq i32 %18, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br i1 %21, label %28, label %23

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @_byteswap_ushort(i32 %25)
  %27 = call i32 @PRINT_ERROR(i8* bitcast ([40 x i32]* @.str to i8*), i32 %26)
  br label %28

28:                                               ; preds = %23, %16
  br label %32

29:                                               ; preds = %12
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @PRINT_ERROR(i8* bitcast ([33 x i32]* @.str.1 to i8*), i32 %30)
  br label %32

32:                                               ; preds = %29, %28
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @LocalFree(i32* %33)
  br label %35

35:                                               ; preds = %32, %1
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @sr98_send_receive(i32, i32, i32*, i32, i32**, i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32) #1

declare dso_local i32 @_byteswap_ushort(i32) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
