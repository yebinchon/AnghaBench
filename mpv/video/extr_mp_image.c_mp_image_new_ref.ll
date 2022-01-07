; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_new_ref.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_new_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32, %struct.TYPE_3__*, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32 }

@mp_image_destructor = common dso_local global i32 0, align 4
@MP_MAX_PLANES = common dso_local global i32 0, align 4
@new = common dso_local global %struct.mp_image* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_image* @mp_image_new_ref(%struct.mp_image* %0) #0 {
  %2 = alloca %struct.mp_image*, align 8
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mp_image* %0, %struct.mp_image** %3, align 8
  %8 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %9 = icmp ne %struct.mp_image* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.mp_image* null, %struct.mp_image** %2, align 8
  br label %95

11:                                               ; preds = %1
  %12 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %13 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %20 = call %struct.mp_image* @mp_image_new_copy(%struct.mp_image* %19)
  store %struct.mp_image* %20, %struct.mp_image** %2, align 8
  br label %95

21:                                               ; preds = %11
  %22 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %23 = ptrtoint %struct.mp_image* %22 to i32
  %24 = call %struct.mp_image* @talloc_ptrtype(i32* null, i32 %23)
  store %struct.mp_image* %24, %struct.mp_image** %4, align 8
  %25 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %26 = load i32, i32* @mp_image_destructor, align 4
  %27 = call i32 @talloc_set_destructor(%struct.mp_image* %25, i32 %26)
  %28 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %29 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %30 = bitcast %struct.mp_image* %28 to i8*
  %31 = bitcast %struct.mp_image* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 40, i1 false)
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %44, %21
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MP_MAX_PLANES, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %38 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @ref_buffer(i32* %5, i32* %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %32

47:                                               ; preds = %32
  %48 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %49 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %48, i32 0, i32 4
  %50 = call i32 @ref_buffer(i32* %5, i32* %49)
  %51 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %52 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %51, i32 0, i32 3
  %53 = call i32 @ref_buffer(i32* %5, i32* %52)
  %54 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %55 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %54, i32 0, i32 2
  %56 = call i32 @ref_buffer(i32* %5, i32* %55)
  %57 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %58 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %61 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call %struct.TYPE_3__* @talloc_memdup(i32* null, %struct.TYPE_3__* %59, i32 %65)
  %67 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %68 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %67, i32 0, i32 1
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %68, align 8
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %84, %47
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %72 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %77 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = call i32 @ref_buffer(i32* %5, i32* %82)
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %69

87:                                               ; preds = %69
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  store %struct.mp_image* %91, %struct.mp_image** %2, align 8
  br label %95

92:                                               ; preds = %87
  %93 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %94 = call i32 @talloc_free(%struct.mp_image* %93)
  store %struct.mp_image* null, %struct.mp_image** %2, align 8
  br label %95

95:                                               ; preds = %92, %90, %18, %10
  %96 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  ret %struct.mp_image* %96
}

declare dso_local %struct.mp_image* @mp_image_new_copy(%struct.mp_image*) #1

declare dso_local %struct.mp_image* @talloc_ptrtype(i32*, i32) #1

declare dso_local i32 @talloc_set_destructor(%struct.mp_image*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ref_buffer(i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @talloc_memdup(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
