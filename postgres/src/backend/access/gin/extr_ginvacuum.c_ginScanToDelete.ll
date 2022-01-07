; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginvacuum.c_ginScanToDelete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginvacuum.c_ginScanToDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_8__*, i8*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }

@InvalidBlockNumber = common dso_local global i64 0, align 8
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@GIN_EXCLUSIVE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@GIN_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, %struct.TYPE_8__*, i64)* @ginScanToDelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ginScanToDelete(%struct.TYPE_7__* %0, i8* %1, i32 %2, %struct.TYPE_8__* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %11, align 8
  br label %44

22:                                               ; preds = %5
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %22
  %28 = call i64 @palloc0(i32 40)
  %29 = inttoptr i64 %28 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %11, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %35, align 8
  %36 = load i64, i64* @InvalidBlockNumber, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %43

39:                                               ; preds = %22
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %11, align 8
  br label %43

43:                                               ; preds = %39, %27
  br label %44

44:                                               ; preds = %43, %20
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAIN_FORKNUM, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @RBM_NORMAL, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ReadBufferExtended(i32 %47, i32 %48, i8* %49, i32 %50, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %60 = call i32 @LockBuffer(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %44
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @BufferGetPage(i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @GinPageIsData(i32 %64)
  %66 = call i32 @Assert(i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = call i64 @GinPageIsLeaf(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %101, label %70

70:                                               ; preds = %61
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %74, i64* %16, align 8
  br label %75

75:                                               ; preds = %97, %70
  %76 = load i64, i64* %16, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call %struct.TYPE_9__* @GinPageGetOpaque(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sle i64 %76, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %75
  %83 = load i32, i32* %13, align 4
  %84 = load i64, i64* %16, align 8
  %85 = call i32* @GinDataPageGetPostingItem(i32 %83, i64 %84)
  store i32* %85, i32** %17, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = call i8* @PostingItemGetBlockNumber(i32* %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %90 = load i64, i64* %16, align 8
  %91 = call i32 @ginScanToDelete(%struct.TYPE_7__* %86, i8* %88, i32 0, %struct.TYPE_8__* %89, i64 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load i64, i64* %16, align 8
  %95 = add nsw i64 %94, -1
  store i64 %95, i64* %16, align 8
  br label %96

96:                                               ; preds = %93, %82
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %16, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %16, align 8
  br label %75

100:                                              ; preds = %75
  br label %101

101:                                              ; preds = %100, %61
  %102 = load i32, i32* %13, align 4
  %103 = call i64 @GinPageIsLeaf(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @GinDataLeafPageIsEmpty(i32 %106)
  store i32 %107, i32* %15, align 4
  br label %116

108:                                              ; preds = %101
  %109 = load i32, i32* %13, align 4
  %110 = call %struct.TYPE_9__* @GinPageGetOpaque(i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @FirstOffsetNumber, align 8
  %114 = icmp slt i64 %112, %113
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %108, %105
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %153

119:                                              ; preds = %116
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @InvalidBlockNumber, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %152

125:                                              ; preds = %119
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @GinPageRightMost(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %152, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = call i32 @Assert(i32 %133)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = load i64, i64* %10, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @ginDeletePage(%struct.TYPE_7__* %135, i8* %136, i64 %139, i8* %144, i64 %145, i32 %150)
  store i32 1, i32* %14, align 4
  br label %152

152:                                              ; preds = %129, %125, %119
  br label %153

153:                                              ; preds = %152, %116
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @GIN_UNLOCK, align 4
  %159 = call i32 @LockBuffer(i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %153
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @ReleaseBuffer(i32 %161)
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %160
  %166 = load i8*, i8** %7, align 8
  %167 = ptrtoint i8* %166 to i64
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %165, %160
  %171 = load i32, i32* %14, align 4
  ret i32 %171
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GinPageIsData(i32) #1

declare dso_local i64 @GinPageIsLeaf(i32) #1

declare dso_local %struct.TYPE_9__* @GinPageGetOpaque(i32) #1

declare dso_local i32* @GinDataPageGetPostingItem(i32, i64) #1

declare dso_local i8* @PostingItemGetBlockNumber(i32*) #1

declare dso_local i32 @GinDataLeafPageIsEmpty(i32) #1

declare dso_local i32 @GinPageRightMost(i32) #1

declare dso_local i32 @ginDeletePage(%struct.TYPE_7__*, i8*, i64, i8*, i64, i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
