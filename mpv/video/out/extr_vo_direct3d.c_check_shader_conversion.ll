; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_check_shader_conversion.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_check_shader_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.mp_imgfmt_desc = type { i32, i64, i32 }

@MP_MAX_PLANES = common dso_local global i64 0, align 8
@MP_IMGFLAG_YUV_P = common dso_local global i32 0, align 4
@MP_IMGFLAG_NE = common dso_local global i32 0, align 4
@IMGFMT_Y8 = common dso_local global i32 0, align 4
@IMGFMT_Y16 = common dso_local global i32 0, align 4
@SHADER_420P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i64*)* @check_shader_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_shader_conversion(%struct.TYPE_4__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.mp_imgfmt_desc, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %14 = load i64, i64* @MP_MAX_PLANES, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %94

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  call void @mp_imgfmt_get_desc(%struct.mp_imgfmt_desc* sret %8, i32 %21)
  %22 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MP_IMGFLAG_YUV_P, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %93

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MP_IMGFLAG_NE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %93

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %8, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MP_MAX_PLANES, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %94

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %8, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 16
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %39
  store i32 0, i32* %4, align 4
  br label %94

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 8
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %94

60:                                               ; preds = %54, %48
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @IMGFMT_Y8, align 4
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @IMGFMT_Y16, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %11, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i64 @check_format(%struct.TYPE_4__* %69, i32 %70, i32 1)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %67
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %87, %74
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %8, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load i64, i64* %12, align 8
  %83 = load i64*, i64** %7, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 %82, i64* %86, align 8
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %75

90:                                               ; preds = %75
  %91 = load i32, i32* @SHADER_420P, align 4
  store i32 %91, i32* %4, align 4
  br label %94

92:                                               ; preds = %67
  br label %93

93:                                               ; preds = %92, %27, %20
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %90, %59, %47, %38, %19
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local void @mp_imgfmt_get_desc(%struct.mp_imgfmt_desc* sret, i32) #1

declare dso_local i64 @check_format(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
