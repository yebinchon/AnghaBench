; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_DropRelFileNodesAllBuffers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_DropRelFileNodesAllBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@MyBackendId = common dso_local global i64 0, align 8
@DROP_RELS_BSEARCH_THRESHOLD = common dso_local global i32 0, align 4
@rnode_comparator = common dso_local global i32 0, align 4
@NBuffers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DropRelFileNodesAllBuffers(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %165

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32* @palloc(i32 %20)
  store i32* %21, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %69, %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %22
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i64 %29
  %31 = bitcast %struct.TYPE_11__* %30 to { i64, i32 }*
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @RelFileNodeBackendIsTemp(i64 %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %26
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MyBackendId, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @DropRelFileNodeAllLocalBuffers(i32 %53)
  br label %55

55:                                               ; preds = %47, %38
  br label %68

56:                                               ; preds = %26
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %62, i32* %67, align 4
  br label %68

68:                                               ; preds = %56, %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %22

72:                                               ; preds = %22
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @pfree(i32* %76)
  br label %165

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @DROP_RELS_BSEARCH_THRESHOLD, align 4
  %81 = icmp sgt i32 %79, %80
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @rnode_comparator, align 4
  %89 = call i32 @pg_qsort(i32* %86, i32 %87, i32 4, i32 %88)
  br label %90

90:                                               ; preds = %85, %78
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %159, %90
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @NBuffers, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %162

95:                                               ; preds = %91
  store i32* null, i32** %9, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call %struct.TYPE_12__* @GetBufferDescriptor(i32 %96)
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %10, align 8
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %127, label %100

100:                                              ; preds = %95
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %123, %100
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %101
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @RelFileNodeEquals(i32 %109, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %105
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32* %121, i32** %9, align 8
  br label %126

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %101

126:                                              ; preds = %117, %101
  br label %136

127:                                              ; preds = %95
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = bitcast i32* %130 to i8*
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @rnode_comparator, align 4
  %135 = call i32* @bsearch(i8* %131, i32* %132, i32 %133, i32 4, i32 %134)
  store i32* %135, i32** %9, align 8
  br label %136

136:                                              ; preds = %127, %126
  %137 = load i32*, i32** %9, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %159

140:                                              ; preds = %136
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %142 = call i32 @LockBufHdr(%struct.TYPE_12__* %141)
  store i32 %142, i32* %11, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @RelFileNodeEquals(i32 %146, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %140
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %153 = call i32 @InvalidateBuffer(%struct.TYPE_12__* %152)
  br label %158

154:                                              ; preds = %140
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @UnlockBufHdr(%struct.TYPE_12__* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %151
  br label %159

159:                                              ; preds = %158, %139
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %91

162:                                              ; preds = %91
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @pfree(i32* %163)
  br label %165

165:                                              ; preds = %162, %75, %15
  ret void
}

declare dso_local i32* @palloc(i32) #1

declare dso_local i64 @RelFileNodeBackendIsTemp(i64, i32) #1

declare dso_local i32 @DropRelFileNodeAllLocalBuffers(i32) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @pg_qsort(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @GetBufferDescriptor(i32) #1

declare dso_local i64 @RelFileNodeEquals(i32, i32) #1

declare dso_local i32* @bsearch(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_12__*) #1

declare dso_local i32 @InvalidateBuffer(%struct.TYPE_12__*) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
