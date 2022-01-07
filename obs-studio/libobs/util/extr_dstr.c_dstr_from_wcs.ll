; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_from_wcs.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_from_wcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dstr_from_wcs(%struct.dstr* %0, i32* %1) #0 {
  %3 = alloca %struct.dstr*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.dstr* %0, %struct.dstr** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i64 @wchar_to_utf8(i32* %6, i32 0, i32* null, i64 0, i32 0)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.dstr*, %struct.dstr** %3, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @dstr_resize(%struct.dstr* %11, i64 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.dstr*, %struct.dstr** %3, align 8
  %16 = getelementptr inbounds %struct.dstr, %struct.dstr* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 1
  %20 = call i64 @wchar_to_utf8(i32* %14, i32 0, i32* %17, i64 %19, i32 0)
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.dstr*, %struct.dstr** %3, align 8
  %23 = call i32 @dstr_free(%struct.dstr* %22)
  br label %24

24:                                               ; preds = %21, %10
  ret void
}

declare dso_local i64 @wchar_to_utf8(i32*, i32, i32*, i64, i32) #1

declare dso_local i32 @dstr_resize(%struct.dstr*, i64) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
