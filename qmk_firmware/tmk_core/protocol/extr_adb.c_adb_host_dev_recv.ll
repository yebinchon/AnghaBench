; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_adb.c_adb_host_dev_recv.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_adb.c_adb_host_dev_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adb_host_dev_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adb_host_dev_recv(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = call i32 (...) @cli()
  %9 = call i32 (...) @attention()
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, 12
  %12 = call i32 @send_byte(i32 %11)
  %13 = call i32 (...) @place_bit0()
  %14 = call i32 @wait_data_hi(i32 500)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 (...) @sei()
  store i32 -30, i32* %2, align 4
  br label %76

18:                                               ; preds = %1
  %19 = call i64 @wait_data_lo(i32 500)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 (...) @sei()
  store i32 0, i32* %2, align 4
  br label %76

23:                                               ; preds = %18
  store i32 17, i32* %5, align 4
  br label %24

24:                                               ; preds = %57, %23
  %25 = call i32 @wait_data_hi(i32 130)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %72

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @wait_data_lo(i32 %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %72

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 130, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %56

50:                                               ; preds = %36
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 17
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (...) @sei()
  store i32 -20, i32* %2, align 4
  br label %76

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %47
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %24, label %61

61:                                               ; preds = %57
  %62 = call i32 @wait_data_hi(i32 351)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = call i64 @wait_data_lo(i32 91)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %61
  %68 = call i32 (...) @sei()
  store i32 -21, i32* %2, align 4
  br label %76

69:                                               ; preds = %64
  %70 = call i32 (...) @sei()
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %76

72:                                               ; preds = %35, %28
  %73 = call i32 (...) @sei()
  %74 = load i32, i32* %5, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %69, %67, %53, %21, %16
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @cli(...) #1

declare dso_local i32 @attention(...) #1

declare dso_local i32 @send_byte(i32) #1

declare dso_local i32 @place_bit0(...) #1

declare dso_local i32 @wait_data_hi(i32) #1

declare dso_local i32 @sei(...) #1

declare dso_local i64 @wait_data_lo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
