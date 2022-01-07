; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_realip_module.c_ngx_http_realip_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_realip_module.c_ngx_http_realip_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_24__*, %struct.TYPE_29__ }
%struct.TYPE_24__ = type { %struct.TYPE_32__*, i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_25__, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64, %struct.TYPE_33__*, %struct.TYPE_34__* }
%struct.TYPE_33__ = type { i64, i32, i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i64, i32, i32*, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64, i32* }

@ngx_http_realip_module = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_35__*)* @ngx_http_realip_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_realip_handler(%struct.TYPE_35__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_35__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_26__, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %3, align 8
  %16 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %17 = load i32, i32* @ngx_http_realip_module, align 4
  %18 = call %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_35__* %16, i32 %17)
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %15, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %24, i64* %2, align 8
  br label %197

25:                                               ; preds = %1
  %26 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %27 = call i32* @ngx_http_realip_get_module_ctx(%struct.TYPE_35__* %26)
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %31, i64* %2, align 8
  br label %197

32:                                               ; preds = %25
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %77 [
    i32 128, label %36
    i32 129, label %50
    i32 130, label %61
  ]

36:                                               ; preds = %32
  %37 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %39, align 8
  %41 = icmp eq %struct.TYPE_27__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %43, i64* %2, align 8
  br label %197

44:                                               ; preds = %36
  %45 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  store i32* %49, i32** %6, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %10, align 8
  br label %153

50:                                               ; preds = %32
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 1
  store %struct.TYPE_25__* %53, %struct.TYPE_25__** %10, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %59, i64* %2, align 8
  br label %197

60:                                               ; preds = %50
  store i32* null, i32** %6, align 8
  br label %153

61:                                               ; preds = %32
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %65, align 8
  %67 = icmp eq %struct.TYPE_32__* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %69, i64* %2, align 8
  br label %197

70:                                               ; preds = %61
  %71 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 1
  store i32* %76, i32** %6, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %10, align 8
  br label %153

77:                                               ; preds = %32
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  store %struct.TYPE_34__* %81, %struct.TYPE_34__** %11, align 8
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %83, align 8
  store %struct.TYPE_33__* %84, %struct.TYPE_33__** %12, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %8, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %5, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %4, align 8
  store i64 0, i64* %7, align 8
  br label %96

96:                                               ; preds = %148, %77
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp uge i64 %97, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %96
  %103 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %104, align 8
  %106 = icmp eq %struct.TYPE_34__* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %151

108:                                              ; preds = %102
  %109 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_34__*, %struct.TYPE_34__** %110, align 8
  store %struct.TYPE_34__* %111, %struct.TYPE_34__** %11, align 8
  %112 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %113, align 8
  store %struct.TYPE_33__* %114, %struct.TYPE_33__** %12, align 8
  store i64 0, i64* %7, align 8
  br label %115

115:                                              ; preds = %108, %96
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %118 = load i64, i64* %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %116, %121
  br i1 %122, label %123, label %147

123:                                              ; preds = %115
  %124 = load i64, i64* %5, align 8
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %124, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %123
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %5, align 8
  %140 = call i32 @ngx_strncmp(i32* %133, i32 %138, i64 %139)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %132
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %144 = load i64, i64* %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 1
  store i32* %146, i32** %6, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %10, align 8
  br label %154

147:                                              ; preds = %132, %123, %115
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %7, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %7, align 8
  br label %96

151:                                              ; preds = %107
  %152 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %152, i64* %2, align 8
  br label %197

153:                                              ; preds = %70, %60, %44
  br label %154

154:                                              ; preds = %153, %142
  %155 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %156, align 8
  store %struct.TYPE_24__* %157, %struct.TYPE_24__** %13, align 8
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  store i32 %160, i32* %161, align 4
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 1
  store i32 %164, i32* %165, align 4
  %166 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @ngx_http_get_forwarded_addr(%struct.TYPE_35__* %166, %struct.TYPE_26__* %9, %struct.TYPE_25__* %167, i32* %168, i32* %171, i32 %174)
  %176 = load i64, i64* @NGX_DECLINED, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %195

178:                                              ; preds = %154
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 130
  br i1 %182, label %183, label %192

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @ngx_inet_set_port(i32 %185, i32 %190)
  br label %192

192:                                              ; preds = %183, %178
  %193 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %194 = call i64 @ngx_http_realip_set_addr(%struct.TYPE_35__* %193, %struct.TYPE_26__* %9)
  store i64 %194, i64* %2, align 8
  br label %197

195:                                              ; preds = %154
  %196 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %196, i64* %2, align 8
  br label %197

197:                                              ; preds = %195, %192, %151, %68, %58, %42, %30, %23
  %198 = load i64, i64* %2, align 8
  ret i64 %198
}

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_35__*, i32) #1

declare dso_local i32* @ngx_http_realip_get_module_ctx(%struct.TYPE_35__*) #1

declare dso_local i32 @ngx_strncmp(i32*, i32, i64) #1

declare dso_local i64 @ngx_http_get_forwarded_addr(%struct.TYPE_35__*, %struct.TYPE_26__*, %struct.TYPE_25__*, i32*, i32*, i32) #1

declare dso_local i32 @ngx_inet_set_port(i32, i32) #1

declare dso_local i64 @ngx_http_realip_set_addr(%struct.TYPE_35__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
