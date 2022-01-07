; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_armscii8.c_mbfl_filt_conv_wchar_armscii8.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_armscii8.c_mbfl_filt_conv_wchar_armscii8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }

@ucs_armscii8_table = common dso_local global i32* null, align 8
@armscii8_ucs_table_min = common dso_local global i32 0, align 4
@armscii8_ucs_table_len = common dso_local global i32 0, align 4
@armscii8_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_ARMSCII8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_armscii8(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 40
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 48
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32*, i32** @ucs_armscii8_table, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 40
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  br label %62

19:                                               ; preds = %9, %2
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @armscii8_ucs_table_min, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %5, align 4
  br label %61

25:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  %26 = load i32, i32* @armscii8_ucs_table_len, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %43, %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = load i32*, i32** @armscii8_ucs_table, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @armscii8_ucs_table_min, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %5, align 4
  br label %46

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %6, align 4
  br label %28

46:                                               ; preds = %39, %28
  %47 = load i32, i32* %5, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load i32, i32* @MBFL_WCSPLANE_ARMSCII8, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %49, %46
  br label %61

61:                                               ; preds = %60, %23
  br label %62

62:                                               ; preds = %61, %12
  %63 = load i32, i32* %5, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32 (i32, i32)*, i32 (i32, i32)** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %68(i32 %69, i32 %72)
  %74 = call i32 @CK(i32 %73)
  br label %80

75:                                               ; preds = %62
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = call i32 @mbfl_filt_conv_illegal_output(i32 %76, %struct.TYPE_4__* %77)
  %79 = call i32 @CK(i32 %78)
  br label %80

80:                                               ; preds = %75, %65
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
