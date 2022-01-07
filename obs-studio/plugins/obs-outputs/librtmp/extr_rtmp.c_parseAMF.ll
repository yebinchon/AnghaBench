; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_rtmp.c_parseAMF.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_rtmp.c_parseAMF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_22__ }
%struct.TYPE_20__ = type { i8*, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@AMF_BOOLEAN = common dso_local global i8* null, align 8
@AMF_STRING = common dso_local global i8* null, align 8
@AMF_NUMBER = common dso_local global i8* null, align 8
@AMF_NULL = common dso_local global i64 0, align 8
@AMF_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_20__*, i32*)* @parseAMF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseAMF(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = bitcast %struct.TYPE_21__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 56, i1 false)
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 58
  br i1 %21, label %22, label %86

22:                                               ; preds = %3
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %84 [
    i32 66, label %29
    i32 83, label %37
    i32 78, label %59
    i32 90, label %67
    i32 79, label %70
  ]

29:                                               ; preds = %22
  %30 = load i8*, i8** @AMF_BOOLEAN, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i8* @atoi(i8* %33)
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %85

37:                                               ; preds = %22
  %38 = load i8*, i8** @AMF_STRING, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sub nsw i64 %48, %53
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  br label %85

59:                                               ; preds = %22
  %60 = load i8*, i8** @AMF_NUMBER, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i8* @strtod(i8* %63, i32* null)
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %85

67:                                               ; preds = %22
  %68 = load i64, i64* @AMF_NULL, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  br label %85

70:                                               ; preds = %22
  %71 = load i8*, i8** %10, align 8
  %72 = call i8* @atoi(i8* %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i64, i64* @AMF_OBJECT, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  br label %83

79:                                               ; preds = %70
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %213

83:                                               ; preds = %76
  br label %85

84:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %213

85:                                               ; preds = %83, %67, %59, %37, %29
  br label %174

86:                                               ; preds = %3
  %87 = load i8*, i8** %11, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 58
  br i1 %91, label %92, label %172

92:                                               ; preds = %86
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 78
  br i1 %97, label %98, label %172

98:                                               ; preds = %92
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 3
  %101 = call i8* @strchr(i8* %100, i8 signext 58)
  store i8* %101, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104, %98
  store i32 -1, i32* %4, align 4
  br label %213

109:                                              ; preds = %104
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 3
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  %117 = ptrtoint i8* %114 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %10, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  switch i32 %128, label %170 [
    i32 66, label %129
    i32 83, label %137
    i32 78, label %159
    i32 79, label %167
  ]

129:                                              ; preds = %109
  %130 = load i8*, i8** @AMF_BOOLEAN, align 8
  %131 = ptrtoint i8* %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i64 %131, i64* %132, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i8* @atoi(i8* %133)
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  br label %171

137:                                              ; preds = %109
  %138 = load i8*, i8** @AMF_STRING, align 8
  %139 = ptrtoint i8* %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i64 %139, i64* %140, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  store i8* %141, i8** %144, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = load i8*, i8** %10, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = sub nsw i64 %148, %153
  %155 = trunc i64 %154 to i32
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 8
  br label %171

159:                                              ; preds = %109
  %160 = load i8*, i8** @AMF_NUMBER, align 8
  %161 = ptrtoint i8* %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i64 %161, i64* %162, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = call i8* @strtod(i8* %163, i32* null)
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  br label %171

167:                                              ; preds = %109
  %168 = load i64, i64* @AMF_OBJECT, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i64 %168, i64* %169, align 8
  br label %171

170:                                              ; preds = %109
  store i32 -1, i32* %4, align 4
  br label %213

171:                                              ; preds = %167, %159, %137, %129
  br label %173

172:                                              ; preds = %92, %86
  store i32 -1, i32* %4, align 4
  br label %213

173:                                              ; preds = %171
  br label %174

174:                                              ; preds = %173, %85
  %175 = load i32*, i32** %7, align 8
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %201

178:                                              ; preds = %174
  store i32 0, i32* %9, align 4
  br label %179

179:                                              ; preds = %197, %178
  %180 = load i32, i32* %9, align 4
  %181 = load i32*, i32** %7, align 8
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %184, label %200

184:                                              ; preds = %179
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %186, align 8
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  store %struct.TYPE_22__* %195, %struct.TYPE_22__** %12, align 8
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %196, %struct.TYPE_22__** %5, align 8
  br label %197

197:                                              ; preds = %184
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %9, align 4
  br label %179

200:                                              ; preds = %179
  br label %201

201:                                              ; preds = %200, %174
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %203 = call i32 @AMF_AddProp(%struct.TYPE_22__* %202, %struct.TYPE_21__* %8)
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @AMF_OBJECT, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %201
  %209 = load i32*, i32** %7, align 8
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %208, %201
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %212, %172, %170, %108, %84, %79
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @atoi(i8*) #2

declare dso_local i8* @strtod(i8*, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @AMF_AddProp(%struct.TYPE_22__*, %struct.TYPE_21__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
