; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_insertStatEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_insertStatEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i64 }

@STATENTRYHDRSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_12__*, i32, i32)* @insertStatEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insertStatEntry(i32 %0, %struct.TYPE_12__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.TYPE_11__* @ARRPTR(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 %18
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %9, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = call i32 @POSDATALEN(i32 %33, %struct.TYPE_11__* %34)
  br label %37

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 1, %36 ]
  store i32 %38, i32* %12, align 4
  br label %54

39:                                               ; preds = %4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @check_weight(i32 %45, %struct.TYPE_11__* %46, i32 %49)
  br label %52

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %44
  %53 = phi i32 [ %50, %44 ], [ 0, %51 ]
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %52, %37
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %164

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %84, %58
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = icmp ne %struct.TYPE_13__* %60, null
  br i1 %61, label %62, label %87

62:                                               ; preds = %59
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @compareStatWord(%struct.TYPE_13__* %63, %struct.TYPE_11__* %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %87

70:                                               ; preds = %62
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %11, align 8
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  br label %82

78:                                               ; preds = %70
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi %struct.TYPE_13__* [ %77, %74 ], [ %81, %78 ]
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %10, align 8
  br label %84

84:                                               ; preds = %82
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %59

87:                                               ; preds = %69, %59
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32, i32* %14, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %99 = icmp eq %struct.TYPE_13__* %98, null
  br i1 %99, label %100, label %154

100:                                              ; preds = %97
  %101 = load i32, i32* %5, align 4
  %102 = load i64, i64* @STATENTRYHDRSZ, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = call %struct.TYPE_13__* @MemoryContextAlloc(i32 %101, i64 %106)
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %10, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %109, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %111, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 4
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i64 @STRPTR(i32 %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %126, %129
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @memcpy(i32 %124, i64 %130, i64 %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %136 = icmp eq %struct.TYPE_13__* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %100
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %140, align 8
  br label %153

141:                                              ; preds = %100
  %142 = load i32, i32* %13, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 3
  store %struct.TYPE_13__* %145, %struct.TYPE_13__** %147, align 8
  br label %152

148:                                              ; preds = %141
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  store %struct.TYPE_13__* %149, %struct.TYPE_13__** %151, align 8
  br label %152

152:                                              ; preds = %148, %144
  br label %153

153:                                              ; preds = %152, %137
  br label %164

154:                                              ; preds = %97
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %57, %154, %153
  ret void
}

declare dso_local %struct.TYPE_11__* @ARRPTR(i32) #1

declare dso_local i32 @POSDATALEN(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @check_weight(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @compareStatWord(%struct.TYPE_13__*, %struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_13__* @MemoryContextAlloc(i32, i64) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i64 @STRPTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
