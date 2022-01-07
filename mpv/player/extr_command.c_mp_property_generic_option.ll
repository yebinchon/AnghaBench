; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_generic_option.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_generic_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i8* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.m_config_option = type { i32, %struct.m_option* }
%struct.m_option = type { i32 }

@M_PROPERTY_UNKNOWN = common dso_local global i32 0, align 4
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@M_PROPERTY_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@M_PROPERTY_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_generic_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_generic_option(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.m_config_option*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %10, align 8
  %15 = load %struct.m_property*, %struct.m_property** %7, align 8
  %16 = getelementptr inbounds %struct.m_property, %struct.m_property* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %11, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @bstr0(i8* %28)
  %30 = call %struct.m_config_option* @m_config_get_co_raw(i32 %27, i32 %29)
  store %struct.m_config_option* %30, %struct.m_config_option** %12, align 8
  br label %38

31:                                               ; preds = %4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @bstr0(i8* %35)
  %37 = call %struct.m_config_option* @m_config_get_co(i32 %34, i32 %36)
  store %struct.m_config_option* %37, %struct.m_config_option** %12, align 8
  br label %38

38:                                               ; preds = %31, %24
  %39 = load %struct.m_config_option*, %struct.m_config_option** %12, align 8
  %40 = icmp ne %struct.m_config_option* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @M_PROPERTY_UNKNOWN, align 4
  store i32 %42, i32* %5, align 4
  br label %85

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %83 [
    i32 129, label %45
    i32 130, label %54
    i32 128, label %71
  ]

45:                                               ; preds = %43
  %46 = load i8*, i8** %9, align 8
  %47 = bitcast i8* %46 to %struct.m_option*
  %48 = load %struct.m_config_option*, %struct.m_config_option** %12, align 8
  %49 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %48, i32 0, i32 1
  %50 = load %struct.m_option*, %struct.m_option** %49, align 8
  %51 = bitcast %struct.m_option* %47 to i8*
  %52 = bitcast %struct.m_option* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %53, i32* %5, align 4
  br label %85

54:                                               ; preds = %43
  %55 = load %struct.m_config_option*, %struct.m_config_option** %12, align 8
  %56 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @M_PROPERTY_NOT_IMPLEMENTED, align 4
  store i32 %60, i32* %5, align 4
  br label %85

61:                                               ; preds = %54
  %62 = load %struct.m_config_option*, %struct.m_config_option** %12, align 8
  %63 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %62, i32 0, i32 1
  %64 = load %struct.m_option*, %struct.m_option** %63, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load %struct.m_config_option*, %struct.m_config_option** %12, align 8
  %67 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @m_option_copy(%struct.m_option* %64, i8* %65, i32 %68)
  %70 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %70, i32* %5, align 4
  br label %85

71:                                               ; preds = %43
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.m_config_option*, %struct.m_config_option** %12, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @m_config_set_option_raw_direct(i32 %74, %struct.m_config_option* %75, i8* %76, i32 0)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @M_PROPERTY_ERROR, align 4
  store i32 %80, i32* %5, align 4
  br label %85

81:                                               ; preds = %71
  %82 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %82, i32* %5, align 4
  br label %85

83:                                               ; preds = %43
  %84 = load i32, i32* @M_PROPERTY_NOT_IMPLEMENTED, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %81, %79, %61, %59, %45, %41
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.m_config_option* @m_config_get_co_raw(i32, i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local %struct.m_config_option* @m_config_get_co(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @m_option_copy(%struct.m_option*, i8*, i32) #1

declare dso_local i32 @m_config_set_option_raw_direct(i32, %struct.m_config_option*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
