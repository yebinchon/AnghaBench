; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_key.c_kull_m_key_cng_properties_create.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_key.c_kull_m_key_cng_properties_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_key_cng_properties_create(i64 %0, i32 %1, %struct.TYPE_5__*** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__*** %2, %struct.TYPE_5__**** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %8, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %19, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* %5, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load i32, i32* @LPTR, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 @LocalAlloc(i32 %34, i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_5__**
  %42 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %7, align 8
  store %struct.TYPE_5__** %41, %struct.TYPE_5__*** %42, align 8
  %43 = icmp ne %struct.TYPE_5__** %41, null
  br i1 %43, label %44, label %86

44:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %45 = load i64, i64* @TRUE, align 8
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %82, %44
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i1 [ false, %46 ], [ %53, %51 ]
  br i1 %55, label %56, label %85

56:                                               ; preds = %54
  %57 = load i64, i64* %5, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %58, %59
  %61 = call %struct.TYPE_5__* @kull_m_key_cng_property_create(i32 %60)
  %62 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %7, align 8
  %63 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %63, i64 %65
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %66, align 8
  %67 = icmp ne %struct.TYPE_5__* %61, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %56
  %69 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %7, align 8
  %70 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %70, i64 %72
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %81

79:                                               ; preds = %56
  %80 = load i64, i64* @FALSE, align 8
  store i64 %80, i64* %9, align 8
  br label %81

81:                                               ; preds = %79, %68
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %46

85:                                               ; preds = %54
  br label %86

86:                                               ; preds = %85, %33
  %87 = load i64, i64* %9, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %86
  %90 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %7, align 8
  %91 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %90, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @kull_m_key_cng_properties_delete(%struct.TYPE_5__** %91, i32 %93)
  %95 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %7, align 8
  store %struct.TYPE_5__** null, %struct.TYPE_5__*** %95, align 8
  %96 = load i32*, i32** %8, align 8
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %89, %86
  %98 = load i64, i64* %9, align 8
  ret i64 %98
}

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local %struct.TYPE_5__* @kull_m_key_cng_property_create(i32) #1

declare dso_local i32 @kull_m_key_cng_properties_delete(%struct.TYPE_5__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
