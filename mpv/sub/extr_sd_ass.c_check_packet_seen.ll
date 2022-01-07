; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_check_packet_seen.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_check_packet_seen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.sd_ass_priv* }
%struct.sd_ass_priv = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i64)* @check_packet_seen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_packet_seen(%struct.sd* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sd_ass_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.sd*, %struct.sd** %4, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %12, align 8
  store %struct.sd_ass_priv* %13, %struct.sd_ass_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %6, align 8
  %15 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %48, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sdiv i32 %25, 2
  %27 = add nsw i32 %22, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %6, align 8
  %29 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %60

39:                                               ; preds = %21
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %43
  br label %17

49:                                               ; preds = %17
  %50 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %6, align 8
  %51 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %6, align 8
  %52 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %6, align 8
  %55 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @MP_TARRAY_INSERT_AT(%struct.sd_ass_priv* %50, i64* %53, i32 %56, i32 %57, i64 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %49, %38
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @MP_TARRAY_INSERT_AT(%struct.sd_ass_priv*, i64*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
