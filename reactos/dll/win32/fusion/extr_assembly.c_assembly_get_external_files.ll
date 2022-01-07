; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_assembly.c_assembly_get_external_files.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_assembly.c_assembly_get_external_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@mdtFile = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assembly_get_external_files(%struct.TYPE_7__* %0, i32********* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*********, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32******, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32********* %1, i32********** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* @mdtFile, align 4
  %19 = call i64 @TableFromToken(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @S_OK, align 4
  store i32 %26, i32* %4, align 4
  br label %134

27:                                               ; preds = %3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32* @assembly_data_offset(%struct.TYPE_7__* %28, i32 %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @S_OK, align 4
  store i32 %34, i32* %4, align 4
  br label %134

35:                                               ; preds = %27
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* @mdtFile, align 4
  %40 = call i64 @TableFromToken(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @S_OK, align 4
  store i32 %47, i32* %4, align 4
  br label %134

48:                                               ; preds = %35
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = call i32******** @heap_alloc(i32 %52)
  %54 = bitcast i32******** %53 to i32******
  store i32****** %54, i32******* %11, align 8
  %55 = icmp ne i32****** %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %57, i32* %4, align 4
  br label %134

58:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %124, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %127

63:                                               ; preds = %59
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32* %65, i32** %12, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = icmp eq i64 %69, 4
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %13, align 4
  br label %77

74:                                               ; preds = %63
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32******* @assembly_dup_str(%struct.TYPE_7__* %78, i32 %79)
  %81 = bitcast i32******* %80 to i32*****
  %82 = load i32******, i32******* %11, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*****, i32****** %82, i64 %84
  store i32***** %81, i32****** %85, align 8
  %86 = load i32******, i32******* %11, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*****, i32****** %86, i64 %88
  %90 = load i32*****, i32****** %89, align 8
  %91 = icmp ne i32***** %90, null
  br i1 %91, label %111, label %92

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %104, %92
  %94 = load i32, i32* %9, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32******, i32******* %11, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*****, i32****** %97, i64 %99
  %101 = load i32*****, i32****** %100, align 8
  %102 = bitcast i32***** %101 to i32******
  %103 = call i32 @heap_free(i32****** %102)
  br label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %9, align 4
  br label %93

107:                                              ; preds = %93
  %108 = load i32******, i32******* %11, align 8
  %109 = call i32 @heap_free(i32****** %108)
  %110 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %110, i32* %4, align 4
  br label %134

111:                                              ; preds = %77
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %12, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %12, align 8
  br label %124

124:                                              ; preds = %111
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %59

127:                                              ; preds = %59
  %128 = load i32, i32* %10, align 4
  %129 = load i32*, i32** %7, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32******, i32******* %11, align 8
  %131 = bitcast i32****** %130 to i32********
  %132 = load i32*********, i32********** %6, align 8
  store i32******** %131, i32********* %132, align 8
  %133 = load i32, i32* @S_OK, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %127, %107, %56, %46, %33, %25
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @TableFromToken(i32) #1

declare dso_local i32* @assembly_data_offset(%struct.TYPE_7__*, i32) #1

declare dso_local i32******** @heap_alloc(i32) #1

declare dso_local i32******* @assembly_dup_str(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @heap_free(i32******) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
