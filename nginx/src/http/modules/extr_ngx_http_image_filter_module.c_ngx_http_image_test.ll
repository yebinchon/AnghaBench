; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_test.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i32* }

@NGX_HTTP_IMAGE_NONE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"image filter: \22%c%c\22\00", align 1
@NGX_HTTP_IMAGE_JPEG = common dso_local global i32 0, align 4
@NGX_HTTP_IMAGE_GIF = common dso_local global i32 0, align 4
@NGX_HTTP_IMAGE_PNG = common dso_local global i32 0, align 4
@NGX_HTTP_IMAGE_WEBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* @ngx_http_image_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_image_test(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = ptrtoint i32* %16 to i64
  %19 = ptrtoint i32* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 4
  %22 = icmp slt i64 %21, 16
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @NGX_HTTP_IMAGE_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %177

25:                                               ; preds = %2
  %26 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ngx_log_debug2(i32 %26, i32 %31, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 255
  br i1 %42, label %43, label %50

43:                                               ; preds = %25
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 216
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @NGX_HTTP_IMAGE_JPEG, align 4
  store i32 %49, i32* %3, align 4
  br label %177

50:                                               ; preds = %43, %25
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 71
  br i1 %54, label %55, label %88

55:                                               ; preds = %50
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 73
  br i1 %59, label %60, label %88

60:                                               ; preds = %55
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 70
  br i1 %64, label %65, label %88

65:                                               ; preds = %60
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 56
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 97
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 57
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 55
  br i1 %84, label %85, label %87

85:                                               ; preds = %80, %75
  %86 = load i32, i32* @NGX_HTTP_IMAGE_GIF, align 4
  store i32 %86, i32* %3, align 4
  br label %177

87:                                               ; preds = %80
  br label %174

88:                                               ; preds = %70, %65, %60, %55, %50
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 137
  br i1 %92, label %93, label %130

93:                                               ; preds = %88
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 80
  br i1 %97, label %98, label %130

98:                                               ; preds = %93
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 78
  br i1 %102, label %103, label %130

103:                                              ; preds = %98
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 71
  br i1 %107, label %108, label %130

108:                                              ; preds = %103
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 13
  br i1 %112, label %113, label %130

113:                                              ; preds = %108
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 5
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 10
  br i1 %117, label %118, label %130

118:                                              ; preds = %113
  %119 = load i32*, i32** %6, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 6
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 26
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 7
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 10
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* @NGX_HTTP_IMAGE_PNG, align 4
  store i32 %129, i32* %3, align 4
  br label %177

130:                                              ; preds = %123, %118, %113, %108, %103, %98, %93, %88
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 82
  br i1 %134, label %135, label %172

135:                                              ; preds = %130
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 73
  br i1 %139, label %140, label %172

140:                                              ; preds = %135
  %141 = load i32*, i32** %6, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 70
  br i1 %144, label %145, label %172

145:                                              ; preds = %140
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 70
  br i1 %149, label %150, label %172

150:                                              ; preds = %145
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 8
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 87
  br i1 %154, label %155, label %172

155:                                              ; preds = %150
  %156 = load i32*, i32** %6, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 9
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 69
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load i32*, i32** %6, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 10
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 66
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load i32*, i32** %6, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 11
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 80
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* @NGX_HTTP_IMAGE_WEBP, align 4
  store i32 %171, i32* %3, align 4
  br label %177

172:                                              ; preds = %165, %160, %155, %150, %145, %140, %135, %130
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173, %87
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* @NGX_HTTP_IMAGE_NONE, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %170, %128, %85, %48, %23
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
