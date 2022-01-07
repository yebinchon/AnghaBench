; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_ssl_module.c_ngx_http_ssl_compile_certificates.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_ssl_module.c_ngx_http_ssl_compile_certificates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32*, i32*, %struct.TYPE_15__* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_13__*)* @ngx_http_ssl_compile_certificates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_ssl_compile_certificates(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %46, %2
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call i64 @ngx_http_script_variables_count(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %51

38:                                               ; preds = %31
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i64 @ngx_http_script_variables_count(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %51

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %27

49:                                               ; preds = %27
  %50 = load i64, i64* @NGX_OK, align 8
  store i64 %50, i64* %3, align 8
  br label %156

51:                                               ; preds = %44, %37
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %9, align 8
  %56 = call i8* @ngx_array_create(i32 %54, i64 %55, i32 4)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  store i32* %57, i32** %59, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i64, i64* @NGX_ERROR, align 8
  store i64 %65, i64* %3, align 8
  br label %156

66:                                               ; preds = %51
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %9, align 8
  %71 = call i8* @ngx_array_create(i32 %69, i64 %70, i32 4)
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  store i32* %72, i32** %74, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i64, i64* @NGX_ERROR, align 8
  store i64 %80, i64* %3, align 8
  br label %156

81:                                               ; preds = %66
  store i64 0, i64* %8, align 8
  br label %82

82:                                               ; preds = %137, %81
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %140

86:                                               ; preds = %82
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = call i32* @ngx_array_push(i32* %89)
  store i32* %90, i32** %10, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i64, i64* @NGX_ERROR, align 8
  store i64 %94, i64* %3, align 8
  br label %156

95:                                               ; preds = %86
  %96 = call i32 @ngx_memzero(%struct.TYPE_14__* %11, i32 32)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  store %struct.TYPE_15__* %97, %struct.TYPE_15__** %98, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store i32* %101, i32** %102, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i32* %103, i32** %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_14__* %11)
  %107 = load i64, i64* @NGX_OK, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %95
  %110 = load i64, i64* @NGX_ERROR, align 8
  store i64 %110, i64* %3, align 8
  br label %156

111:                                              ; preds = %95
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = call i32* @ngx_array_push(i32* %114)
  store i32* %115, i32** %10, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i64, i64* @NGX_ERROR, align 8
  store i64 %119, i64* %3, align 8
  br label %156

120:                                              ; preds = %111
  %121 = call i32 @ngx_memzero(%struct.TYPE_14__* %11, i32 32)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %123, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store i32* %126, i32** %127, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i32* %128, i32** %129, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_14__* %11)
  %132 = load i64, i64* @NGX_OK, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %120
  %135 = load i64, i64* @NGX_ERROR, align 8
  store i64 %135, i64* %3, align 8
  br label %156

136:                                              ; preds = %120
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %8, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %8, align 8
  br label %82

140:                                              ; preds = %82
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32* @ngx_ssl_preserve_passwords(%struct.TYPE_15__* %141, i32* %144)
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  store i32* %145, i32** %147, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %140
  %153 = load i64, i64* @NGX_ERROR, align 8
  store i64 %153, i64* %3, align 8
  br label %156

154:                                              ; preds = %140
  %155 = load i64, i64* @NGX_OK, align 8
  store i64 %155, i64* %3, align 8
  br label %156

156:                                              ; preds = %154, %152, %134, %118, %109, %93, %79, %64, %49
  %157 = load i64, i64* %3, align 8
  ret i64 %157
}

declare dso_local i64 @ngx_http_script_variables_count(i32*) #1

declare dso_local i8* @ngx_array_create(i32, i64, i32) #1

declare dso_local i32* @ngx_array_push(i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_14__*) #1

declare dso_local i32* @ngx_ssl_preserve_passwords(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
