; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_core_module.c_ngx_http_core_find_static_location.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_core_module.c_ngx_http_core_find_static_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_11__*, i64, %struct.TYPE_14__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"test location: \22%*s\22\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @ngx_http_core_find_static_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_core_find_static_location(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %19, i64* %10, align 8
  br label %20

20:                                               ; preds = %169, %102, %84, %71, %2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = icmp eq %struct.TYPE_14__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %3, align 8
  br label %173

25:                                               ; preds = %20
  %26 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ngx_log_debug2(i32 %26, i32 %31, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %37)
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ule i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %25
  %45 = load i64, i64* %7, align 8
  br label %50

46:                                               ; preds = %25
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi i64 [ %45, %44 ], [ %49, %46 ]
  store i64 %51, i64* %8, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @ngx_filename_cmp(i32* %52, i32 %55, i64 %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %50
  %61 = load i64, i64* %9, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  br label %71

67:                                               ; preds = %60
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi %struct.TYPE_14__* [ %66, %63 ], [ %70, %67 ]
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %5, align 8
  br label %20

73:                                               ; preds = %50
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ugt i64 %74, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %73
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = icmp ne %struct.TYPE_12__* %82, null
  br i1 %83, label %84, label %102

84:                                               ; preds = %79
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %92, i64* %10, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %5, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 %96
  store i32* %98, i32** %6, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %7, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %7, align 8
  br label %20

102:                                              ; preds = %79
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** %5, align 8
  br label %20

106:                                              ; preds = %73
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %135

112:                                              ; preds = %106
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = icmp ne %struct.TYPE_11__* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i64, i64* @NGX_OK, align 8
  store i64 %125, i64* %3, align 8
  br label %173

126:                                              ; preds = %112
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %134, i64* %3, align 8
  br label %173

135:                                              ; preds = %106
  %136 = load i64, i64* %7, align 8
  %137 = add i64 %136, 1
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %137, %140
  br i1 %141, label %142, label %169

142:                                              ; preds = %135
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %169

147:                                              ; preds = %142
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = icmp ne %struct.TYPE_11__* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  br label %164

158:                                              ; preds = %147
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  br label %164

164:                                              ; preds = %158, %152
  %165 = phi i32 [ %157, %152 ], [ %163, %158 ]
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load i64, i64* @NGX_DONE, align 8
  store i64 %168, i64* %10, align 8
  br label %169

169:                                              ; preds = %164, %142, %135
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %171, align 8
  store %struct.TYPE_14__* %172, %struct.TYPE_14__** %5, align 8
  br label %20

173:                                              ; preds = %126, %117, %23
  %174 = load i64, i64* %3, align 8
  ret i64 %174
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i32) #1

declare dso_local i64 @ngx_filename_cmp(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
