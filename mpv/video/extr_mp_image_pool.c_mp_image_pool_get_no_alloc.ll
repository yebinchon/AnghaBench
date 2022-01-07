; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image_pool.c_mp_image_pool_get_no_alloc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image_pool.c_mp_image_pool_get_no_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32, i32, i32, %struct.image_flags*, %struct.TYPE_3__** }
%struct.image_flags = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mp_image_pool = type { i32, i64, i64, %struct.mp_image** }

@MP_MAX_PLANES = common dso_local global i32 0, align 4
@AV_BUFFER_FLAG_READONLY = common dso_local global i32 0, align 4
@unref_image = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_image* @mp_image_pool_get_no_alloc(%struct.mp_image_pool* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca %struct.mp_image_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mp_image*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mp_image*, align 8
  %13 = alloca %struct.image_flags*, align 8
  %14 = alloca %struct.image_flags*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mp_image*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.image_flags*, align 8
  store %struct.mp_image_pool* %0, %struct.mp_image_pool** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.mp_image* null, %struct.mp_image** %10, align 8
  %19 = call i32 (...) @pool_lock()
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %96, %4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %23 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %99

26:                                               ; preds = %20
  %27 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %28 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %27, i32 0, i32 3
  %29 = load %struct.mp_image**, %struct.mp_image*** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mp_image*, %struct.mp_image** %29, i64 %31
  %33 = load %struct.mp_image*, %struct.mp_image** %32, align 8
  store %struct.mp_image* %33, %struct.mp_image** %12, align 8
  %34 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %35 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %34, i32 0, i32 3
  %36 = load %struct.image_flags*, %struct.image_flags** %35, align 8
  store %struct.image_flags* %36, %struct.image_flags** %13, align 8
  %37 = load %struct.image_flags*, %struct.image_flags** %13, align 8
  %38 = getelementptr inbounds %struct.image_flags, %struct.image_flags* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.image_flags*, %struct.image_flags** %13, align 8
  %42 = getelementptr inbounds %struct.image_flags, %struct.image_flags* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %95, label %45

45:                                               ; preds = %26
  %46 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %47 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %94

51:                                               ; preds = %45
  %52 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %53 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %94

57:                                               ; preds = %51
  %58 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %59 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %57
  %64 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %65 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %63
  %69 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %70 = icmp ne %struct.mp_image* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %73 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %72, i32 0, i32 3
  %74 = load %struct.image_flags*, %struct.image_flags** %73, align 8
  br label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi %struct.image_flags* [ %74, %71 ], [ null, %75 ]
  store %struct.image_flags* %77, %struct.image_flags** %14, align 8
  %78 = load %struct.image_flags*, %struct.image_flags** %14, align 8
  %79 = icmp ne %struct.image_flags* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load %struct.image_flags*, %struct.image_flags** %14, align 8
  %82 = getelementptr inbounds %struct.image_flags, %struct.image_flags* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.image_flags*, %struct.image_flags** %13, align 8
  %85 = getelementptr inbounds %struct.image_flags, %struct.image_flags* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80, %76
  %89 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  store %struct.mp_image* %89, %struct.mp_image** %10, align 8
  br label %90

90:                                               ; preds = %88, %80
  br label %93

91:                                               ; preds = %63
  %92 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  store %struct.mp_image* %92, %struct.mp_image** %10, align 8
  br label %99

93:                                               ; preds = %90
  br label %94

94:                                               ; preds = %93, %57, %51, %45
  br label %95

95:                                               ; preds = %94, %26
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %20

99:                                               ; preds = %91, %20
  %100 = call i32 (...) @pool_unlock()
  %101 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %102 = icmp ne %struct.mp_image* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  store %struct.mp_image* null, %struct.mp_image** %5, align 8
  br label %203

104:                                              ; preds = %99
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %128, %104
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @MP_MAX_PLANES, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %105
  %110 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %111 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %110, i32 0, i32 4
  %112 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %112, i64 %114
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = icmp ne %struct.TYPE_3__* %116, null
  %118 = xor i1 %117, true
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = icmp eq i32 %120, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  br label %128

128:                                              ; preds = %109
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %105

131:                                              ; preds = %105
  %132 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %133 = call %struct.mp_image* @mp_image_new_dummy_ref(%struct.mp_image* %132)
  store %struct.mp_image* %133, %struct.mp_image** %16, align 8
  %134 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %135 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %134, i32 0, i32 4
  %136 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %136, i64 0
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = call i64 @av_buffer_is_writable(%struct.TYPE_3__* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  br label %144

142:                                              ; preds = %131
  %143 = load i32, i32* @AV_BUFFER_FLAG_READONLY, align 4
  br label %144

144:                                              ; preds = %142, %141
  %145 = phi i32 [ 0, %141 ], [ %143, %142 ]
  store i32 %145, i32* %17, align 4
  %146 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %147 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %146, i32 0, i32 4
  %148 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %148, i64 0
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %154 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %153, i32 0, i32 4
  %155 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %155, i64 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @unref_image, align 4
  %161 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %162 = load i32, i32* %17, align 4
  %163 = call %struct.TYPE_3__* @av_buffer_create(i32 %152, i32 %159, i32 %160, %struct.mp_image* %161, i32 %162)
  %164 = load %struct.mp_image*, %struct.mp_image** %16, align 8
  %165 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %164, i32 0, i32 4
  %166 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %166, i64 0
  store %struct.TYPE_3__* %163, %struct.TYPE_3__** %167, align 8
  %168 = load %struct.mp_image*, %struct.mp_image** %16, align 8
  %169 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %168, i32 0, i32 4
  %170 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %170, i64 0
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = icmp ne %struct.TYPE_3__* %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %144
  %175 = load %struct.mp_image*, %struct.mp_image** %16, align 8
  %176 = call i32 @talloc_free(%struct.mp_image* %175)
  store %struct.mp_image* null, %struct.mp_image** %5, align 8
  br label %203

177:                                              ; preds = %144
  %178 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %179 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %178, i32 0, i32 3
  %180 = load %struct.image_flags*, %struct.image_flags** %179, align 8
  store %struct.image_flags* %180, %struct.image_flags** %18, align 8
  %181 = load %struct.image_flags*, %struct.image_flags** %18, align 8
  %182 = getelementptr inbounds %struct.image_flags, %struct.image_flags* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %177
  %186 = load %struct.image_flags*, %struct.image_flags** %18, align 8
  %187 = getelementptr inbounds %struct.image_flags, %struct.image_flags* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br label %190

190:                                              ; preds = %185, %177
  %191 = phi i1 [ false, %177 ], [ %189, %185 ]
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load %struct.image_flags*, %struct.image_flags** %18, align 8
  %195 = getelementptr inbounds %struct.image_flags, %struct.image_flags* %194, i32 0, i32 1
  store i32 1, i32* %195, align 4
  %196 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %197 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, 1
  store i64 %199, i64* %197, align 8
  %200 = load %struct.image_flags*, %struct.image_flags** %18, align 8
  %201 = getelementptr inbounds %struct.image_flags, %struct.image_flags* %200, i32 0, i32 2
  store i64 %199, i64* %201, align 8
  %202 = load %struct.mp_image*, %struct.mp_image** %16, align 8
  store %struct.mp_image* %202, %struct.mp_image** %5, align 8
  br label %203

203:                                              ; preds = %190, %174, %103
  %204 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  ret %struct.mp_image* %204
}

declare dso_local i32 @pool_lock(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pool_unlock(...) #1

declare dso_local %struct.mp_image* @mp_image_new_dummy_ref(%struct.mp_image*) #1

declare dso_local i64 @av_buffer_is_writable(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @av_buffer_create(i32, i32, i32, %struct.mp_image*, i32) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
