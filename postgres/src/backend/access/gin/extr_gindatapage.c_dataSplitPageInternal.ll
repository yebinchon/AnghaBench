; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gindatapage.c_dataSplitPageInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gindatapage.c_dataSplitPageInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@BLCKSZ = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, %struct.TYPE_12__*, i8*, i32, i32*, i32*)* @dataSplitPageInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dataSplitPageInternal(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_12__* %2, i8* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @BufferGetPage(i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call %struct.TYPE_14__* @GinPageGetOpaque(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @PageGetPageSize(i32 %37)
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32* @GinDataPageGetRightBound(i32 %39)
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* @BLCKSZ, align 4
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %43, 4
  %45 = add i64 %44, 1
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %26, align 8
  %47 = alloca %struct.TYPE_11__, i64 %45, align 16
  store i64 %45, i64* %27, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @PageGetTempPage(i32 %48)
  store i32 %49, i32* %23, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @PageGetTempPage(i32 %50)
  store i32 %51, i32* %24, align 4
  %52 = load i32, i32* %23, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call %struct.TYPE_14__* @GinPageGetOpaque(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %20, align 4
  %58 = call i32 @GinInitPage(i32 %52, i32 %56, i32 %57)
  %59 = load i32, i32* %24, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call %struct.TYPE_14__* @GinPageGetOpaque(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %20, align 4
  %65 = call i32 @GinInitPage(i32 %59, i32 %63, i32 %64)
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @FirstOffsetNumber, align 4
  %68 = call %struct.TYPE_11__* @GinDataPageGetPostingItem(i32 %66, i32 %67)
  %69 = load i32, i32* %16, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memcpy(%struct.TYPE_11__* %47, %struct.TYPE_11__* %68, i32 %73)
  %75 = load i32, i32* %16, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %77
  %79 = load i8*, i8** %11, align 8
  %80 = bitcast i8* %79 to %struct.TYPE_11__*
  %81 = bitcast %struct.TYPE_11__* %78 to i8*
  %82 = bitcast %struct.TYPE_11__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 4, i1 false)
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %84
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %16, align 4
  %88 = call %struct.TYPE_11__* @GinDataPageGetPostingItem(i32 %86, i32 %87)
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %16, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sub nsw i32 %89, %91
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = call i32 @memcpy(%struct.TYPE_11__* %85, %struct.TYPE_11__* %88, i32 %95)
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %100
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @PostingItemSetBlockNumber(%struct.TYPE_11__* %101, i32 %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %7
  %109 = load i32, i32* %15, align 4
  %110 = call i64 @GinPageRightMost(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i32, i32* %24, align 4
  %114 = call i32 @GinNonLeafDataPageGetFreeSpace(i32 %113)
  %115 = sext i32 %114 to i64
  %116 = udiv i64 %115, 4
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %25, align 4
  br label %121

118:                                              ; preds = %108, %7
  %119 = load i32, i32* %17, align 4
  %120 = sdiv i32 %119, 2
  store i32 %120, i32* %25, align 4
  br label %121

121:                                              ; preds = %118, %112
  %122 = load i32, i32* %25, align 4
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %25, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %23, align 4
  %127 = load i32, i32* @FirstOffsetNumber, align 4
  %128 = call %struct.TYPE_11__* @GinDataPageGetPostingItem(i32 %126, i32 %127)
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memcpy(%struct.TYPE_11__* %128, %struct.TYPE_11__* %47, i32 %132)
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %23, align 4
  %136 = call %struct.TYPE_14__* @GinPageGetOpaque(i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* %24, align 4
  %139 = load i32, i32* @FirstOffsetNumber, align 4
  %140 = call %struct.TYPE_11__* @GinDataPageGetPostingItem(i32 %138, i32 %139)
  %141 = load i32, i32* %25, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %142
  %144 = load i32, i32* %19, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = trunc i64 %146 to i32
  %148 = call i32 @memcpy(%struct.TYPE_11__* %140, %struct.TYPE_11__* %143, i32 %147)
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %24, align 4
  %151 = call %struct.TYPE_14__* @GinPageGetOpaque(i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* %23, align 4
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 4
  %157 = trunc i64 %156 to i32
  %158 = call i32 @GinDataPageSetDataSize(i32 %153, i32 %157)
  %159 = load i32, i32* %24, align 4
  %160 = load i32, i32* %19, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 4
  %163 = trunc i64 %162 to i32
  %164 = call i32 @GinDataPageSetDataSize(i32 %159, i32 %163)
  %165 = load i32, i32* %23, align 4
  %166 = call i32* @GinDataPageGetRightBound(i32 %165)
  store i32* %166, i32** %22, align 8
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %18, align 4
  %169 = call %struct.TYPE_11__* @GinDataPageGetPostingItem(i32 %167, i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %22, align 8
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* %24, align 4
  %175 = call i32* @GinDataPageGetRightBound(i32 %174)
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %23, align 4
  %177 = load i32*, i32** %13, align 8
  store i32 %176, i32* %177, align 4
  %178 = load i32, i32* %24, align 4
  %179 = load i32*, i32** %14, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %180)
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local %struct.TYPE_14__* @GinPageGetOpaque(i32) #1

declare dso_local i32 @PageGetPageSize(i32) #1

declare dso_local i32* @GinDataPageGetRightBound(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @PageGetTempPage(i32) #1

declare dso_local i32 @GinInitPage(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @GinDataPageGetPostingItem(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @PostingItemSetBlockNumber(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @GinPageRightMost(i32) #1

declare dso_local i32 @GinNonLeafDataPageGetFreeSpace(i32) #1

declare dso_local i32 @GinDataPageSetDataSize(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
