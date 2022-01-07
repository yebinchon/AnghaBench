; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_file.c_ngx_conf_set_path_slot.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_file.c_ngx_conf_set_path_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64*, i32, i32, %struct.TYPE_19__ }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid value\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_conf_set_path_slot(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_20__**, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = bitcast i8* %21 to %struct.TYPE_20__**
  store %struct.TYPE_20__** %22, %struct.TYPE_20__*** %14, align 8
  %23 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %14, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %25 = icmp ne %struct.TYPE_20__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %164

27:                                               ; preds = %3
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_20__* @ngx_pcalloc(i32 %30, i32 40)
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %13, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %33 = icmp eq %struct.TYPE_20__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %35, i8** %4, align 8
  br label %164

36:                                               ; preds = %27
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  store %struct.TYPE_19__* %41, %struct.TYPE_19__** %10, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i64 1
  %46 = bitcast %struct.TYPE_19__* %43 to i8*
  %47 = bitcast %struct.TYPE_19__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %51, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %62, label %68

62:                                               ; preds = %36
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %36
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 4
  %74 = call i64 @ngx_conf_full_name(i32 %71, %struct.TYPE_19__* %73, i32 0)
  %75 = load i64, i64* @NGX_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %78, i8** %4, align 8
  br label %164

79:                                               ; preds = %68
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  store i64 0, i64* %11, align 8
  store i64 2, i64* %12, align 8
  br label %96

96:                                               ; preds = %138, %79
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ult i64 %97, %102
  br i1 %103, label %104, label %143

104:                                              ; preds = %96
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @ngx_atoi(i8* %109, i32 %114)
  store i64 %115, i64* %9, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* @NGX_ERROR, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %104
  %120 = load i64, i64* %9, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119, %104
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %164

123:                                              ; preds = %119
  %124 = load i64, i64* %9, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* %11, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  store i64 %124, i64* %129, align 8
  %130 = load i64, i64* %9, align 8
  %131 = add nsw i64 %130, 1
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %131
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 8
  br label %138

138:                                              ; preds = %123
  %139 = load i64, i64* %11, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %11, align 8
  %141 = load i64, i64* %12, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %12, align 8
  br label %96

143:                                              ; preds = %96
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %11, align 8
  %149 = add i64 10, %148
  %150 = icmp ugt i64 %147, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %164

152:                                              ; preds = %143
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %154 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %14, align 8
  store %struct.TYPE_20__* %153, %struct.TYPE_20__** %154, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %156 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %14, align 8
  %157 = call i64 @ngx_add_path(%struct.TYPE_21__* %155, %struct.TYPE_20__** %156)
  %158 = load i64, i64* @NGX_ERROR, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %161, i8** %4, align 8
  br label %164

162:                                              ; preds = %152
  %163 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %163, i8** %4, align 8
  br label %164

164:                                              ; preds = %162, %160, %151, %122, %77, %34, %26
  %165 = load i8*, i8** %4, align 8
  ret i8* %165
}

declare dso_local %struct.TYPE_20__* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_conf_full_name(i32, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_atoi(i8*, i32) #1

declare dso_local i64 @ngx_add_path(%struct.TYPE_21__*, %struct.TYPE_20__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
