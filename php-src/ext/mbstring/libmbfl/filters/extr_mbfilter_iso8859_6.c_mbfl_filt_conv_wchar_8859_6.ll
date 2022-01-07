; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso8859_6.c_mbfl_filt_conv_wchar_8859_6.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso8859_6.c_mbfl_filt_conv_wchar_8859_6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }

@iso8859_6_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_8859_6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_8859_6(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 160
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %5, align 4
  br label %47

14:                                               ; preds = %9, %2
  store i32 -1, i32* %5, align 4
  store i32 95, i32* %6, align 4
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = load i32*, i32** @iso8859_6_ucs_table, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 160, %27
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %6, align 4
  br label %15

32:                                               ; preds = %26, %15
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load i32, i32* @MBFL_WCSPLANE_8859_6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %35, %32
  br label %47

47:                                               ; preds = %46, %12
  %48 = load i32, i32* %5, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32 (i32, i32)*, i32 (i32, i32)** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %53(i32 %54, i32 %57)
  %59 = call i32 @CK(i32 %58)
  br label %65

60:                                               ; preds = %47
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = call i32 @mbfl_filt_conv_illegal_output(i32 %61, %struct.TYPE_4__* %62)
  %64 = call i32 @CK(i32 %63)
  br label %65

65:                                               ; preds = %60, %50
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
