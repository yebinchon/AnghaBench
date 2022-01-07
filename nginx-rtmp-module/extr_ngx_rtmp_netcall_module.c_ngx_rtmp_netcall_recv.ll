; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_netcall_module.c_ngx_rtmp_netcall_recv.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_netcall_module.c_ngx_rtmp_netcall_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i64 (%struct.TYPE_18__*, i64, i64)*, i32, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 (i32, %struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)*, i32, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64, i64, i64, i64 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @ngx_rtmp_netcall_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_netcall_recv(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %4, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %3, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %230

19:                                               ; preds = %1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = call i32 @ngx_rtmp_netcall_close(%struct.TYPE_18__* %27)
  br label %230

29:                                               ; preds = %19
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %36 = call i32 @ngx_del_timer(%struct.TYPE_17__* %35)
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %224, %37
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  %42 = icmp eq %struct.TYPE_19__* %41, null
  br i1 %42, label %59, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %50, %57
  br i1 %58, label %59, label %153

59:                                               ; preds = %43, %38
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = icmp ne %struct.TYPE_19__* %62, null
  br i1 %63, label %64, label %104

64:                                               ; preds = %59
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64 (i32, %struct.TYPE_19__*)*, i64 (i32, %struct.TYPE_19__*)** %66, align 8
  %68 = icmp ne i64 (i32, %struct.TYPE_19__*)* %67, null
  br i1 %68, label %69, label %104

69:                                               ; preds = %64
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i64 (i32, %struct.TYPE_19__*)*, i64 (i32, %struct.TYPE_19__*)** %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = call i64 %77(i32 %80, %struct.TYPE_19__* %83)
  %85 = load i64, i64* @NGX_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %74
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = call i32 @ngx_rtmp_netcall_close(%struct.TYPE_18__* %88)
  br label %230

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90, %69
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  store %struct.TYPE_20__* %96, %struct.TYPE_20__** %7, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  store i64 %99, i64* %103, align 8
  br label %152

104:                                              ; preds = %64, %59
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call %struct.TYPE_19__* @ngx_alloc_chain_link(i32 %107)
  store %struct.TYPE_19__* %108, %struct.TYPE_19__** %5, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %110 = icmp eq %struct.TYPE_19__* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %113 = call i32 @ngx_rtmp_netcall_close(%struct.TYPE_18__* %112)
  br label %230

114:                                              ; preds = %104
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %116, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = call %struct.TYPE_20__* @ngx_create_temp_buf(i32 %119, i32 %122)
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  store %struct.TYPE_20__* %123, %struct.TYPE_20__** %125, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = icmp eq %struct.TYPE_20__* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %114
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %132 = call i32 @ngx_rtmp_netcall_close(%struct.TYPE_18__* %131)
  br label %230

133:                                              ; preds = %114
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %135, align 8
  %137 = icmp eq %struct.TYPE_19__* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 3
  store %struct.TYPE_19__* %139, %struct.TYPE_19__** %141, align 8
  br label %148

142:                                              ; preds = %133
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 1
  store %struct.TYPE_19__* %143, %struct.TYPE_19__** %147, align 8
  br label %148

148:                                              ; preds = %142, %138
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 4
  store %struct.TYPE_19__* %149, %struct.TYPE_19__** %151, align 8
  br label %152

152:                                              ; preds = %148, %91
  br label %153

153:                                              ; preds = %152, %43
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %157, align 8
  store %struct.TYPE_20__* %158, %struct.TYPE_20__** %7, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  %161 = load i64 (%struct.TYPE_18__*, i64, i64)*, i64 (%struct.TYPE_18__*, i64, i64)** %160, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %168, %171
  %173 = call i64 %161(%struct.TYPE_18__* %162, i64 %165, i64 %172)
  store i64 %173, i64* %6, align 8
  %174 = load i64, i64* %6, align 8
  %175 = load i64, i64* @NGX_ERROR, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %180, label %177

177:                                              ; preds = %153
  %178 = load i64, i64* %6, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177, %153
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %182 = call i32 @ngx_rtmp_netcall_close(%struct.TYPE_18__* %181)
  br label %230

183:                                              ; preds = %177
  %184 = load i64, i64* %6, align 8
  %185 = load i64, i64* @NGX_AGAIN, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %224

187:                                              ; preds = %183
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)** %189, align 8
  %191 = icmp ne i64 (%struct.TYPE_19__*)* %190, null
  br i1 %191, label %192, label %210

192:                                              ; preds = %187
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %194, align 8
  %196 = icmp ne %struct.TYPE_19__* %195, null
  br i1 %196, label %197, label %210

197:                                              ; preds = %192
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)** %199, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %202, align 8
  %204 = call i64 %200(%struct.TYPE_19__* %203)
  %205 = load i64, i64* @NGX_AGAIN, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %197
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %209 = call i32 @ngx_rtmp_netcall_close(%struct.TYPE_18__* %208)
  br label %230

210:                                              ; preds = %197, %192, %187
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @ngx_add_timer(%struct.TYPE_17__* %211, i32 %214)
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %217 = call i64 @ngx_handle_read_event(%struct.TYPE_17__* %216, i32 0)
  %218 = load i64, i64* @NGX_OK, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %210
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %222 = call i32 @ngx_rtmp_netcall_close(%struct.TYPE_18__* %221)
  br label %223

223:                                              ; preds = %220, %210
  br label %230

224:                                              ; preds = %183
  %225 = load i64, i64* %6, align 8
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, %225
  store i64 %229, i64* %227, align 8
  br label %38

230:                                              ; preds = %223, %207, %180, %130, %111, %87, %24, %18
  ret void
}

declare dso_local i32 @ngx_rtmp_netcall_close(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_19__* @ngx_alloc_chain_link(i32) #1

declare dso_local %struct.TYPE_20__* @ngx_create_temp_buf(i32, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
