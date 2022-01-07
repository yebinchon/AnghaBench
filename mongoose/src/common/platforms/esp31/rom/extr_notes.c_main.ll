; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp31/rom/extr_notes.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp31/rom/extr_notes.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC = common dso_local global i64 0, align 8
@GPIO_STRAP = common dso_local global i32 0, align 4
@boot_banner = common dso_local global i32 0, align 4
@fw_build = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %u\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ets_main.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @_X_get_rst_cause()
  store i32 %3, i32* %1, align 4
  %4 = load i64, i64* @RTC, align 8
  %5 = add nsw i64 %4, 128
  %6 = call i32 @BIT(i32 17)
  %7 = call i32 @CLEAR_PERI_REG_MASK(i64 %5, i32 %6)
  %8 = load i64, i64* @RTC, align 8
  %9 = add nsw i64 %8, 128
  %10 = call i32 @BIT(i32 12)
  %11 = call i32 @SET_PERI_REG_MASK(i64 %9, i32 %10)
  %12 = load i32, i32* @GPIO_STRAP, align 4
  %13 = call i32 @GET_PERI_REG_BITS(i32 %12, i32 6, i32 0)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @BIT(i32 5)
  %16 = call i32 @BIT(i32 4)
  %17 = or i32 %15, %16
  %18 = call i32 @BIT(i32 5)
  %19 = call i32 @BIT(i32 4)
  %20 = or i32 %18, %19
  %21 = icmp eq i32 %17, %20
  %22 = zext i1 %21 to i32
  %23 = and i32 %14, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %0
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %26, 24
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %29, 26
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %25, %0
  %32 = load i64, i64* @RTC, align 8
  %33 = add nsw i64 %32, 116
  %34 = call i32 @CLEAR_PERI_REG_MASK(i64 %33, i32 255)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @BIT(i32 5)
  %38 = call i32 @BIT(i32 4)
  %39 = or i32 %37, %38
  %40 = call i32 @BIT(i32 5)
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = and i32 %36, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %35
  %46 = load i64, i64* @RTC, align 8
  %47 = add nsw i64 %46, 148
  %48 = call i32 @BIT(i32 31)
  %49 = call i32 @CLEAR_PERI_REG_MASK(i64 %47, i32 %48)
  %50 = load i64, i64* @RTC, align 8
  %51 = add nsw i64 %50, 152
  %52 = call i32 @BIT(i32 31)
  %53 = call i32 @CLEAR_PERI_REG_MASK(i64 %51, i32 %52)
  %54 = load i64, i64* @RTC, align 8
  %55 = add nsw i64 %54, 156
  %56 = call i32 @BIT(i32 31)
  %57 = call i32 @CLEAR_PERI_REG_MASK(i64 %55, i32 %56)
  %58 = load i64, i64* @RTC, align 8
  %59 = add nsw i64 %58, 160
  %60 = call i32 @BIT(i32 31)
  %61 = call i32 @CLEAR_PERI_REG_MASK(i64 %59, i32 %60)
  %62 = load i64, i64* @RTC, align 8
  %63 = add nsw i64 %62, 164
  %64 = call i32 @BIT(i32 31)
  %65 = call i32 @CLEAR_PERI_REG_MASK(i64 %63, i32 %64)
  %66 = load i64, i64* @RTC, align 8
  %67 = add nsw i64 %66, 168
  %68 = call i32 @BIT(i32 31)
  %69 = call i32 @CLEAR_PERI_REG_MASK(i64 %67, i32 %68)
  %70 = load i64, i64* @RTC, align 8
  %71 = add nsw i64 %70, 172
  %72 = call i32 @BIT(i32 31)
  %73 = call i32 @CLEAR_PERI_REG_MASK(i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %45, %35
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @BIT(i32 5)
  %77 = call i32 @BIT(i32 3)
  %78 = or i32 %76, %77
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = and i32 %75, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %74
  %85 = load i64, i64* @RTC, align 8
  %86 = add nsw i64 %85, 116
  %87 = call i32 @CLEAR_PERI_REG_MASK(i64 %86, i32 255)
  %88 = call i32 (...) @_X_uart_attach()
  %89 = call i32 @_X_uart_init(i32 0)
  %90 = load i32, i32* @boot_banner, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = load i32, i32* @fw_build, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* %2, align 4
  %98 = call i32 (i8*, i8*, i32, ...) @ets_printf(i8* %92, i8* %95, i32 %96, i32 %97)
  %99 = load i32, i32* %1, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %84
  %102 = load i32, i32* %1, align 4
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %84
  br label %106

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %104
  %107 = call i32 (i8*, i8*, i32, ...) @ets_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 305)
  br label %108

108:                                              ; preds = %106, %108
  br label %108
}

declare dso_local i32 @_X_get_rst_cause(...) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i64, i32) #1

declare dso_local i32 @GET_PERI_REG_BITS(i32, i32, i32) #1

declare dso_local i32 @_X_uart_attach(...) #1

declare dso_local i32 @_X_uart_init(i32) #1

declare dso_local i32 @ets_printf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
