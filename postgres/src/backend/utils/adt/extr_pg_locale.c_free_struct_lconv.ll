; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_pg_locale.c_free_struct_lconv.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_pg_locale.c_free_struct_lconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lconv = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lconv*)* @free_struct_lconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_struct_lconv(%struct.lconv* %0) #0 {
  %2 = alloca %struct.lconv*, align 8
  store %struct.lconv* %0, %struct.lconv** %2, align 8
  %3 = load %struct.lconv*, %struct.lconv** %2, align 8
  %4 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 9
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.lconv*, %struct.lconv** %2, align 8
  %9 = getelementptr inbounds %struct.lconv, %struct.lconv* %8, i32 0, i32 9
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @free(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.lconv*, %struct.lconv** %2, align 8
  %14 = getelementptr inbounds %struct.lconv, %struct.lconv* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.lconv*, %struct.lconv** %2, align 8
  %19 = getelementptr inbounds %struct.lconv, %struct.lconv* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @free(i64 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.lconv*, %struct.lconv** %2, align 8
  %24 = getelementptr inbounds %struct.lconv, %struct.lconv* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.lconv*, %struct.lconv** %2, align 8
  %29 = getelementptr inbounds %struct.lconv, %struct.lconv* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @free(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.lconv*, %struct.lconv** %2, align 8
  %34 = getelementptr inbounds %struct.lconv, %struct.lconv* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.lconv*, %struct.lconv** %2, align 8
  %39 = getelementptr inbounds %struct.lconv, %struct.lconv* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @free(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.lconv*, %struct.lconv** %2, align 8
  %44 = getelementptr inbounds %struct.lconv, %struct.lconv* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.lconv*, %struct.lconv** %2, align 8
  %49 = getelementptr inbounds %struct.lconv, %struct.lconv* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @free(i64 %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.lconv*, %struct.lconv** %2, align 8
  %54 = getelementptr inbounds %struct.lconv, %struct.lconv* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.lconv*, %struct.lconv** %2, align 8
  %59 = getelementptr inbounds %struct.lconv, %struct.lconv* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @free(i64 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.lconv*, %struct.lconv** %2, align 8
  %64 = getelementptr inbounds %struct.lconv, %struct.lconv* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.lconv*, %struct.lconv** %2, align 8
  %69 = getelementptr inbounds %struct.lconv, %struct.lconv* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @free(i64 %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.lconv*, %struct.lconv** %2, align 8
  %74 = getelementptr inbounds %struct.lconv, %struct.lconv* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.lconv*, %struct.lconv** %2, align 8
  %79 = getelementptr inbounds %struct.lconv, %struct.lconv* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @free(i64 %80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.lconv*, %struct.lconv** %2, align 8
  %84 = getelementptr inbounds %struct.lconv, %struct.lconv* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.lconv*, %struct.lconv** %2, align 8
  %89 = getelementptr inbounds %struct.lconv, %struct.lconv* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @free(i64 %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.lconv*, %struct.lconv** %2, align 8
  %94 = getelementptr inbounds %struct.lconv, %struct.lconv* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.lconv*, %struct.lconv** %2, align 8
  %99 = getelementptr inbounds %struct.lconv, %struct.lconv* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @free(i64 %100)
  br label %102

102:                                              ; preds = %97, %92
  ret void
}

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
