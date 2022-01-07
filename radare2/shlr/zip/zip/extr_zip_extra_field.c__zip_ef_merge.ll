; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_merge.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_extra_field = type { i64, i64, i32, %struct.zip_extra_field*, i64 }

@ZIP_EF_BOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_extra_field* @_zip_ef_merge(%struct.zip_extra_field* %0, %struct.zip_extra_field* %1) #0 {
  %3 = alloca %struct.zip_extra_field*, align 8
  %4 = alloca %struct.zip_extra_field*, align 8
  %5 = alloca %struct.zip_extra_field*, align 8
  %6 = alloca %struct.zip_extra_field*, align 8
  %7 = alloca %struct.zip_extra_field*, align 8
  %8 = alloca %struct.zip_extra_field*, align 8
  %9 = alloca i32, align 4
  store %struct.zip_extra_field* %0, %struct.zip_extra_field** %4, align 8
  store %struct.zip_extra_field* %1, %struct.zip_extra_field** %5, align 8
  %10 = load %struct.zip_extra_field*, %struct.zip_extra_field** %4, align 8
  %11 = icmp eq %struct.zip_extra_field* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  store %struct.zip_extra_field* %13, %struct.zip_extra_field** %3, align 8
  br label %109

14:                                               ; preds = %2
  %15 = load %struct.zip_extra_field*, %struct.zip_extra_field** %4, align 8
  store %struct.zip_extra_field* %15, %struct.zip_extra_field** %8, align 8
  br label %16

16:                                               ; preds = %22, %14
  %17 = load %struct.zip_extra_field*, %struct.zip_extra_field** %8, align 8
  %18 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %17, i32 0, i32 3
  %19 = load %struct.zip_extra_field*, %struct.zip_extra_field** %18, align 8
  %20 = icmp ne %struct.zip_extra_field* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.zip_extra_field*, %struct.zip_extra_field** %8, align 8
  %24 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %23, i32 0, i32 3
  %25 = load %struct.zip_extra_field*, %struct.zip_extra_field** %24, align 8
  store %struct.zip_extra_field* %25, %struct.zip_extra_field** %8, align 8
  br label %16

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %105, %26
  %28 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %29 = icmp ne %struct.zip_extra_field* %28, null
  br i1 %29, label %30, label %107

30:                                               ; preds = %27
  %31 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %32 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %31, i32 0, i32 3
  %33 = load %struct.zip_extra_field*, %struct.zip_extra_field** %32, align 8
  store %struct.zip_extra_field* %33, %struct.zip_extra_field** %6, align 8
  store i32 0, i32* %9, align 4
  %34 = load %struct.zip_extra_field*, %struct.zip_extra_field** %4, align 8
  store %struct.zip_extra_field* %34, %struct.zip_extra_field** %7, align 8
  br label %35

35:                                               ; preds = %88, %30
  %36 = load %struct.zip_extra_field*, %struct.zip_extra_field** %7, align 8
  %37 = icmp ne %struct.zip_extra_field* %36, null
  br i1 %37, label %38, label %92

38:                                               ; preds = %35
  %39 = load %struct.zip_extra_field*, %struct.zip_extra_field** %7, align 8
  %40 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %43 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %87

46:                                               ; preds = %38
  %47 = load %struct.zip_extra_field*, %struct.zip_extra_field** %7, align 8
  %48 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %51 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %46
  %55 = load %struct.zip_extra_field*, %struct.zip_extra_field** %7, align 8
  %56 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %54
  %60 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %61 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %59
  %65 = load %struct.zip_extra_field*, %struct.zip_extra_field** %7, align 8
  %66 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %69 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.zip_extra_field*, %struct.zip_extra_field** %7, align 8
  %72 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @memcmp(i64 %67, i64 %70, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %64
  %77 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %78 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ZIP_EF_BOTH, align 4
  %81 = and i32 %79, %80
  %82 = load %struct.zip_extra_field*, %struct.zip_extra_field** %7, align 8
  %83 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  store i32 1, i32* %9, align 4
  br label %92

86:                                               ; preds = %64, %59, %54
  br label %87

87:                                               ; preds = %86, %46, %38
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.zip_extra_field*, %struct.zip_extra_field** %7, align 8
  %90 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %89, i32 0, i32 3
  %91 = load %struct.zip_extra_field*, %struct.zip_extra_field** %90, align 8
  store %struct.zip_extra_field* %91, %struct.zip_extra_field** %7, align 8
  br label %35

92:                                               ; preds = %76, %35
  %93 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %94 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %93, i32 0, i32 3
  store %struct.zip_extra_field* null, %struct.zip_extra_field** %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %99 = call i32 @_zip_ef_free(%struct.zip_extra_field* %98)
  br label %104

100:                                              ; preds = %92
  %101 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  %102 = load %struct.zip_extra_field*, %struct.zip_extra_field** %8, align 8
  %103 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %102, i32 0, i32 3
  store %struct.zip_extra_field* %101, %struct.zip_extra_field** %103, align 8
  store %struct.zip_extra_field* %101, %struct.zip_extra_field** %8, align 8
  br label %104

104:                                              ; preds = %100, %97
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.zip_extra_field*, %struct.zip_extra_field** %6, align 8
  store %struct.zip_extra_field* %106, %struct.zip_extra_field** %5, align 8
  br label %27

107:                                              ; preds = %27
  %108 = load %struct.zip_extra_field*, %struct.zip_extra_field** %4, align 8
  store %struct.zip_extra_field* %108, %struct.zip_extra_field** %3, align 8
  br label %109

109:                                              ; preds = %107, %12
  %110 = load %struct.zip_extra_field*, %struct.zip_extra_field** %3, align 8
  ret %struct.zip_extra_field* %110
}

declare dso_local i32 @memcmp(i64, i64, i64) #1

declare dso_local i32 @_zip_ef_free(%struct.zip_extra_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
