; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgxlog.c_spgRedoMoveLeafs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgxlog.c_spgRedoMoveLeafs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32 }

@SizeOfSpgxlogMoveLeafs = common dso_local global i32 0, align 4
@SPGIST_LEAF = common dso_local global i32 0, align 4
@SPGIST_NULLS = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@SPGIST_PLACEHOLDER = common dso_local global i32 0, align 4
@SPGIST_REDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @spgRedoMoveLeafs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spgRedoMoveLeafs(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_16__, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = call i8* @XLogRecGetData(%struct.TYPE_14__* %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %5, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = call i32 @XLogRecGetBlockTag(%struct.TYPE_14__* %25, i32 1, i32* null, i32* null, i32* %13)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @fillFakeState(%struct.TYPE_15__* %6, i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %41

36:                                               ; preds = %1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  br label %41

41:                                               ; preds = %36, %35
  %42 = phi i32 [ 1, %35 ], [ %40, %36 ]
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* @SizeOfSpgxlogMoveLeafs, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** %7, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 4, %52
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %4, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = bitcast i8* %56 to i32*
  store i32* %57, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 4, %59
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %4, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %41
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %69 = call i32 @XLogInitBufferForRedo(%struct.TYPE_14__* %68, i32 1)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @SPGIST_LEAF, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @SPGIST_NULLS, align 4
  br label %79

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = or i32 %71, %80
  %82 = call i32 @SpGistInitBuffer(i32 %70, i32 %81)
  %83 = load i64, i64* @BLK_NEEDS_REDO, align 8
  store i64 %83, i64* %12, align 8
  br label %87

84:                                               ; preds = %41
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = call i64 @XLogReadBufferForRedo(%struct.TYPE_14__* %85, i32 1, i32* %10)
  store i64 %86, i64* %12, align 8
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %127

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @BufferGetPage(i32 %92)
  store i32 %93, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %94

94:                                               ; preds = %118, %91
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %94
  %99 = load i8*, i8** %4, align 8
  store i8* %99, i8** %15, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = call i32 @memcpy(%struct.TYPE_16__* %16, i8* %100, i32 4)
  %102 = load i32, i32* %11, align 4
  %103 = load i8*, i8** %15, align 8
  %104 = ptrtoint i8* %103 to i32
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @addOrReplaceTuple(i32 %102, i32 %104, i32 %106, i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %4, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %4, align 8
  br label %118

118:                                              ; preds = %98
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %94

121:                                              ; preds = %94
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @PageSetLSN(i32 %122, i32 %123)
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @MarkBufferDirty(i32 %125)
  br label %127

127:                                              ; preds = %121, %87
  %128 = load i32, i32* %10, align 4
  %129 = call i64 @BufferIsValid(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @UnlockReleaseBuffer(i32 %132)
  br label %134

134:                                              ; preds = %131, %127
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %136 = call i64 @XLogReadBufferForRedo(%struct.TYPE_14__* %135, i32 0, i32* %10)
  %137 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %170

139:                                              ; preds = %134
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @BufferGetPage(i32 %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %139
  %151 = load i32, i32* @SPGIST_PLACEHOLDER, align 4
  br label %154

152:                                              ; preds = %139
  %153 = load i32, i32* @SPGIST_REDIRECT, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = load i32, i32* @SPGIST_PLACEHOLDER, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @spgPageIndexMultiDelete(%struct.TYPE_15__* %6, i32 %142, i32* %143, i32 %146, i32 %155, i32 %156, i32 %157, i32 %163)
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %3, align 4
  %167 = call i32 @PageSetLSN(i32 %165, i32 %166)
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @MarkBufferDirty(i32 %168)
  br label %170

170:                                              ; preds = %154, %134
  %171 = load i32, i32* %10, align 4
  %172 = call i64 @BufferIsValid(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @UnlockReleaseBuffer(i32 %175)
  br label %177

177:                                              ; preds = %174, %170
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %179 = call i64 @XLogReadBufferForRedo(%struct.TYPE_14__* %178, i32 2, i32* %10)
  %180 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %209

182:                                              ; preds = %177
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @BufferGetPage(i32 %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @PageGetItemId(i32 %186, i32 %189)
  %191 = call i64 @PageGetItem(i32 %185, i32 %190)
  store i64 %191, i64* %17, align 8
  %192 = load i64, i64* %17, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load i32*, i32** %8, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @spgUpdateNodeLink(i64 %192, i32 %195, i32 %196, i32 %202)
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %3, align 4
  %206 = call i32 @PageSetLSN(i32 %204, i32 %205)
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @MarkBufferDirty(i32 %207)
  br label %209

209:                                              ; preds = %182, %177
  %210 = load i32, i32* %10, align 4
  %211 = call i64 @BufferIsValid(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @UnlockReleaseBuffer(i32 %214)
  br label %216

216:                                              ; preds = %213, %209
  ret void
}

declare dso_local i8* @XLogRecGetData(%struct.TYPE_14__*) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_14__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @fillFakeState(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @SpGistInitBuffer(i32, i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @addOrReplaceTuple(i32, i32, i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @spgPageIndexMultiDelete(%struct.TYPE_15__*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @spgUpdateNodeLink(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
