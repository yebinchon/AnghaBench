; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_edition.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_edition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.demuxer* }
%struct.demuxer = type { i64, i32 }
%struct.m_option = type { i64 }

@M_PROPERTY_OK = common dso_local global i32 0, align 4
@PT_CURRENT_ENTRY = common dso_local global i32 0, align 4
@M_PROPERTY_GET_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_edition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_edition(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.demuxer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load %struct.demuxer*, %struct.demuxer** %17, align 8
  store %struct.demuxer* %18, %struct.demuxer** %11, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %25 = icmp ne %struct.demuxer* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %28 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26, %23, %4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = load %struct.m_property*, %struct.m_property** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @mp_property_generic_option(%struct.TYPE_4__* %32, %struct.m_property* %33, i32 %34, i8* %35)
  store i32 %36, i32* %5, align 4
  br label %90

37:                                               ; preds = %26
  %38 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %39 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %84 [
    i32 130, label %42
    i32 128, label %47
    i32 129, label %70
  ]

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = bitcast i8* %44 to i32*
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %46, i32* %5, align 4
  br label %90

47:                                               ; preds = %37
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %53 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %47
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @PT_CURRENT_ENTRY, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = call i32 @mp_wakeup_core(%struct.TYPE_4__* %66)
  br label %84

68:                                               ; preds = %47
  %69 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %69, i32* %5, align 4
  br label %90

70:                                               ; preds = %37
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = load %struct.m_property*, %struct.m_property** %7, align 8
  %73 = load i32, i32* @M_PROPERTY_GET_TYPE, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @mp_property_generic_option(%struct.TYPE_4__* %71, %struct.m_property* %72, i32 %73, i8* %74)
  store i32 %75, i32* %13, align 4
  %76 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %77 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, 1
  %80 = load i8*, i8** %9, align 8
  %81 = bitcast i8* %80 to %struct.m_option*
  %82 = getelementptr inbounds %struct.m_option, %struct.m_option* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %5, align 4
  br label %90

84:                                               ; preds = %37, %65
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %86 = load %struct.m_property*, %struct.m_property** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @mp_property_generic_option(%struct.TYPE_4__* %85, %struct.m_property* %86, i32 %87, i8* %88)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %84, %70, %68, %42, %31
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @mp_property_generic_option(%struct.TYPE_4__*, %struct.m_property*, i32, i8*) #1

declare dso_local i32 @mp_wakeup_core(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
