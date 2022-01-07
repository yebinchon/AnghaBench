; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_resort_symbols.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_resort_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt_ht = type { i32 }
%struct.module = type { i32, i32, i32, %struct.symt_ht**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@symt_cmp_addr = common dso_local global i32 0, align 4
@resort_symbols.tmp = internal global %struct.symt_ht** null, align 8
@resort_symbols.num_tmp = internal global i32 0, align 4
@resort_symbols.new = internal global %struct.symt_ht** null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*)* @resort_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resort_symbols(%struct.module* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.module*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %3, align 8
  %8 = load %struct.module*, %struct.module** %3, align 8
  %9 = getelementptr inbounds %struct.module, %struct.module* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.module*, %struct.module** %3, align 8
  %12 = getelementptr inbounds %struct.module, %struct.module* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = icmp ne i32 %10, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %158

17:                                               ; preds = %1
  %18 = load %struct.module*, %struct.module** %3, align 8
  %19 = getelementptr inbounds %struct.module, %struct.module* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.module*, %struct.module** %3, align 8
  %22 = getelementptr inbounds %struct.module, %struct.module* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.module*, %struct.module** %3, align 8
  %26 = getelementptr inbounds %struct.module, %struct.module* %25, i32 0, i32 3
  %27 = load %struct.symt_ht**, %struct.symt_ht*** %26, align 8
  %28 = load %struct.module*, %struct.module** %3, align 8
  %29 = getelementptr inbounds %struct.module, %struct.module* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.symt_ht*, %struct.symt_ht** %27, i64 %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @symt_cmp_addr, align 4
  %35 = call i32 @qsort(%struct.symt_ht** %32, i32 %33, i32 8, i32 %34)
  %36 = load %struct.module*, %struct.module** %3, align 8
  %37 = getelementptr inbounds %struct.module, %struct.module* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %149

40:                                               ; preds = %17
  %41 = load %struct.module*, %struct.module** %3, align 8
  %42 = getelementptr inbounds %struct.module, %struct.module* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @resort_symbols.num_tmp, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %40
  %48 = load %struct.symt_ht**, %struct.symt_ht*** @resort_symbols.tmp, align 8
  %49 = icmp ne %struct.symt_ht** %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load %struct.symt_ht**, %struct.symt_ht*** @resort_symbols.tmp, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = call %struct.symt_ht** @HeapReAlloc(i32 %51, i32 0, %struct.symt_ht** %52, i32 %56)
  store %struct.symt_ht** %57, %struct.symt_ht*** @resort_symbols.new, align 8
  br label %65

58:                                               ; preds = %47
  %59 = call i32 (...) @GetProcessHeap()
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 8
  %63 = trunc i64 %62 to i32
  %64 = call %struct.symt_ht** @HeapAlloc(i32 %59, i32 0, i32 %63)
  store %struct.symt_ht** %64, %struct.symt_ht*** @resort_symbols.new, align 8
  br label %65

65:                                               ; preds = %58, %50
  %66 = load %struct.symt_ht**, %struct.symt_ht*** @resort_symbols.new, align 8
  %67 = icmp ne %struct.symt_ht** %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load %struct.module*, %struct.module** %3, align 8
  %70 = getelementptr inbounds %struct.module, %struct.module* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.module*, %struct.module** %3, align 8
  %72 = call i32 @resort_symbols(%struct.module* %71)
  store i32 %72, i32* %2, align 4
  br label %158

73:                                               ; preds = %65
  %74 = load %struct.symt_ht**, %struct.symt_ht*** @resort_symbols.new, align 8
  store %struct.symt_ht** %74, %struct.symt_ht*** @resort_symbols.tmp, align 8
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* @resort_symbols.num_tmp, align 4
  br label %76

76:                                               ; preds = %73, %40
  %77 = load %struct.symt_ht**, %struct.symt_ht*** @resort_symbols.tmp, align 8
  %78 = load %struct.module*, %struct.module** %3, align 8
  %79 = getelementptr inbounds %struct.module, %struct.module* %78, i32 0, i32 3
  %80 = load %struct.symt_ht**, %struct.symt_ht*** %79, align 8
  %81 = load %struct.module*, %struct.module** %3, align 8
  %82 = getelementptr inbounds %struct.module, %struct.module* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.symt_ht*, %struct.symt_ht** %80, i64 %84
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @memcpy(%struct.symt_ht** %77, %struct.symt_ht** %85, i32 %89)
  %91 = load %struct.symt_ht**, %struct.symt_ht*** @resort_symbols.tmp, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @symt_cmp_addr, align 4
  %94 = call i32 @qsort(%struct.symt_ht** %91, i32 %92, i32 8, i32 %93)
  %95 = load i32, i32* %4, align 4
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %145, %76
  %98 = load i32, i32* %5, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %148

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %7, align 4
  %102 = load %struct.module*, %struct.module** %3, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.symt_ht**, %struct.symt_ht*** @resort_symbols.tmp, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.symt_ht*, %struct.symt_ht** %104, i64 %106
  %108 = load %struct.symt_ht*, %struct.symt_ht** %107, align 8
  %109 = call i32 @where_to_insert(%struct.module* %102, i32 %103, %struct.symt_ht* %108)
  store i32 %109, i32* %6, align 4
  %110 = load %struct.module*, %struct.module** %3, align 8
  %111 = getelementptr inbounds %struct.module, %struct.module* %110, i32 0, i32 3
  %112 = load %struct.symt_ht**, %struct.symt_ht*** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %113, %114
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.symt_ht*, %struct.symt_ht** %112, i64 %117
  %119 = load %struct.module*, %struct.module** %3, align 8
  %120 = getelementptr inbounds %struct.module, %struct.module* %119, i32 0, i32 3
  %121 = load %struct.symt_ht**, %struct.symt_ht*** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.symt_ht*, %struct.symt_ht** %121, i64 %123
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %6, align 4
  %127 = sub nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @memmove(%struct.symt_ht** %118, %struct.symt_ht** %124, i32 %130)
  %132 = load %struct.symt_ht**, %struct.symt_ht*** @resort_symbols.tmp, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.symt_ht*, %struct.symt_ht** %132, i64 %134
  %136 = load %struct.symt_ht*, %struct.symt_ht** %135, align 8
  %137 = load %struct.module*, %struct.module** %3, align 8
  %138 = getelementptr inbounds %struct.module, %struct.module* %137, i32 0, i32 3
  %139 = load %struct.symt_ht**, %struct.symt_ht*** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.symt_ht*, %struct.symt_ht** %139, i64 %143
  store %struct.symt_ht* %136, %struct.symt_ht** %144, align 8
  br label %145

145:                                              ; preds = %100
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %5, align 4
  br label %97

148:                                              ; preds = %97
  br label %149

149:                                              ; preds = %148, %17
  %150 = load %struct.module*, %struct.module** %3, align 8
  %151 = getelementptr inbounds %struct.module, %struct.module* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.module*, %struct.module** %3, align 8
  %154 = getelementptr inbounds %struct.module, %struct.module* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @TRUE, align 4
  %156 = load %struct.module*, %struct.module** %3, align 8
  %157 = getelementptr inbounds %struct.module, %struct.module* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  store i32 %155, i32* %2, align 4
  br label %158

158:                                              ; preds = %149, %68, %15
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @qsort(%struct.symt_ht**, i32, i32, i32) #1

declare dso_local %struct.symt_ht** @HeapReAlloc(i32, i32, %struct.symt_ht**, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local %struct.symt_ht** @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.symt_ht**, %struct.symt_ht**, i32) #1

declare dso_local i32 @where_to_insert(%struct.module*, i32, %struct.symt_ht*) #1

declare dso_local i32 @memmove(%struct.symt_ht**, %struct.symt_ht**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
