; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_cb.c_open_cb.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_cb.c_open_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64 (i32, i32)*, i32, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.priv* }

@STREAM_UNSUPPORTED = common dso_local global i32 0, align 4
@MPV_ERROR_LOADING_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unknown error from user callback\0A\00", align 1
@STREAM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"required read_fn or close_fn callbacks not set.\0A\00", align 1
@seek = common dso_local global i32 0, align 4
@fill_buffer = common dso_local global i32 0, align 4
@get_size = common dso_local global i32 0, align 4
@s_close = common dso_local global i32 0, align 4
@STREAM_OK = common dso_local global i32 0, align 4
@p = common dso_local global %struct.priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @open_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_cb(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i32, %struct.TYPE_11__*)*, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = load %struct.priv*, %struct.priv** %4, align 8
  %13 = ptrtoint %struct.priv* %12 to i32
  %14 = call %struct.priv* @talloc_ptrtype(%struct.TYPE_10__* %11, i32 %13)
  store %struct.priv* %14, %struct.priv** %4, align 8
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 9
  store %struct.priv* %15, %struct.priv** %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @bstr0(i32 %20)
  %22 = call i32 @mp_split_proto(i32 %21, i32* null)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @bstrto0(%struct.TYPE_10__* %23, i32 %24)
  store i8* %25, i8** %6, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i32 (i8*, i32, %struct.TYPE_11__*)** %8 to i32 (i8*, i32, %struct.TYPE_11__*)*
  %31 = call i32 @mp_streamcb_lookup(i32 %28, i8* %29, i8** %7, i32 (i8*, i32, %struct.TYPE_11__*)* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %34, i32* %2, align 4
  br label %141

35:                                               ; preds = %1
  %36 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 40, i1 false)
  %37 = load i32 (i8*, i32, %struct.TYPE_11__*)*, i32 (i8*, i32, %struct.TYPE_11__*)** %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %37(i8* %38, i32 %41, %struct.TYPE_11__* %9)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @MPV_ERROR_LOADING_FAILED, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = call i32 @MP_WARN(%struct.TYPE_10__* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, i32* @STREAM_ERROR, align 4
  store i32 %53, i32* %2, align 4
  br label %141

54:                                               ; preds = %35
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = call i32 @MP_FATAL(%struct.TYPE_10__* %63, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @STREAM_ERROR, align 4
  store i32 %65, i32* %2, align 4
  br label %141

66:                                               ; preds = %58
  %67 = load %struct.priv*, %struct.priv** %4, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 0
  %69 = bitcast %struct.TYPE_11__* %68 to i8*
  %70 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 40, i1 false)
  %71 = load %struct.priv*, %struct.priv** %4, align 8
  %72 = getelementptr inbounds %struct.priv, %struct.priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64 (i32, i32)*, i64 (i32, i32)** %73, align 8
  %75 = icmp ne i64 (i32, i32)* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %66
  %77 = load %struct.priv*, %struct.priv** %4, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64 (i32, i32)*, i64 (i32, i32)** %79, align 8
  %81 = load %struct.priv*, %struct.priv** %4, align 8
  %82 = getelementptr inbounds %struct.priv, %struct.priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 %80(i32 %84, i32 0)
  %86 = icmp sge i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load i32, i32* @seek, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %87, %76, %66
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  %96 = load i32, i32* @fill_buffer, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @get_size, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @s_close, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.priv*, %struct.priv** %4, align 8
  %106 = getelementptr inbounds %struct.priv, %struct.priv* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %139

110:                                              ; preds = %93
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %110
  %116 = load %struct.priv*, %struct.priv** %4, align 8
  %117 = call i32 @mp_cancel_new(%struct.priv* %116)
  %118 = load %struct.priv*, %struct.priv** %4, align 8
  %119 = getelementptr inbounds %struct.priv, %struct.priv* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load %struct.priv*, %struct.priv** %4, align 8
  %121 = getelementptr inbounds %struct.priv, %struct.priv* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @mp_cancel_set_parent(i32 %122, i64 %125)
  %127 = load %struct.priv*, %struct.priv** %4, align 8
  %128 = getelementptr inbounds %struct.priv, %struct.priv* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.priv*, %struct.priv** %4, align 8
  %131 = getelementptr inbounds %struct.priv, %struct.priv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.priv*, %struct.priv** %4, align 8
  %135 = getelementptr inbounds %struct.priv, %struct.priv* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @mp_cancel_set_cb(i32 %129, i64 %133, i32 %137)
  br label %139

139:                                              ; preds = %115, %110, %93
  %140 = load i32, i32* @STREAM_OK, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %62, %52, %33
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.priv* @talloc_ptrtype(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mp_split_proto(i32, i32*) #1

declare dso_local i32 @bstr0(i32) #1

declare dso_local i8* @bstrto0(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mp_streamcb_lookup(i32, i8*, i8**, i32 (i8*, i32, %struct.TYPE_11__*)*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MP_WARN(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @MP_FATAL(%struct.TYPE_10__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_cancel_new(%struct.priv*) #1

declare dso_local i32 @mp_cancel_set_parent(i32, i64) #1

declare dso_local i32 @mp_cancel_set_cb(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
