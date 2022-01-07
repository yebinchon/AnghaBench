; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_symt_find_nearest.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_symt_find_nearest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt_ht = type { i32 }
%struct.module = type { i32, %struct.symt_ht**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symt_ht* @symt_find_nearest(%struct.module* %0, i64 %1) #0 {
  %3 = alloca %struct.symt_ht*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.module*, %struct.module** %4, align 8
  %12 = getelementptr inbounds %struct.module, %struct.module* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.module*, %struct.module** %4, align 8
  %17 = getelementptr inbounds %struct.module, %struct.module* %16, i32 0, i32 1
  %18 = load %struct.symt_ht**, %struct.symt_ht*** %17, align 8
  %19 = icmp ne %struct.symt_ht** %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.module*, %struct.module** %4, align 8
  %22 = call i32 @resort_symbols(%struct.module* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store %struct.symt_ht* null, %struct.symt_ht** %3, align 8
  br label %132

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %15
  store i32 0, i32* %8, align 4
  %27 = load %struct.module*, %struct.module** %4, align 8
  %28 = getelementptr inbounds %struct.module, %struct.module* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load %struct.module*, %struct.module** %4, align 8
  %31 = getelementptr inbounds %struct.module, %struct.module* %30, i32 0, i32 1
  %32 = load %struct.symt_ht**, %struct.symt_ht*** %31, align 8
  %33 = getelementptr inbounds %struct.symt_ht*, %struct.symt_ht** %32, i64 0
  %34 = load %struct.symt_ht*, %struct.symt_ht** %33, align 8
  %35 = getelementptr inbounds %struct.symt_ht, %struct.symt_ht* %34, i32 0, i32 0
  %36 = call i32 @symt_get_address(i32* %35, i64* %9)
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %26
  %41 = load %struct.module*, %struct.module** %4, align 8
  %42 = call i32 @symt_get_best_at(%struct.module* %41, i32 0)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.module*, %struct.module** %4, align 8
  %44 = getelementptr inbounds %struct.module, %struct.module* %43, i32 0, i32 1
  %45 = load %struct.symt_ht**, %struct.symt_ht*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.symt_ht*, %struct.symt_ht** %45, i64 %47
  %49 = load %struct.symt_ht*, %struct.symt_ht** %48, align 8
  store %struct.symt_ht* %49, %struct.symt_ht** %3, align 8
  br label %132

50:                                               ; preds = %26
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load %struct.module*, %struct.module** %4, align 8
  %55 = getelementptr inbounds %struct.module, %struct.module* %54, i32 0, i32 1
  %56 = load %struct.symt_ht**, %struct.symt_ht*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.symt_ht*, %struct.symt_ht** %56, i64 %59
  %61 = load %struct.symt_ht*, %struct.symt_ht** %60, align 8
  %62 = getelementptr inbounds %struct.symt_ht, %struct.symt_ht* %61, i32 0, i32 0
  %63 = call i32 @symt_get_address(i32* %62, i64* %9)
  %64 = load %struct.module*, %struct.module** %4, align 8
  %65 = load %struct.module*, %struct.module** %4, align 8
  %66 = getelementptr inbounds %struct.module, %struct.module* %65, i32 0, i32 1
  %67 = load %struct.symt_ht**, %struct.symt_ht*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.symt_ht*, %struct.symt_ht** %67, i64 %70
  %72 = load %struct.symt_ht*, %struct.symt_ht** %71, align 8
  %73 = getelementptr inbounds %struct.symt_ht, %struct.symt_ht* %72, i32 0, i32 0
  %74 = call i32 @symt_get_length(%struct.module* %64, i32* %73, i64* %10)
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = add nsw i64 %76, %77
  %79 = icmp sge i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %53
  store %struct.symt_ht* null, %struct.symt_ht** %3, align 8
  br label %132

81:                                               ; preds = %53
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %102, %82
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  %87 = icmp sgt i32 %84, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %89, %90
  %92 = sdiv i32 %91, 2
  store i32 %92, i32* %6, align 4
  %93 = load %struct.module*, %struct.module** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i64, i64* %5, align 8
  %96 = call i64 @cmp_sorttab_addr(%struct.module* %93, i32 %94, i64 %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %8, align 4
  br label %102

100:                                              ; preds = %88
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %100, %98
  br label %83

103:                                              ; preds = %83
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.module*, %struct.module** %4, align 8
  %110 = getelementptr inbounds %struct.module, %struct.module* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %108, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load %struct.module*, %struct.module** %4, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i64, i64* %5, align 8
  %117 = call i64 @cmp_sorttab_addr(%struct.module* %114, i32 %115, i64 %116)
  %118 = icmp sle i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %119, %113, %107, %103
  %122 = load %struct.module*, %struct.module** %4, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @symt_get_best_at(%struct.module* %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load %struct.module*, %struct.module** %4, align 8
  %126 = getelementptr inbounds %struct.module, %struct.module* %125, i32 0, i32 1
  %127 = load %struct.symt_ht**, %struct.symt_ht*** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.symt_ht*, %struct.symt_ht** %127, i64 %129
  %131 = load %struct.symt_ht*, %struct.symt_ht** %130, align 8
  store %struct.symt_ht* %131, %struct.symt_ht** %3, align 8
  br label %132

132:                                              ; preds = %121, %80, %40, %24
  %133 = load %struct.symt_ht*, %struct.symt_ht** %3, align 8
  ret %struct.symt_ht* %133
}

declare dso_local i32 @resort_symbols(%struct.module*) #1

declare dso_local i32 @symt_get_address(i32*, i64*) #1

declare dso_local i32 @symt_get_best_at(%struct.module*, i32) #1

declare dso_local i32 @symt_get_length(%struct.module*, i32*, i64*) #1

declare dso_local i64 @cmp_sorttab_addr(%struct.module*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
