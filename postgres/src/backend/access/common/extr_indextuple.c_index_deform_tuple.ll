; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_indextuple.c_index_deform_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_indextuple.c_index_deform_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @index_deform_tuple(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = call i32 @IndexTupleHasNulls(%struct.TYPE_11__* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %24 = icmp sle i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = bitcast %struct.TYPE_11__* %27 to i8*
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %14, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = bitcast %struct.TYPE_11__* %31 to i8*
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IndexInfoFindDataOffset(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  store i8* %38, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %150, %4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %153

43:                                               ; preds = %39
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.TYPE_12__* @TupleDescAttr(%struct.TYPE_10__* %44, i32 %45)
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %16, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = call i64 @att_isnull(i32 %50, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 1, i32* %62, align 4
  store i32 1, i32* %15, align 4
  br label %150

63:                                               ; preds = %49, %43
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %63
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %13, align 4
  br label %124

79:                                               ; preds = %70, %63
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %110

84:                                               ; preds = %79
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @att_align_nominal(i32 %89, i32 %92)
  %94 = icmp eq i32 %88, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %109

99:                                               ; preds = %87, %84
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %12, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = call i32 @att_align_pointer(i32 %100, i32 %103, i32 -1, i8* %107)
  store i32 %108, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %109

109:                                              ; preds = %99, %95
  br label %123

110:                                              ; preds = %79
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @att_align_nominal(i32 %111, i32 %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %110
  br label %123

123:                                              ; preds = %122, %109
  br label %124

124:                                              ; preds = %123, %75
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = call i32 @fetchatt(%struct.TYPE_12__* %125, i8* %129)
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i8*, i8** %12, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = call i32 @att_addlength_pointer(i32 %135, i32 %138, i8* %142)
  store i32 %143, i32* %13, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp sle i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %124
  store i32 1, i32* %15, align 4
  br label %149

149:                                              ; preds = %148, %124
  br label %150

150:                                              ; preds = %149, %54
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %39

153:                                              ; preds = %39
  ret void
}

declare dso_local i32 @IndexTupleHasNulls(%struct.TYPE_11__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IndexInfoFindDataOffset(i32) #1

declare dso_local %struct.TYPE_12__* @TupleDescAttr(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @att_isnull(i32, i32*) #1

declare dso_local i32 @att_align_nominal(i32, i32) #1

declare dso_local i32 @att_align_pointer(i32, i32, i32, i8*) #1

declare dso_local i32 @fetchatt(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @att_addlength_pointer(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
