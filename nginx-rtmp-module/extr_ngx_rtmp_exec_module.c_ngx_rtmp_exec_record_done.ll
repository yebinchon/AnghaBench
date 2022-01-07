; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_record_done.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_record_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_23__, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_23__, %struct.TYPE_17__, %struct.TYPE_23__ }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_17__ = type { i8*, i32 }
%struct.TYPE_22__ = type { i32*, i32 }

@ngx_rtmp_exec_module = common dso_local global i32 0, align 4
@NGX_RTMP_EXEC_RECORD_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"record_done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)* @ngx_rtmp_exec_record_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_exec_record_done(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %160

15:                                               ; preds = %2
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = load i32, i32* @ngx_rtmp_exec_module, align 4
  %18 = call %struct.TYPE_22__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_19__* %16, i32 %17)
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %9, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %20 = icmp eq %struct.TYPE_22__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %15
  br label %160

27:                                               ; preds = %21
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = load i32, i32* @ngx_rtmp_exec_module, align 4
  %30 = call %struct.TYPE_21__* @ngx_rtmp_get_module_ctx(%struct.TYPE_19__* %28, i32 %29)
  store %struct.TYPE_21__* %30, %struct.TYPE_21__** %8, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %32 = icmp eq %struct.TYPE_21__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %160

34:                                               ; preds = %27
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = bitcast %struct.TYPE_23__* %36 to i8*
  %40 = bitcast %struct.TYPE_23__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = bitcast %struct.TYPE_23__* %42 to i8*
  %46 = bitcast %struct.TYPE_23__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  store i32 0, i32* %56, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %88, %34
  %62 = load i32, i32* %7, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %61
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  store i8 %73, i8* %5, align 1
  %74 = load i8, i8* %5, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 47
  br i1 %76, label %81, label %77

77:                                               ; preds = %64
  %78 = load i8, i8* %5, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 92
  br i1 %80, label %81, label %87

81:                                               ; preds = %77, %64
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 8
  br label %91

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %7, align 4
  br label %61

91:                                               ; preds = %81, %61
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  store i8* %98, i8** %101, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = bitcast %struct.TYPE_18__* %112 to i8*
  %116 = bitcast %struct.TYPE_18__* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %115, i8* align 8 %116, i64 16, i1 false)
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %143, %91
  %122 = load i32, i32* %6, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %121
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 46
  br i1 %135, label %136, label %142

136:                                              ; preds = %124
  %137 = load i32, i32* %6, align 4
  %138 = sub nsw i32 %137, 1
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 8
  br label %146

142:                                              ; preds = %124
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %6, align 4
  br label %121

146:                                              ; preds = %136, %121
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @NGX_RTMP_EXEC_RECORD_DONE, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = call i32 @ngx_rtmp_exec_unmanaged(%struct.TYPE_19__* %147, i32* %152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  %156 = call i32 @ngx_str_null(%struct.TYPE_23__* %155)
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = call i32 @ngx_str_null(%struct.TYPE_23__* %158)
  br label %160

160:                                              ; preds = %146, %33, %26, %14
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %163 = call i32 @next_record_done(%struct.TYPE_19__* %161, %struct.TYPE_20__* %162)
  ret i32 %163
}

declare dso_local %struct.TYPE_22__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_rtmp_get_module_ctx(%struct.TYPE_19__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_rtmp_exec_unmanaged(%struct.TYPE_19__*, i32*, i8*) #1

declare dso_local i32 @ngx_str_null(%struct.TYPE_23__*) #1

declare dso_local i32 @next_record_done(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
