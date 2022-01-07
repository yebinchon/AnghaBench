; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_symt_get_best_at.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_symt_get_best_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SymTagPublicSymbol = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symt_get_best_at(%struct.module* %0, i32 %1) #0 {
  %3 = alloca %struct.module*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.module*, %struct.module** %3, align 8
  %9 = getelementptr inbounds %struct.module, %struct.module* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %10, i64 %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SymTagPublicSymbol, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %124

20:                                               ; preds = %2
  %21 = load %struct.module*, %struct.module** %3, align 8
  %22 = getelementptr inbounds %struct.module, %struct.module* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %23, i64 %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @symt_get_address(%struct.TYPE_4__* %28, i32* %5)
  br label %30

30:                                               ; preds = %56, %20
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load %struct.module*, %struct.module** %3, align 8
  %35 = getelementptr inbounds %struct.module, %struct.module* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %36, i64 %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SymTagPublicSymbol, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %33
  %47 = load %struct.module*, %struct.module** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @cmp_sorttab_addr(%struct.module* %47, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %46, %33, %30
  %55 = phi i1 [ false, %33 ], [ false, %30 ], [ %53, %46 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %4, align 4
  br label %30

59:                                               ; preds = %54
  %60 = load %struct.module*, %struct.module** %3, align 8
  %61 = getelementptr inbounds %struct.module, %struct.module* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %62, i64 %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SymTagPublicSymbol, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %59
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %104, %72
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.module*, %struct.module** %3, align 8
  %77 = getelementptr inbounds %struct.module, %struct.module* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %74
  %82 = load %struct.module*, %struct.module** %3, align 8
  %83 = getelementptr inbounds %struct.module, %struct.module* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %84, i64 %86
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SymTagPublicSymbol, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %81
  %95 = load %struct.module*, %struct.module** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @cmp_sorttab_addr(%struct.module* %95, i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  br label %102

102:                                              ; preds = %94, %81, %74
  %103 = phi i1 [ false, %81 ], [ false, %74 ], [ %101, %94 ]
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %74

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %59
  %109 = load %struct.module*, %struct.module** %3, align 8
  %110 = getelementptr inbounds %struct.module, %struct.module* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %111, i64 %113
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SymTagPublicSymbol, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %108
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %108
  br label %124

124:                                              ; preds = %123, %2
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @symt_get_address(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @cmp_sorttab_addr(%struct.module*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
