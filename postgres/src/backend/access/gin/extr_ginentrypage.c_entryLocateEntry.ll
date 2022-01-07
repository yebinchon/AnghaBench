; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginentrypage.c_entryLocateEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginentrypage.c_entryLocateEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (%struct.TYPE_7__*, i32)*, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@FirstOffsetNumber = common dso_local global i32 0, align 4
@GIN_ROOT_BLKNO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, %struct.TYPE_6__*)* @entryLocateEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @entryLocateEntry(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* null, i32** %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BufferGetPage(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @GinPageIsLeaf(i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @GinPageIsData(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %2
  %37 = load i32, i32* @FirstOffsetNumber, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @PageGetMaxOffsetNumber(i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64 (%struct.TYPE_7__*, i32)*, i64 (%struct.TYPE_7__*, i32)** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i64 %48(%struct.TYPE_7__* %49, i32 %50)
  store i64 %51, i64* %3, align 8
  br label %169

52:                                               ; preds = %2
  %53 = load i32, i32* @FirstOffsetNumber, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @PageGetMaxOffsetNumber(i32 %54)
  store i32 %55, i32* %7, align 4
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sge i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @Assert(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %139, %52
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %140

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sdiv i32 %71, 2
  %73 = add nsw i32 %68, %72
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load i32, i32* %11, align 4
  %79 = call i64 @GinPageRightMost(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 -1, i32* %10, align 4
  br label %115

82:                                               ; preds = %77, %67
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @PageGetItemId(i32 %84, i32 %85)
  %87 = call i64 @PageGetItem(i32 %83, i32 %86)
  %88 = inttoptr i64 %87 to i32*
  store i32* %88, i32** %9, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @gintuple_get_attrnum(i32 %91, i32* %92)
  store i32 %93, i32* %13, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @gintuple_get_key(i32 %96, i32* %97, i32* %15)
  store i32 %98, i32* %14, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @ginCompareAttEntries(i32 %101, i32 %104, i32 %107, i32 %110, i32 %111, i32 %112, i32 %113)
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %82, %81
  %116 = load i32, i32* %10, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = call i64 @GinGetDownlink(i32* %122)
  %124 = load i64, i64* @GIN_ROOT_BLKNO, align 8
  %125 = icmp ne i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @Assert(i32 %126)
  %128 = load i32*, i32** %9, align 8
  %129 = call i64 @GinGetDownlink(i32* %128)
  store i64 %129, i64* %3, align 8
  br label %169

130:                                              ; preds = %115
  %131 = load i32, i32* %10, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %138

136:                                              ; preds = %130
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %136, %133
  br label %139

139:                                              ; preds = %138
  br label %63

140:                                              ; preds = %63
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @FirstOffsetNumber, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp sle i32 %145, %146
  br label %148

148:                                              ; preds = %144, %140
  %149 = phi i1 [ false, %140 ], [ %147, %144 ]
  %150 = zext i1 %149 to i32
  %151 = call i32 @Assert(i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @PageGetItemId(i32 %156, i32 %157)
  %159 = call i64 @PageGetItem(i32 %155, i32 %158)
  %160 = inttoptr i64 %159 to i32*
  store i32* %160, i32** %9, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = call i64 @GinGetDownlink(i32* %161)
  %163 = load i64, i64* @GIN_ROOT_BLKNO, align 8
  %164 = icmp ne i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @Assert(i32 %165)
  %167 = load i32*, i32** %9, align 8
  %168 = call i64 @GinGetDownlink(i32* %167)
  store i64 %168, i64* %3, align 8
  br label %169

169:                                              ; preds = %148, %118, %36
  %170 = load i64, i64* %3, align 8
  ret i64 %170
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GinPageIsLeaf(i32) #1

declare dso_local i32 @GinPageIsData(i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @GinPageRightMost(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @gintuple_get_attrnum(i32, i32*) #1

declare dso_local i32 @gintuple_get_key(i32, i32*, i32*) #1

declare dso_local i32 @ginCompareAttEntries(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @GinGetDownlink(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
