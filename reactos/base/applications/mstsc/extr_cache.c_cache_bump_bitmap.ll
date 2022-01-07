; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_cache.c_cache_bump_bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_cache.c_cache_bump_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@g_bmpcache_mru = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"bump bitmap: id=%d, idx=%d, bump=%d\0A\00", align 1
@g_bmpcache = common dso_local global %struct.TYPE_2__** null, align 8
@g_bmpcache_count = common dso_local global i32* null, align 8
@g_bmpcache_lru = common dso_local global i32* null, align 8
@NOT_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_bump_bitmap(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @IS_PERSISTENT(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %195

14:                                               ; preds = %3
  %15 = load i64*, i64** @g_bmpcache_mru, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %195

22:                                               ; preds = %14
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @DEBUG_RDP5(i8* %27)
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_bmpcache, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_bmpcache, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @IS_SET(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %22
  %49 = load i32*, i32** @g_bmpcache_count, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @IS_SET(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_bmpcache, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %58, i32* %66, align 4
  br label %72

67:                                               ; preds = %48
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** @g_bmpcache_lru, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %57
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @IS_SET(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_bmpcache, align 8
  %79 = load i64, i64* %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %78, i64 %79
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 %77, i32* %85, align 4
  br label %92

86:                                               ; preds = %72
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64*, i64** @g_bmpcache_mru, align 8
  %90 = load i64, i64* %4, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  store i64 %88, i64* %91, align 8
  br label %92

92:                                               ; preds = %86, %76
  br label %99

93:                                               ; preds = %22
  %94 = load i32, i32* @NOT_SET, align 4
  store i32 %94, i32* %7, align 4
  %95 = load i32*, i32** @g_bmpcache_lru, align 8
  %96 = load i64, i64* %4, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %93, %92
  %100 = load i32, i32* %6, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %99
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %124, %102
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* %8, align 4
  %109 = call i64 @IS_SET(i32 %108)
  %110 = icmp ne i64 %109, 0
  br label %111

111:                                              ; preds = %107, %103
  %112 = phi i1 [ false, %103 ], [ %110, %107 ]
  br i1 %112, label %113, label %127

113:                                              ; preds = %111
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %7, align 4
  %115 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_bmpcache, align 8
  %116 = load i64, i64* %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %115, i64 %116
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %113
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %103

127:                                              ; preds = %111
  br label %135

128:                                              ; preds = %99
  %129 = load i64*, i64** @g_bmpcache_mru, align 8
  %130 = load i64, i64* %4, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* @NOT_SET, align 4
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %128, %127
  %136 = load i32*, i32** @g_bmpcache_count, align 8
  %137 = load i64, i64* %4, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_bmpcache, align 8
  %143 = load i64, i64* %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %142, i64 %143
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i64, i64* %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  store i32 %141, i32* %148, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_bmpcache, align 8
  %151 = load i64, i64* %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %150, i64 %151
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i64, i64* %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  store i32 %149, i32* %156, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp sge i32 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %135
  %160 = load i64, i64* %5, align 8
  %161 = trunc i64 %160 to i32
  %162 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_bmpcache, align 8
  %163 = load i64, i64* %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %162, i64 %163
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  store i32 %161, i32* %169, align 4
  br label %176

170:                                              ; preds = %135
  %171 = load i64, i64* %5, align 8
  %172 = trunc i64 %171 to i32
  %173 = load i32*, i32** @g_bmpcache_lru, align 8
  %174 = load i64, i64* %4, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32 %172, i32* %175, align 4
  br label %176

176:                                              ; preds = %170, %159
  %177 = load i32, i32* %8, align 4
  %178 = icmp sge i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %176
  %180 = load i64, i64* %5, align 8
  %181 = trunc i64 %180 to i32
  %182 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_bmpcache, align 8
  %183 = load i64, i64* %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %182, i64 %183
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  store i32 %181, i32* %189, align 4
  br label %195

190:                                              ; preds = %176
  %191 = load i64, i64* %5, align 8
  %192 = load i64*, i64** @g_bmpcache_mru, align 8
  %193 = load i64, i64* %4, align 8
  %194 = getelementptr inbounds i64, i64* %192, i64 %193
  store i64 %191, i64* %194, align 8
  br label %195

195:                                              ; preds = %13, %21, %190, %179
  ret void
}

declare dso_local i32 @IS_PERSISTENT(i64) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

declare dso_local i64 @IS_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
