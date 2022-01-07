; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_frame_ref.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_frame_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_frame = type { i32, i32**, i32* }

@destroy_frame = common dso_local global i32 0, align 4
@new = common dso_local global %struct.vo_frame* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vo_frame* @vo_frame_ref(%struct.vo_frame* %0) #0 {
  %2 = alloca %struct.vo_frame*, align 8
  %3 = alloca %struct.vo_frame*, align 8
  %4 = alloca %struct.vo_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.vo_frame* %0, %struct.vo_frame** %3, align 8
  %6 = load %struct.vo_frame*, %struct.vo_frame** %3, align 8
  %7 = icmp ne %struct.vo_frame* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.vo_frame* null, %struct.vo_frame** %2, align 8
  br label %72

9:                                                ; preds = %1
  %10 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %11 = ptrtoint %struct.vo_frame* %10 to i32
  %12 = call %struct.vo_frame* @talloc_ptrtype(i32* null, i32 %11)
  store %struct.vo_frame* %12, %struct.vo_frame** %4, align 8
  %13 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %14 = load i32, i32* @destroy_frame, align 4
  %15 = call i32 @talloc_set_destructor(%struct.vo_frame* %13, i32 %14)
  %16 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %17 = load %struct.vo_frame*, %struct.vo_frame** %3, align 8
  %18 = bitcast %struct.vo_frame* %16 to i8*
  %19 = bitcast %struct.vo_frame* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %52, %9
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.vo_frame*, %struct.vo_frame** %3, align 8
  %23 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load %struct.vo_frame*, %struct.vo_frame** %3, align 8
  %28 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @mp_image_new_ref(i32* %33)
  %35 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %36 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  store i32* %34, i32** %40, align 8
  %41 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %42 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %26
  %50 = call i32 (...) @abort() #4
  unreachable

51:                                               ; preds = %26
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %20

55:                                               ; preds = %20
  %56 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %57 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %62 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  br label %67

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %60
  %68 = phi i32* [ %65, %60 ], [ null, %66 ]
  %69 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %70 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  store %struct.vo_frame* %71, %struct.vo_frame** %2, align 8
  br label %72

72:                                               ; preds = %67, %8
  %73 = load %struct.vo_frame*, %struct.vo_frame** %2, align 8
  ret %struct.vo_frame* %73
}

declare dso_local %struct.vo_frame* @talloc_ptrtype(i32*, i32) #1

declare dso_local i32 @talloc_set_destructor(%struct.vo_frame*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @mp_image_new_ref(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
