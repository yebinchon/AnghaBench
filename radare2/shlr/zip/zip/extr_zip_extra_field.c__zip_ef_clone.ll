; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_clone.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_extra_field = type { %struct.zip_extra_field*, i32, i32, i32, i32 }
%struct.zip_error = type { i32 }

@ZIP_ER_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_extra_field* @_zip_ef_clone(%struct.zip_extra_field* %0, %struct.zip_error* %1) #0 {
  %3 = alloca %struct.zip_extra_field*, align 8
  %4 = alloca %struct.zip_extra_field*, align 8
  %5 = alloca %struct.zip_error*, align 8
  %6 = alloca %struct.zip_extra_field*, align 8
  %7 = alloca %struct.zip_extra_field*, align 8
  %8 = alloca %struct.zip_extra_field*, align 8
  store %struct.zip_extra_field* %0, %struct.zip_extra_field** %4, align 8
  store %struct.zip_error* %1, %struct.zip_error** %5, align 8
  store %struct.zip_extra_field* null, %struct.zip_extra_field** %7, align 8
  store %struct.zip_extra_field* null, %struct.zip_extra_field** %6, align 8
  br label %9

9:                                                ; preds = %45, %2
  %10 = load %struct.zip_extra_field*, %struct.zip_extra_field** %4, align 8
  %11 = icmp ne %struct.zip_extra_field* %10, null
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = load %struct.zip_extra_field*, %struct.zip_extra_field** %4, align 8
  %14 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.zip_extra_field*, %struct.zip_extra_field** %4, align 8
  %17 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.zip_extra_field*, %struct.zip_extra_field** %4, align 8
  %20 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.zip_extra_field*, %struct.zip_extra_field** %4, align 8
  %23 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.zip_extra_field* @_zip_ef_new(i32 %15, i32 %18, i32 %21, i32 %24)
  store %struct.zip_extra_field* %25, %struct.zip_extra_field** %8, align 8
  %26 = icmp eq %struct.zip_extra_field* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %12
  %28 = load %struct.zip_error*, %struct.zip_error** %5, align 8
  %29 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %30 = call i32 @_zip_error_set(%struct.zip_error* %28, i32 %29, i32 0)
  %31 = load %struct.zip_extra_field*, %struct.zip_extra_field** %6, align 8
  %32 = call i32 @_zip_ef_free(%struct.zip_extra_field* %31)
  store %struct.zip_extra_field* null, %struct.zip_extra_field** %3, align 8
  br label %52

33:                                               ; preds = %12
  %34 = load %struct.zip_extra_field*, %struct.zip_extra_field** %6, align 8
  %35 = icmp eq %struct.zip_extra_field* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load %struct.zip_extra_field*, %struct.zip_extra_field** %8, align 8
  store %struct.zip_extra_field* %37, %struct.zip_extra_field** %6, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = load %struct.zip_extra_field*, %struct.zip_extra_field** %7, align 8
  %40 = icmp ne %struct.zip_extra_field* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.zip_extra_field*, %struct.zip_extra_field** %8, align 8
  %43 = load %struct.zip_extra_field*, %struct.zip_extra_field** %7, align 8
  %44 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %43, i32 0, i32 0
  store %struct.zip_extra_field* %42, %struct.zip_extra_field** %44, align 8
  br label %45

45:                                               ; preds = %41, %38
  %46 = load %struct.zip_extra_field*, %struct.zip_extra_field** %8, align 8
  store %struct.zip_extra_field* %46, %struct.zip_extra_field** %7, align 8
  %47 = load %struct.zip_extra_field*, %struct.zip_extra_field** %4, align 8
  %48 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %47, i32 0, i32 0
  %49 = load %struct.zip_extra_field*, %struct.zip_extra_field** %48, align 8
  store %struct.zip_extra_field* %49, %struct.zip_extra_field** %4, align 8
  br label %9

50:                                               ; preds = %9
  %51 = load %struct.zip_extra_field*, %struct.zip_extra_field** %6, align 8
  store %struct.zip_extra_field* %51, %struct.zip_extra_field** %3, align 8
  br label %52

52:                                               ; preds = %50, %27
  %53 = load %struct.zip_extra_field*, %struct.zip_extra_field** %3, align 8
  ret %struct.zip_extra_field* %53
}

declare dso_local %struct.zip_extra_field* @_zip_ef_new(i32, i32, i32, i32) #1

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

declare dso_local i32 @_zip_ef_free(%struct.zip_extra_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
