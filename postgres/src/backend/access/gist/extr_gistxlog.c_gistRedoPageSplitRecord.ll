; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistRedoPageSplitRecord.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistRedoPageSplitRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i32, i64, i64 }
%struct.TYPE_11__ = type { i64 }

@InvalidBuffer = common dso_local global i32 0, align 4
@GIST_ROOT_BLKNO = common dso_local global i64 0, align 8
@F_LEAF = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @gistRedoPageSplitRecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistRedoPageSplitRecord(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = call i64 @XLogRecGetData(%struct.TYPE_13__* %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %4, align 8
  %23 = load i32, i32* @InvalidBuffer, align 4
  store i32 %23, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %156, %1
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %159

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @XLogRecGetBlockTag(%struct.TYPE_13__* %31, i32 %33, i32* null, i32* null, i64* %14)
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* @GIST_ROOT_BLKNO, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  store i32 1, i32* %9, align 4
  br label %43

43:                                               ; preds = %38, %30
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @XLogInitBufferForRedo(%struct.TYPE_13__* %44, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @BufferGetPage(i32 %48)
  store i64 %49, i64* %7, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i8* @XLogRecGetBlockData(%struct.TYPE_13__* %50, i32 %52, i32* %12)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32* @decodePageSplitRecord(i8* %54, i32 %55, i32* %13)
  store i32* %56, i32** %15, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %43
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @GIST_ROOT_BLKNO, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @F_LEAF, align 4
  store i32 %66, i32* %10, align 4
  br label %68

67:                                               ; preds = %61, %43
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %67, %65
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @GISTInitBuffer(i32 %69, i32 %70)
  %72 = load i64, i64* %7, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @FirstOffsetNumber, align 4
  %76 = call i32 @gistfillbuffer(i64 %72, i32* %73, i32 %74, i32 %75)
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* @GIST_ROOT_BLKNO, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %68
  %81 = load i64, i64* @InvalidBlockNumber, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call %struct.TYPE_11__* @GistPageGetOpaque(i64 %82)
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @GistPageSetNSN(i64 %85, i32 %88)
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @GistClearFollowRight(i64 %90)
  br label %142

92:                                               ; preds = %68
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  %98 = icmp slt i32 %93, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %92
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 2
  %103 = call i32 @XLogRecGetBlockTag(%struct.TYPE_13__* %100, i32 %102, i32* null, i32* null, i64* %16)
  %104 = load i64, i64* %16, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call %struct.TYPE_11__* @GistPageGetOpaque(i64 %105)
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  store i64 %104, i64* %107, align 8
  br label %115

108:                                              ; preds = %92
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call %struct.TYPE_11__* @GistPageGetOpaque(i64 %112)
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  br label %115

115:                                              ; preds = %108, %99
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @GistPageSetNSN(i64 %116, i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %124, 1
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %115
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %127
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i64, i64* %7, align 8
  %137 = call i32 @GistMarkFollowRight(i64 %136)
  br label %141

138:                                              ; preds = %130, %127, %115
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @GistClearFollowRight(i64 %139)
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141, %80
  %143 = load i64, i64* %7, align 8
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @PageSetLSN(i64 %143, i32 %144)
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @MarkBufferDirty(i32 %146)
  %148 = load i32, i32* %8, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %5, align 4
  br label %155

152:                                              ; preds = %142
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @UnlockReleaseBuffer(i32 %153)
  br label %155

155:                                              ; preds = %152, %150
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %24

159:                                              ; preds = %24
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %161 = call i64 @XLogRecHasBlockRef(%struct.TYPE_13__* %160, i32 0)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %165 = call i32 @gistRedoClearFollowRight(%struct.TYPE_13__* %164, i32 0)
  br label %166

166:                                              ; preds = %163, %159
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @UnlockReleaseBuffer(i32 %167)
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_13__*) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_13__*, i32, i32*, i32*, i64*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i8* @XLogRecGetBlockData(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32* @decodePageSplitRecord(i8*, i32, i32*) #1

declare dso_local i32 @GISTInitBuffer(i32, i32) #1

declare dso_local i32 @gistfillbuffer(i64, i32*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @GistPageGetOpaque(i64) #1

declare dso_local i32 @GistPageSetNSN(i64, i32) #1

declare dso_local i32 @GistClearFollowRight(i64) #1

declare dso_local i32 @GistMarkFollowRight(i64) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i64 @XLogRecHasBlockRef(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @gistRedoClearFollowRight(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
