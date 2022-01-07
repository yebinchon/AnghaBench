; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_delete_by_id.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_delete_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_extra_field = type { i32, i64, %struct.zip_extra_field* }

@ZIP_EF_BOTH = common dso_local global i32 0, align 4
@ZIP_EXTRA_FIELD_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_extra_field* @_zip_ef_delete_by_id(%struct.zip_extra_field* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.zip_extra_field*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zip_extra_field*, align 8
  %10 = alloca %struct.zip_extra_field*, align 8
  %11 = alloca i32, align 4
  store %struct.zip_extra_field* %0, %struct.zip_extra_field** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  store %struct.zip_extra_field* %12, %struct.zip_extra_field** %9, align 8
  store %struct.zip_extra_field* null, %struct.zip_extra_field** %10, align 8
  br label %13

13:                                               ; preds = %99, %4
  %14 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %15 = icmp ne %struct.zip_extra_field* %14, null
  br i1 %15, label %16, label %101

16:                                               ; preds = %13
  %17 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %18 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @ZIP_EF_BOTH, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %88

25:                                               ; preds = %16
  %26 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %27 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %88

31:                                               ; preds = %25
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @ZIP_EXTRA_FIELD_ALL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %35, %31
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @ZIP_EF_BOTH, align 4
  %43 = and i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %46 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %50 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ZIP_EF_BOTH, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %40
  %56 = load %struct.zip_extra_field*, %struct.zip_extra_field** %10, align 8
  %57 = icmp ne %struct.zip_extra_field* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %60 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %59, i32 0, i32 2
  %61 = load %struct.zip_extra_field*, %struct.zip_extra_field** %60, align 8
  %62 = load %struct.zip_extra_field*, %struct.zip_extra_field** %10, align 8
  %63 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %62, i32 0, i32 2
  store %struct.zip_extra_field* %61, %struct.zip_extra_field** %63, align 8
  br label %68

64:                                               ; preds = %55
  %65 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %66 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %65, i32 0, i32 2
  %67 = load %struct.zip_extra_field*, %struct.zip_extra_field** %66, align 8
  store %struct.zip_extra_field* %67, %struct.zip_extra_field** %9, align 8
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %70 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %69, i32 0, i32 2
  store %struct.zip_extra_field* null, %struct.zip_extra_field** %70, align 8
  %71 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %72 = call i32 @_zip_ef_free(%struct.zip_extra_field* %71)
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @ZIP_EXTRA_FIELD_ALL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %90

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %40
  br label %79

79:                                               ; preds = %78, %35
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %7, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %101

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %25, %16
  %89 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  store %struct.zip_extra_field* %89, %struct.zip_extra_field** %10, align 8
  br label %90

90:                                               ; preds = %88, %76
  %91 = load %struct.zip_extra_field*, %struct.zip_extra_field** %10, align 8
  %92 = icmp ne %struct.zip_extra_field* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.zip_extra_field*, %struct.zip_extra_field** %10, align 8
  %95 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %94, i32 0, i32 2
  %96 = load %struct.zip_extra_field*, %struct.zip_extra_field** %95, align 8
  br label %99

97:                                               ; preds = %90
  %98 = load %struct.zip_extra_field*, %struct.zip_extra_field** %9, align 8
  br label %99

99:                                               ; preds = %97, %93
  %100 = phi %struct.zip_extra_field* [ %96, %93 ], [ %98, %97 ]
  store %struct.zip_extra_field* %100, %struct.zip_extra_field** %5, align 8
  br label %13

101:                                              ; preds = %86, %13
  %102 = load %struct.zip_extra_field*, %struct.zip_extra_field** %9, align 8
  ret %struct.zip_extra_field* %102
}

declare dso_local i32 @_zip_ef_free(%struct.zip_extra_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
