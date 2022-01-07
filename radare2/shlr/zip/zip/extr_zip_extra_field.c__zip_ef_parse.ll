; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_parse.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_extra_field = type { %struct.zip_extra_field* }
%struct.zip_error = type { i32 }

@ZIP_ER_INCONS = common dso_local global i32 0, align 4
@ZIP_ER_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_extra_field* @_zip_ef_parse(i32* %0, i32 %1, i32 %2, %struct.zip_error* %3) #0 {
  %5 = alloca %struct.zip_extra_field*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.zip_error*, align 8
  %10 = alloca %struct.zip_extra_field*, align 8
  %11 = alloca %struct.zip_extra_field*, align 8
  %12 = alloca %struct.zip_extra_field*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.zip_error* %3, %struct.zip_error** %9, align 8
  store %struct.zip_extra_field* null, %struct.zip_extra_field** %12, align 8
  %16 = load i32*, i32** %6, align 8
  store i32* %16, i32** %13, align 8
  br label %17

17:                                               ; preds = %80, %4
  %18 = load i32*, i32** %13, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = icmp ult i32* %18, %22
  br i1 %23, label %24, label %85

24:                                               ; preds = %17
  %25 = load i32*, i32** %13, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = icmp ugt i32* %26, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %34 = load i32, i32* @ZIP_ER_INCONS, align 4
  %35 = call i32 @_zip_error_set(%struct.zip_error* %33, i32 %34, i32 0)
  %36 = load %struct.zip_extra_field*, %struct.zip_extra_field** %12, align 8
  %37 = call i32 @_zip_ef_free(%struct.zip_extra_field* %36)
  store %struct.zip_extra_field* null, %struct.zip_extra_field** %5, align 8
  br label %87

38:                                               ; preds = %24
  %39 = call i32 @_zip_read2(i32** %13)
  store i32 %39, i32* %14, align 4
  %40 = call i32 @_zip_read2(i32** %13)
  store i32 %40, i32* %15, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = icmp ugt i32* %44, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %52 = load i32, i32* @ZIP_ER_INCONS, align 4
  %53 = call i32 @_zip_error_set(%struct.zip_error* %51, i32 %52, i32 0)
  %54 = load %struct.zip_extra_field*, %struct.zip_extra_field** %12, align 8
  %55 = call i32 @_zip_ef_free(%struct.zip_extra_field* %54)
  store %struct.zip_extra_field* null, %struct.zip_extra_field** %5, align 8
  br label %87

56:                                               ; preds = %38
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.zip_extra_field* @_zip_ef_new(i32 %57, i32 %58, i32* %59, i32 %60)
  store %struct.zip_extra_field* %61, %struct.zip_extra_field** %11, align 8
  %62 = icmp eq %struct.zip_extra_field* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %65 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %66 = call i32 @_zip_error_set(%struct.zip_error* %64, i32 %65, i32 0)
  %67 = load %struct.zip_extra_field*, %struct.zip_extra_field** %12, align 8
  %68 = call i32 @_zip_ef_free(%struct.zip_extra_field* %67)
  store %struct.zip_extra_field* null, %struct.zip_extra_field** %5, align 8
  br label %87

69:                                               ; preds = %56
  %70 = load %struct.zip_extra_field*, %struct.zip_extra_field** %12, align 8
  %71 = icmp ne %struct.zip_extra_field* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.zip_extra_field*, %struct.zip_extra_field** %11, align 8
  %74 = load %struct.zip_extra_field*, %struct.zip_extra_field** %10, align 8
  %75 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %74, i32 0, i32 0
  store %struct.zip_extra_field* %73, %struct.zip_extra_field** %75, align 8
  %76 = load %struct.zip_extra_field*, %struct.zip_extra_field** %11, align 8
  store %struct.zip_extra_field* %76, %struct.zip_extra_field** %10, align 8
  br label %79

77:                                               ; preds = %69
  %78 = load %struct.zip_extra_field*, %struct.zip_extra_field** %11, align 8
  store %struct.zip_extra_field* %78, %struct.zip_extra_field** %10, align 8
  store %struct.zip_extra_field* %78, %struct.zip_extra_field** %12, align 8
  br label %79

79:                                               ; preds = %77, %72
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %15, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %13, align 8
  br label %17

85:                                               ; preds = %17
  %86 = load %struct.zip_extra_field*, %struct.zip_extra_field** %12, align 8
  store %struct.zip_extra_field* %86, %struct.zip_extra_field** %5, align 8
  br label %87

87:                                               ; preds = %85, %63, %50, %32
  %88 = load %struct.zip_extra_field*, %struct.zip_extra_field** %5, align 8
  ret %struct.zip_extra_field* %88
}

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

declare dso_local i32 @_zip_ef_free(%struct.zip_extra_field*) #1

declare dso_local i32 @_zip_read2(i32**) #1

declare dso_local %struct.zip_extra_field* @_zip_ef_new(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
