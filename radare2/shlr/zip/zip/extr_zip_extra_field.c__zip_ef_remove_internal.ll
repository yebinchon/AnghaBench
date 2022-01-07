; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_remove_internal.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_remove_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_extra_field = type { %struct.zip_extra_field*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_extra_field* @_zip_ef_remove_internal(%struct.zip_extra_field* %0) #0 {
  %2 = alloca %struct.zip_extra_field*, align 8
  %3 = alloca %struct.zip_extra_field*, align 8
  %4 = alloca %struct.zip_extra_field*, align 8
  %5 = alloca %struct.zip_extra_field*, align 8
  store %struct.zip_extra_field* %0, %struct.zip_extra_field** %2, align 8
  %6 = load %struct.zip_extra_field*, %struct.zip_extra_field** %2, align 8
  store %struct.zip_extra_field* %6, %struct.zip_extra_field** %3, align 8
  store %struct.zip_extra_field* null, %struct.zip_extra_field** %4, align 8
  br label %7

7:                                                ; preds = %43, %1
  %8 = load %struct.zip_extra_field*, %struct.zip_extra_field** %2, align 8
  %9 = icmp ne %struct.zip_extra_field* %8, null
  br i1 %9, label %10, label %44

10:                                               ; preds = %7
  %11 = load %struct.zip_extra_field*, %struct.zip_extra_field** %2, align 8
  %12 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @ZIP_EF_IS_INTERNAL(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load %struct.zip_extra_field*, %struct.zip_extra_field** %2, align 8
  %18 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %17, i32 0, i32 0
  %19 = load %struct.zip_extra_field*, %struct.zip_extra_field** %18, align 8
  store %struct.zip_extra_field* %19, %struct.zip_extra_field** %5, align 8
  %20 = load %struct.zip_extra_field*, %struct.zip_extra_field** %3, align 8
  %21 = load %struct.zip_extra_field*, %struct.zip_extra_field** %2, align 8
  %22 = icmp eq %struct.zip_extra_field* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  store %struct.zip_extra_field* %24, %struct.zip_extra_field** %3, align 8
  br label %25

25:                                               ; preds = %23, %16
  %26 = load %struct.zip_extra_field*, %struct.zip_extra_field** %2, align 8
  %27 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %26, i32 0, i32 0
  store %struct.zip_extra_field* null, %struct.zip_extra_field** %27, align 8
  %28 = load %struct.zip_extra_field*, %struct.zip_extra_field** %2, align 8
  %29 = call i32 @_zip_ef_free(%struct.zip_extra_field* %28)
  %30 = load %struct.zip_extra_field*, %struct.zip_extra_field** %4, align 8
  %31 = icmp ne %struct.zip_extra_field* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %34 = load %struct.zip_extra_field*, %struct.zip_extra_field** %4, align 8
  %35 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %34, i32 0, i32 0
  store %struct.zip_extra_field* %33, %struct.zip_extra_field** %35, align 8
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  store %struct.zip_extra_field* %37, %struct.zip_extra_field** %2, align 8
  br label %43

38:                                               ; preds = %10
  %39 = load %struct.zip_extra_field*, %struct.zip_extra_field** %2, align 8
  store %struct.zip_extra_field* %39, %struct.zip_extra_field** %4, align 8
  %40 = load %struct.zip_extra_field*, %struct.zip_extra_field** %2, align 8
  %41 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %40, i32 0, i32 0
  %42 = load %struct.zip_extra_field*, %struct.zip_extra_field** %41, align 8
  store %struct.zip_extra_field* %42, %struct.zip_extra_field** %2, align 8
  br label %43

43:                                               ; preds = %38, %36
  br label %7

44:                                               ; preds = %7
  %45 = load %struct.zip_extra_field*, %struct.zip_extra_field** %3, align 8
  ret %struct.zip_extra_field* %45
}

declare dso_local i64 @ZIP_EF_IS_INTERNAL(i32) #1

declare dso_local i32 @_zip_ef_free(%struct.zip_extra_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
