; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_iterator_next.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_iterator_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @iterator_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterator_next(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %2, align 4
  br label %131

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %29
  br label %68

38:                                               ; preds = %21
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %125, %38
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %51, %43
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %2, align 4
  br label %131

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %37
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = icmp ne %struct.TYPE_5__* %71, null
  br i1 %72, label %73, label %103

73:                                               ; preds = %68
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @DPA_GetPtrCount(i32 %81)
  %83 = icmp slt i64 %76, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %73
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  %96 = trunc i64 %94 to i32
  %97 = call i64 @DPA_GetPtr(i32 %91, i32 %96)
  %98 = inttoptr i64 %97 to %struct.TYPE_6__*
  %99 = bitcast %struct.TYPE_6__* %86 to i8*
  %100 = bitcast %struct.TYPE_6__* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 4 %100, i64 8, i1 false)
  br label %102

101:                                              ; preds = %73
  br label %127

102:                                              ; preds = %84
  br label %114

103:                                              ; preds = %68
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp sge i32 %106, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %127

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %102
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  br label %43

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126, %112, %101
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32 -1, i32* %129, align 8
  %130 = load i32, i32* @FALSE, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %127, %65, %18
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i64 @DPA_GetPtrCount(i32) #1

declare dso_local i64 @DPA_GetPtr(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
