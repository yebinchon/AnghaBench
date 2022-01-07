; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_heaptuple.c_heap_deform_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_heaptuple.c_heap_deform_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_deform_tuple(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %9, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = call i32 @HeapTupleHasNulls(%struct.TYPE_15__* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %31 = call i32 @HeapTupleHeaderGetNatts(%struct.TYPE_14__* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @Min(i32 %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = bitcast %struct.TYPE_14__* %35 to i8*
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  store i8* %41, i8** %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %150, %4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %153

46:                                               ; preds = %42
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call %struct.TYPE_16__* @TupleDescAttr(%struct.TYPE_13__* %47, i32 %48)
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %18, align 8
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load i32, i32* %13, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = call i64 @att_isnull(i32 %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i64*, i64** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 0, i64* %61, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 1, i32* %65, align 4
  store i32 1, i32* %17, align 4
  br label %150

66:                                               ; preds = %52, %46
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 0, i32* %70, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %15, align 8
  br label %126

82:                                               ; preds = %73, %66
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %112

87:                                               ; preds = %82
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %87
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @att_align_nominal(i64 %92, i32 %95)
  %97 = icmp eq i64 %91, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load i64, i64* %15, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %111

102:                                              ; preds = %90, %87
  %103 = load i64, i64* %15, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %14, align 8
  %108 = load i64, i64* %15, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = call i64 @att_align_pointer(i64 %103, i32 %106, i32 -1, i8* %109)
  store i64 %110, i64* %15, align 8
  store i32 1, i32* %17, align 4
  br label %111

111:                                              ; preds = %102, %98
  br label %125

112:                                              ; preds = %82
  %113 = load i64, i64* %15, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @att_align_nominal(i64 %113, i32 %116)
  store i64 %117, i64* %15, align 8
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %112
  %121 = load i64, i64* %15, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %120, %112
  br label %125

125:                                              ; preds = %124, %111
  br label %126

126:                                              ; preds = %125, %78
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %128 = load i8*, i8** %14, align 8
  %129 = load i64, i64* %15, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  %131 = call i64 @fetchatt(%struct.TYPE_16__* %127, i8* %130)
  %132 = load i64*, i64** %7, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 %131, i64* %135, align 8
  %136 = load i64, i64* %15, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = load i64, i64* %15, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = call i64 @att_addlength_pointer(i64 %136, i32 %139, i8* %142)
  store i64 %143, i64* %15, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp sle i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %126
  store i32 1, i32* %17, align 4
  br label %149

149:                                              ; preds = %148, %126
  br label %150

150:                                              ; preds = %149, %57
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %42

153:                                              ; preds = %42
  br label %154

154:                                              ; preds = %171, %153
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %154
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  %162 = load i32*, i32** %8, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = call i64 @getmissingattr(%struct.TYPE_13__* %159, i32 %161, i32* %165)
  %167 = load i64*, i64** %7, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  store i64 %166, i64* %170, align 8
  br label %171

171:                                              ; preds = %158
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  br label %154

174:                                              ; preds = %154
  ret void
}

declare dso_local i32 @HeapTupleHasNulls(%struct.TYPE_15__*) #1

declare dso_local i32 @HeapTupleHeaderGetNatts(%struct.TYPE_14__*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local %struct.TYPE_16__* @TupleDescAttr(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @att_isnull(i32, i32*) #1

declare dso_local i64 @att_align_nominal(i64, i32) #1

declare dso_local i64 @att_align_pointer(i64, i32, i32, i8*) #1

declare dso_local i64 @fetchatt(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @att_addlength_pointer(i64, i32, i8*) #1

declare dso_local i64 @getmissingattr(%struct.TYPE_13__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
