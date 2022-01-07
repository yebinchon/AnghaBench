; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp1252.c_mbfl_filt_conv_wchar_cp1252.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp1252.c_mbfl_filt_conv_wchar_cp1252.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }

@cp1252_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_8859_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_cp1252(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 -1, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 256
  br i1 %8, label %9, label %45

9:                                                ; preds = %2
  store i32 -1, i32* %5, align 4
  store i32 31, i32* %6, align 4
  br label %10

10:                                               ; preds = %27, %9
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = load i32*, i32** @cp1252_ucs_table, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %14, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 65534
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 128, %25
  store i32 %26, i32* %5, align 4
  br label %30

27:                                               ; preds = %21, %13
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  br label %10

30:                                               ; preds = %24, %10
  %31 = load i32, i32* %5, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* @MBFL_WCSPLANE_8859_1, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %33, %30
  br label %54

45:                                               ; preds = %2
  %46 = load i32, i32* %3, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 256
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %48, %45
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32 (i32, i32)*, i32 (i32, i32)** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %60(i32 %61, i32 %64)
  %66 = call i32 @CK(i32 %65)
  br label %72

67:                                               ; preds = %54
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = call i32 @mbfl_filt_conv_illegal_output(i32 %68, %struct.TYPE_4__* %69)
  %71 = call i32 @CK(i32 %70)
  br label %72

72:                                               ; preds = %67, %57
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
