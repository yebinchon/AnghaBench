; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_size.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_extra_field = type { i32, i64, %struct.zip_extra_field* }

@ZIP_EF_BOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_zip_ef_size(%struct.zip_extra_field* %0, i32 %1) #0 {
  %3 = alloca %struct.zip_extra_field*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.zip_extra_field* %0, %struct.zip_extra_field** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %26, %2
  %7 = load %struct.zip_extra_field*, %struct.zip_extra_field** %3, align 8
  %8 = icmp ne %struct.zip_extra_field* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %6
  %10 = load %struct.zip_extra_field*, %struct.zip_extra_field** %3, align 8
  %11 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @ZIP_EF_BOTH, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %9
  %19 = load %struct.zip_extra_field*, %struct.zip_extra_field** %3, align 8
  %20 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 4, %21
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %18, %9
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.zip_extra_field*, %struct.zip_extra_field** %3, align 8
  %28 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %27, i32 0, i32 2
  %29 = load %struct.zip_extra_field*, %struct.zip_extra_field** %28, align 8
  store %struct.zip_extra_field* %29, %struct.zip_extra_field** %3, align 8
  br label %6

30:                                               ; preds = %6
  %31 = load i64, i64* %5, align 8
  ret i64 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
