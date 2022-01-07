; ModuleID = '/home/carl/AnghaBench/memcached/extr_items.c_do_item_alloc.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_items.c_do_item_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i64, i64, i64, i64 }

@settings = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@ITEM_CHUNKED = common dso_local global i32 0, align 4
@lru_locks = common dso_local global i32* null, align 8
@itemstats = common dso_local global %struct.TYPE_14__* null, align 8
@current_time = common dso_local global i64 0, align 8
@TEMP_LRU = common dso_local global i32 0, align 4
@HOT_LRU = common dso_local global i32 0, align 4
@COLD_LRU = common dso_local global i32 0, align 4
@ITEM_CAS = common dso_local global i32 0, align 4
@ITEM_CFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @do_item_alloc(i8* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca [40 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %13, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %222

23:                                               ; preds = %5
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %24, 1
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %11, align 4
  %28 = getelementptr inbounds [40 x i8], [40 x i8]* %14, i64 0, i64 0
  %29 = call i64 @item_make_header(i64 %25, i32 %26, i32 %27, i8* %28, i64* %12)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @settings, i32 0, i32 2), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i64, i64* %15, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %15, align 8
  br label %35

35:                                               ; preds = %32, %23
  %36 = load i64, i64* %15, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @slabs_clsid(i32 %37)
  store i32 %38, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %222

42:                                               ; preds = %35
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @settings, i32 0, i32 0), align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %48, %49
  %51 = add i64 %50, 56
  %52 = add i64 %51, 48
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %18, align 4
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @settings, i32 0, i32 2), align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %18, align 4
  br label %61

61:                                               ; preds = %56, %46
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @slabs_clsid(i32 %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = load i32, i32* %17, align 4
  %67 = call %struct.TYPE_12__* @do_item_alloc_pull(i64 %65, i32 %66)
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %13, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %69 = icmp ne %struct.TYPE_12__* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load i32, i32* @ITEM_CHUNKED, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %61
  br label %81

77:                                               ; preds = %42
  %78 = load i64, i64* %15, align 8
  %79 = load i32, i32* %16, align 4
  %80 = call %struct.TYPE_12__* @do_item_alloc_pull(i64 %78, i32 %79)
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %13, align 8
  br label %81

81:                                               ; preds = %77, %76
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %83 = icmp eq %struct.TYPE_12__* %82, null
  br i1 %83, label %84, label %102

84:                                               ; preds = %81
  %85 = load i32*, i32** @lru_locks, align 8
  %86 = load i32, i32* %16, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 @pthread_mutex_lock(i32* %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** @itemstats, align 8
  %91 = load i32, i32* %16, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load i32*, i32** @lru_locks, align 8
  %98 = load i32, i32* %16, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i32 @pthread_mutex_unlock(i32* %100)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %222

102:                                              ; preds = %81
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ITEM_CHUNKED, align 4
  %112 = icmp eq i32 %110, %111
  br label %113

113:                                              ; preds = %107, %102
  %114 = phi i1 [ true, %102 ], [ %112, %107 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 6
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 7
  store i64 0, i64* %120, align 8
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @settings, i32 0, i32 4), align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %113
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* @current_time, align 8
  %126 = sub nsw i64 %124, %125
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @settings, i32 0, i32 1), align 8
  %128 = icmp sle i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i32, i32* @TEMP_LRU, align 4
  %131 = load i32, i32* %16, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %16, align 4
  br label %145

133:                                              ; preds = %123, %113
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @settings, i32 0, i32 3), align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32, i32* @HOT_LRU, align 4
  %138 = load i32, i32* %16, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %16, align 4
  br label %144

140:                                              ; preds = %133
  %141 = load i32, i32* @COLD_LRU, align 4
  %142 = load i32, i32* %16, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %16, align 4
  br label %144

144:                                              ; preds = %140, %136
  br label %145

145:                                              ; preds = %144, %129
  %146 = load i32, i32* %16, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %150 = call i32 @DEBUG_REFCNT(%struct.TYPE_12__* %149, i8 signext 42)
  %151 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @settings, i32 0, i32 2), align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = load i32, i32* @ITEM_CAS, align 4
  br label %156

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %153
  %157 = phi i32 [ %154, %153 ], [ 0, %155 ]
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load i64, i64* %12, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = load i32, i32* @ITEM_CFLAGS, align 4
  br label %167

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166, %164
  %168 = phi i32 [ %165, %164 ], [ 0, %166 ]
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load i64, i64* %8, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %180 = call i32 @ITEM_key(%struct.TYPE_12__* %179)
  %181 = load i8*, i8** %7, align 8
  %182 = load i64, i64* %8, align 8
  %183 = call i32 (i32, ...) @memcpy(i32 %180, i8* %181, i64 %182)
  %184 = load i64, i64* %10, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 4
  store i64 %184, i64* %186, align 8
  %187 = load i64, i64* %12, align 8
  %188 = icmp ugt i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %167
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %191 = call i32 @ITEM_suffix(%struct.TYPE_12__* %190)
  %192 = call i32 (i32, ...) @memcpy(i32 %191, i32* %9, i64 4)
  br label %193

193:                                              ; preds = %189, %167
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @ITEM_CHUNKED, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %218

200:                                              ; preds = %193
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %202 = call i64 @ITEM_schunk(%struct.TYPE_12__* %201)
  %203 = inttoptr i64 %202 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %203, %struct.TYPE_11__** %19, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 5
  store i64 0, i64* %205, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 4
  store i64 0, i64* %207, align 8
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 3
  store i64 0, i64* %209, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 2
  store i64 0, i64* %211, align 8
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  store %struct.TYPE_12__* %212, %struct.TYPE_12__** %214, align 8
  %215 = load i32, i32* %17, align 4
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %200, %193
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 5
  store i64 0, i64* %220, align 8
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %221, %struct.TYPE_12__** %6, align 8
  br label %222

222:                                              ; preds = %218, %84, %41, %22
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  ret %struct.TYPE_12__* %223
}

declare dso_local i64 @item_make_header(i64, i32, i32, i8*, i64*) #1

declare dso_local i32 @slabs_clsid(i32) #1

declare dso_local %struct.TYPE_12__* @do_item_alloc_pull(i64, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DEBUG_REFCNT(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @memcpy(i32, ...) #1

declare dso_local i32 @ITEM_key(%struct.TYPE_12__*) #1

declare dso_local i32 @ITEM_suffix(%struct.TYPE_12__*) #1

declare dso_local i64 @ITEM_schunk(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
