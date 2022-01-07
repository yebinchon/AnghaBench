; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_cred.c_kull_m_cred_attributes_create.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_cred.c_kull_m_cred_attributes_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_cred_attributes_create(i64 %0, %struct.TYPE_5__*** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__***, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_5__*** %1, %struct.TYPE_5__**** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* @LPTR, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = trunc i64 %14 to i32
  %16 = call i64 @LocalAlloc(i32 %11, i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_5__**
  %18 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %5, align 8
  store %struct.TYPE_5__** %17, %struct.TYPE_5__*** %18, align 8
  %19 = icmp ne %struct.TYPE_5__** %17, null
  br i1 %19, label %20, label %75

20:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load i64, i64* @TRUE, align 8
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %71, %20
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i1 [ false, %22 ], [ %28, %26 ]
  br i1 %30, label %31, label %74

31:                                               ; preds = %29
  %32 = load i64, i64* %4, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = call %struct.TYPE_5__* @kull_m_cred_attribute_create(i32 %35)
  %37 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %5, align 8
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 %40
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %41, align 8
  %42 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %31
  %44 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %5, align 8
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %45, i64 %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 -12, %52
  %54 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %5, align 8
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %53, %62
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %9, align 4
  br label %70

68:                                               ; preds = %31
  %69 = load i64, i64* @FALSE, align 8
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %68, %43
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %22

74:                                               ; preds = %29
  br label %75

75:                                               ; preds = %74, %3
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %5, align 8
  %80 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @kull_m_cred_attributes_delete(%struct.TYPE_5__** %80, i32 %81)
  %83 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %5, align 8
  store %struct.TYPE_5__** null, %struct.TYPE_5__*** %83, align 8
  br label %84

84:                                               ; preds = %78, %75
  %85 = load i64, i64* %7, align 8
  ret i64 %85
}

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local %struct.TYPE_5__* @kull_m_cred_attribute_create(i32) #1

declare dso_local i32 @kull_m_cred_attributes_delete(%struct.TYPE_5__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
