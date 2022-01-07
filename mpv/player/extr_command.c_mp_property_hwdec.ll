; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_hwdec.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_hwdec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_4__ = type { double, %struct.track*** }
%struct.track = type { %struct.mp_decoder_wrapper* }
%struct.mp_decoder_wrapper = type { i32 }

@STREAM_VIDEO = common dso_local global i64 0, align 8
@M_PROPERTY_SET = common dso_local global i32 0, align 4
@M_PROPERTY_GET = common dso_local global i32 0, align 4
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@VDCTRL_REINIT = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@MPSEEK_ABSOLUTE = common dso_local global i32 0, align 4
@MPSEEK_EXACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_hwdec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_hwdec(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.track*, align 8
  %12 = alloca %struct.mp_decoder_wrapper*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %10, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.track***, %struct.track**** %20, align 8
  %22 = getelementptr inbounds %struct.track**, %struct.track*** %21, i64 0
  %23 = load %struct.track**, %struct.track*** %22, align 8
  %24 = load i64, i64* @STREAM_VIDEO, align 8
  %25 = getelementptr inbounds %struct.track*, %struct.track** %23, i64 %24
  %26 = load %struct.track*, %struct.track** %25, align 8
  store %struct.track* %26, %struct.track** %11, align 8
  %27 = load %struct.track*, %struct.track** %11, align 8
  %28 = icmp ne %struct.track* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.track*, %struct.track** %11, align 8
  %31 = getelementptr inbounds %struct.track, %struct.track* %30, i32 0, i32 0
  %32 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %31, align 8
  br label %34

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi %struct.mp_decoder_wrapper* [ %32, %29 ], [ null, %33 ]
  store %struct.mp_decoder_wrapper* %35, %struct.mp_decoder_wrapper** %12, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @M_PROPERTY_SET, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %34
  %40 = load i8*, i8** %9, align 8
  %41 = bitcast i8* %40 to i8**
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = load %struct.m_property*, %struct.m_property** %7, align 8
  %45 = load i32, i32* @M_PROPERTY_GET, align 4
  %46 = bitcast i8** %14 to i8*
  %47 = call i32 @mp_property_generic_option(%struct.TYPE_4__* %43, %struct.m_property* %44, i32 %45, i8* %46)
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i8* null, i8** %14, align 8
  br label %50

50:                                               ; preds = %49, %39
  %51 = load i8*, i8** %14, align 8
  %52 = call i32 @bstr0(i8* %51)
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @bstr0(i8* %53)
  %55 = call i32 @bstr_equals(i32 %52, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = load %struct.m_property*, %struct.m_property** %7, align 8
  %58 = load i32, i32* @M_PROPERTY_SET, align 4
  %59 = bitcast i8** %13 to i8*
  %60 = call i32 @mp_property_generic_option(%struct.TYPE_4__* %56, %struct.m_property* %57, i32 %58, i8* %59)
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @talloc_free(i8* %61)
  %63 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %12, align 8
  %64 = icmp ne %struct.mp_decoder_wrapper* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %50
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %50
  %69 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %69, i32* %5, align 4
  br label %94

70:                                               ; preds = %65
  %71 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %12, align 8
  %72 = load i32, i32* @VDCTRL_REINIT, align 4
  %73 = call i32 @mp_decoder_wrapper_control(%struct.mp_decoder_wrapper* %71, i32 %72, i32* null)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load double, double* %75, align 8
  store double %76, double* %16, align 8
  %77 = load double, double* %16, align 8
  %78 = load double, double* @MP_NOPTS_VALUE, align 8
  %79 = fcmp une double %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = load i32, i32* @MPSEEK_ABSOLUTE, align 4
  %83 = load double, double* %16, align 8
  %84 = load i32, i32* @MPSEEK_EXACT, align 4
  %85 = call i32 @queue_seek(%struct.TYPE_4__* %81, i32 %82, double %83, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %80, %70
  %87 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %87, i32* %5, align 4
  br label %94

88:                                               ; preds = %34
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = load %struct.m_property*, %struct.m_property** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @mp_property_generic_option(%struct.TYPE_4__* %89, %struct.m_property* %90, i32 %91, i8* %92)
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %88, %86, %68
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @mp_property_generic_option(%struct.TYPE_4__*, %struct.m_property*, i32, i8*) #1

declare dso_local i32 @bstr_equals(i32, i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @mp_decoder_wrapper_control(%struct.mp_decoder_wrapper*, i32, i32*) #1

declare dso_local i32 @queue_seek(%struct.TYPE_4__*, i32, double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
