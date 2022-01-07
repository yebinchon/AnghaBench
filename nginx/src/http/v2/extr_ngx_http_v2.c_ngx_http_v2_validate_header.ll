; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_validate_header.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_validate_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_16__ }
%struct.TYPE_12__ = type { i64, i8* }
%struct.TYPE_16__ = type { i8*, i64 }
%struct.TYPE_15__ = type { i64 }

@ngx_http_core_module = common dso_local global i32 0, align 4
@LF = common dso_local global i8 0, align 1
@CR = common dso_local global i8 0, align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"client sent invalid header name: \22%V\22\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"client sent header \22%V\22 with invalid value: \22%V\22\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)* @ngx_http_v2_validate_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_v2_validate_header(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = load i32, i32* @ngx_http_core_module, align 4
  %13 = call %struct.TYPE_15__* @ngx_http_get_module_srv_conf(%struct.TYPE_14__* %11, i32 %12)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %8, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 58
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %110, %2
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %31, label %113

31:                                               ; preds = %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %6, align 1
  %39 = load i8, i8* %6, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sge i32 %40, 97
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i8, i8* %6, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sle i32 %44, 122
  br i1 %45, label %67, label %46

46:                                               ; preds = %42, %31
  %47 = load i8, i8* %6, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %67, label %50

50:                                               ; preds = %46
  %51 = load i8, i8* %6, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sge i32 %52, 48
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8, i8* %6, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sle i32 %56, 57
  br i1 %57, label %67, label %58

58:                                               ; preds = %54, %50
  %59 = load i8, i8* %6, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 95
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %54, %46, %42
  br label %110

68:                                               ; preds = %62, %58
  %69 = load i8, i8* %6, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %96, label %72

72:                                               ; preds = %68
  %73 = load i8, i8* %6, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8, i8* @LF, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %96, label %78

78:                                               ; preds = %72
  %79 = load i8, i8* %6, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8, i8* @CR, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %78
  %85 = load i8, i8* %6, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 58
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load i8, i8* %6, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp sge i32 %90, 65
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = load i8, i8* %6, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp sle i32 %94, 90
  br i1 %95, label %96, label %107

96:                                               ; preds = %92, %84, %78, %72, %68
  %97 = load i32, i32* @NGX_LOG_INFO, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = call i32 (i32, i32, i32, i8*, %struct.TYPE_16__*, ...) @ngx_log_error(i32 %97, i32 %102, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %104)
  %106 = load i32, i32* @NGX_ERROR, align 4
  store i32 %106, i32* %3, align 4
  br label %163

107:                                              ; preds = %92, %88
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %67
  %111 = load i64, i64* %7, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %7, align 8
  br label %24

113:                                              ; preds = %24
  store i64 0, i64* %7, align 8
  br label %114

114:                                              ; preds = %158, %113
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %115, %119
  br i1 %120, label %121, label %161

121:                                              ; preds = %114
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i8, i8* %127, align 1
  store i8 %128, i8* %6, align 1
  %129 = load i8, i8* %6, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %121
  %133 = load i8, i8* %6, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8, i8* @LF, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = load i8, i8* %6, align 1
  %140 = sext i8 %139 to i32
  %141 = load i8, i8* @CR, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %138, %132, %121
  %145 = load i32, i32* @NGX_LOG_INFO, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = call i32 (i32, i32, i32, i8*, %struct.TYPE_16__*, ...) @ngx_log_error(i32 %145, i32 %150, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %152, %struct.TYPE_12__* %154)
  %156 = load i32, i32* @NGX_ERROR, align 4
  store i32 %156, i32* %3, align 4
  br label %163

157:                                              ; preds = %138
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %7, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %7, align 8
  br label %114

161:                                              ; preds = %114
  %162 = load i32, i32* @NGX_OK, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %144, %96
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.TYPE_15__* @ngx_http_get_module_srv_conf(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_16__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
