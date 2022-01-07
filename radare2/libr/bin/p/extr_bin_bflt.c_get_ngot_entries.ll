; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_bflt.c_get_ngot_entries.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_bflt.c_get_ngot_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_bflt_obj = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r_bin_bflt_obj*)* @get_ngot_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ngot_entries(%struct.r_bin_bflt_obj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r_bin_bflt_obj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.r_bin_bflt_obj* %0, %struct.r_bin_bflt_obj** %3, align 8
  %10 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %3, align 8
  %11 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %3, align 8
  %16 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %14, %19
  store i32 %20, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %3, align 8
  %23 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

27:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %76, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %81

32:                                               ; preds = %28
  %33 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %3, align 8
  %34 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 4
  %43 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %3, align 8
  %44 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = icmp ugt i64 %42, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %32
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48, %32
  store i32 0, i32* %2, align 4
  br label %83

58:                                               ; preds = %48
  %59 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %3, align 8
  %60 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 @r_buf_read_at(i32 %61, i32 %64, i32* %7, i32 4)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ne i64 %67, 4
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %83

70:                                               ; preds = %58
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @VALID_GOT_ENTRY(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %81

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 4
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %28

81:                                               ; preds = %74, %28
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %69, %57, %26
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @r_buf_read_at(i32, i32, i32*, i32) #1

declare dso_local i32 @VALID_GOT_ENTRY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
