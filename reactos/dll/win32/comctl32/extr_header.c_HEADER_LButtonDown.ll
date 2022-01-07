; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_LButtonDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_LButtonDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i64, i64, i32, %struct.TYPE_12__*, i8*, i8*, %struct.TYPE_13__, i32, i8* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64 }

@HDS_BUTTONS = common dso_local global i32 0, align 4
@HHT_ONHEADER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Pressed item %d.\0A\00", align 1
@HHT_ONDIVIDER = common dso_local global i64 0, align 8
@HHT_ONDIVOPEN = common dso_local global i64 0, align 8
@HDN_BEGINTRACKW = common dso_local global i32 0, align 4
@HDI_WIDTH = common dso_local global i32 0, align 4
@HDS_FULLDRAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Begin tracking item %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i64, i64)* @HEADER_LButtonDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HEADER_LButtonDown(%struct.TYPE_14__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = call i32 @HEADER_InternalHitTest(%struct.TYPE_14__* %16, %struct.TYPE_13__* %7, i64* %8, i64* %9)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @HDS_BUTTONS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %3
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @HHT_ONHEADER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @SetCapture(i32 %31)
  %33 = load i8*, i8** @TRUE, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @TRUE, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 10
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @FALSE, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 8
  %47 = bitcast %struct.TYPE_13__* %46 to i8*
  %48 = bitcast %struct.TYPE_13__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 16, i1 false)
  %49 = load i8*, i8** @TRUE, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  store i8* %49, i8** %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @GetDC(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @HEADER_RefreshItem(%struct.TYPE_14__* %60, i64 %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @ReleaseDC(i32 %65, i32 %66)
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %68)
  br label %157

70:                                               ; preds = %24, %3
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @HHT_ONDIVIDER, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @HHT_ONDIVOPEN, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %156

78:                                               ; preds = %74, %70
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %11, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = load i32, i32* @HDN_BEGINTRACKW, align 4
  %88 = load i64, i64* %9, align 8
  %89 = load i32, i32* @HDI_WIDTH, align 4
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @HEADER_SendNotifyWithIntFieldT(%struct.TYPE_14__* %86, i32 %87, i64 %88, i32 %89, i64 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %155, label %93

93:                                               ; preds = %78
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @SetCapture(i32 %96)
  %98 = load i8*, i8** @TRUE, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 7
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** @TRUE, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 6
  store i8* %101, i8** %103, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub i64 %114, %116
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @HDS_FULLDRAG, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %152, label %126

126:                                              ; preds = %93
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 3
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @GetDC(i32 %139)
  store i32 %140, i32* %10, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @HEADER_DrawTrackLine(%struct.TYPE_14__* %141, i32 %142, i64 %145)
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @ReleaseDC(i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %126, %93
  %153 = load i64, i64* %9, align 8
  %154 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %153)
  br label %155

155:                                              ; preds = %152, %78
  br label %156

156:                                              ; preds = %155, %74
  br label %157

157:                                              ; preds = %156, %28
  ret i32 0
}

declare dso_local i32 @HEADER_InternalHitTest(%struct.TYPE_14__*, %struct.TYPE_13__*, i64*, i64*) #1

declare dso_local i32 @SetCapture(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @HEADER_RefreshItem(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @HEADER_SendNotifyWithIntFieldT(%struct.TYPE_14__*, i32, i64, i32, i64) #1

declare dso_local i32 @HEADER_DrawTrackLine(%struct.TYPE_14__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
