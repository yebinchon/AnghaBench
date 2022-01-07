; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SimpleLruReadPage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SimpleLruReadPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i64*, i32*, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32 }

@SLRU_PAGE_EMPTY = common dso_local global i64 0, align 8
@SLRU_PAGE_READ_IN_PROGRESS = common dso_local global i64 0, align 8
@SLRU_PAGE_WRITE_IN_PROGRESS = common dso_local global i64 0, align 8
@SLRU_PAGE_VALID = common dso_local global i64 0, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SimpleLruReadPage(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %10, align 8
  br label %16

16:                                               ; preds = %62, %4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @SlruSelectLRUPage(%struct.TYPE_13__* %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %16
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SLRU_PAGE_EMPTY, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %29
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SLRU_PAGE_READ_IN_PROGRESS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %62, label %49

49:                                               ; preds = %39
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SLRU_PAGE_WRITE_IN_PROGRESS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59, %39
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @SimpleLruWaitIO(%struct.TYPE_13__* %63, i32 %64)
  br label %16

66:                                               ; preds = %59, %49
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @SlruRecentlyUsed(%struct.TYPE_12__* %67, i32 %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %219

71:                                               ; preds = %29, %16
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SLRU_PAGE_EMPTY, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %103, label %81

81:                                               ; preds = %71
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SLRU_PAGE_VALID, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %81
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br label %101

101:                                              ; preds = %91, %81
  %102 = phi i1 [ false, %81 ], [ %100, %91 ]
  br label %103

103:                                              ; preds = %101, %71
  %104 = phi i1 [ true, %71 ], [ %102, %101 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @Assert(i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load i64, i64* @SLRU_PAGE_READ_IN_PROGRESS, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  store i64 %114, i64* %120, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 0, i32* %126, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* @LW_EXCLUSIVE, align 4
  %135 = call i32 @LWLockAcquire(i32* %133, i32 %134)
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @LWLockRelease(i32* %138)
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @SlruPhysicalReadPage(%struct.TYPE_13__* %140, i32 %141, i32 %142)
  store i32 %143, i32* %12, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @SimpleLruZeroLSNs(%struct.TYPE_13__* %144, i32 %145)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* @LW_EXCLUSIVE, align 4
  %151 = call i32 @LWLockAcquire(i32* %149, i32 %150)
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %181

161:                                              ; preds = %103
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @SLRU_PAGE_READ_IN_PROGRESS, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %161
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  br label %181

181:                                              ; preds = %171, %161, %103
  %182 = phi i1 [ false, %161 ], [ false, %103 ], [ %180, %171 ]
  %183 = zext i1 %182 to i32
  %184 = call i32 @Assert(i32 %183)
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i64, i64* @SLRU_PAGE_VALID, align 8
  br label %191

189:                                              ; preds = %181
  %190 = load i64, i64* @SLRU_PAGE_EMPTY, align 8
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi i64 [ %188, %187 ], [ %190, %189 ]
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  store i64 %192, i64* %198, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = call i32 @LWLockRelease(i32* %205)
  %207 = load i32, i32* %12, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %191
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @SlruReportIOError(%struct.TYPE_13__* %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %209, %191
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %216 = load i32, i32* %11, align 4
  %217 = call i32 @SlruRecentlyUsed(%struct.TYPE_12__* %215, i32 %216)
  %218 = load i32, i32* %11, align 4
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %214, %66
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i32 @SlruSelectLRUPage(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @SimpleLruWaitIO(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @SlruRecentlyUsed(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i32 @SlruPhysicalReadPage(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @SimpleLruZeroLSNs(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @SlruReportIOError(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
