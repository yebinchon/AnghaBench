; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolver_srv_names_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolver_srv_names_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_13__*, i32, i8*, i32, %struct.TYPE_15__*, %struct.TYPE_16__*, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_17__*, i32, i8*, i32* }
%struct.TYPE_17__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i32 }

@NGX_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @ngx_resolver_srv_names_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_resolver_srv_names_handler(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 8
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 7
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %8, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %148

40:                                               ; preds = %1
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ngx_min(i32 %43, i32 %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 16
  %56 = trunc i64 %55 to i32
  %57 = call %struct.TYPE_17__* @ngx_resolver_calloc(i32* %50, i32 %56)
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %4, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = icmp eq %struct.TYPE_17__* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %40
  %61 = load i8*, i8** @NGX_ERROR, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  br label %149

64:                                               ; preds = %40
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = call %struct.TYPE_14__* @ngx_resolver_alloc(i32* %65, i32 %71)
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %6, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = icmp eq %struct.TYPE_14__* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %64
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = call i32 @ngx_resolver_free(i32* %76, %struct.TYPE_17__* %77)
  %79 = load i8*, i8** @NGX_ERROR, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  br label %149

82:                                               ; preds = %64
  store i64 0, i64* %3, align 8
  br label %83

83:                                               ; preds = %135, %82
  %84 = load i64, i64* %3, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = icmp ult i64 %84, %88
  br i1 %89, label %90, label %138

90:                                               ; preds = %83
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = load i64, i64* %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = load i64, i64* %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  store i32* %94, i32** %98, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = load i64, i64* %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = load i64, i64* %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %111 = load i64, i64* %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i64 %111
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = load i64, i64* %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %121 = load i64, i64* %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ngx_memcpy(%struct.TYPE_14__* %112, i32 %119, i32 %124)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %127 = load i64, i64* %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ngx_inet_set_port(i32* %130, i32 %133)
  br label %135

135:                                              ; preds = %90
  %136 = load i64, i64* %3, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %3, align 8
  br label %83

138:                                              ; preds = %83
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  store %struct.TYPE_17__* %139, %struct.TYPE_17__** %141, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %138, %1
  br label %149

149:                                              ; preds = %148, %75, %60
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %151 = call i32 @ngx_resolve_name_done(%struct.TYPE_16__* %150)
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %149
  %157 = load i32*, i32** %5, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %159 = call i32 @ngx_resolver_report_srv(i32* %157, %struct.TYPE_16__* %158)
  br label %160

160:                                              ; preds = %156, %149
  ret void
}

declare dso_local i32 @ngx_min(i32, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_resolver_calloc(i32*, i32) #1

declare dso_local %struct.TYPE_14__* @ngx_resolver_alloc(i32*, i32) #1

declare dso_local i32 @ngx_resolver_free(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @ngx_inet_set_port(i32*, i32) #1

declare dso_local i32 @ngx_resolve_name_done(%struct.TYPE_16__*) #1

declare dso_local i32 @ngx_resolver_report_srv(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
