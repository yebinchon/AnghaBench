; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_find_prop_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_find_prop_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*)*, i64 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i64 }

@S_OK = common dso_local global i32 0, align 4
@PROPF_METHOD = common dso_local global i32 0, align 4
@PROPF_WRITABLE = common dso_local global i32 0, align 4
@PROPF_CONFIGURABLE = common dso_local global i32 0, align 4
@PROPF_ENUMERABLE = common dso_local global i32 0, align 4
@PROP_BUILTIN = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@PROP_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32*, %struct.TYPE_17__**)* @find_prop_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_prop_name(%struct.TYPE_16__* %0, i32 %1, i32* %2, %struct.TYPE_17__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__**, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_17__** %3, %struct.TYPE_17__*** %9, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @get_props_idx(%struct.TYPE_16__* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %95, %4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %105

32:                                               ; preds = %29
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @wcscmp(i32* %33, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %95, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %86

47:                                               ; preds = %44
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  store i32 %55, i32* %62, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  store i32 %70, i32* %77, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 8
  br label %86

86:                                               ; preds = %47, %44
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i64 %91
  %93 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* %92, %struct.TYPE_17__** %93, align 8
  %94 = load i32, i32* @S_OK, align 4
  store i32 %94, i32* %5, align 4
  br label %235

95:                                               ; preds = %32
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %13, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %12, align 4
  br label %29

105:                                              ; preds = %29
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = call %struct.TYPE_18__* @find_builtin_prop(%struct.TYPE_16__* %106, i32* %107)
  store %struct.TYPE_18__* %108, %struct.TYPE_18__** %10, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %110 = icmp ne %struct.TYPE_18__* %109, null
  br i1 %110, label %111, label %160

111:                                              ; preds = %105
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* @PROPF_METHOD, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %111
  %120 = load i32, i32* @PROPF_WRITABLE, align 4
  %121 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* %15, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %15, align 4
  br label %135

125:                                              ; preds = %111
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, i32* @PROPF_WRITABLE, align 4
  %132 = load i32, i32* %15, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %130, %125
  br label %135

135:                                              ; preds = %134, %119
  %136 = load i32, i32* @PROPF_ENUMERABLE, align 4
  %137 = load i32, i32* @PROPF_WRITABLE, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %15, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %15, align 4
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* @PROP_BUILTIN, align 4
  %146 = load i32, i32* %15, align 4
  %147 = call %struct.TYPE_17__* @alloc_prop(%struct.TYPE_16__* %143, i32* %144, i32 %145, i32 %146)
  store %struct.TYPE_17__* %147, %struct.TYPE_17__** %14, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %149 = icmp ne %struct.TYPE_17__* %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %135
  %151 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %151, i32* %5, align 4
  br label %235

152:                                              ; preds = %135
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  store %struct.TYPE_18__* %153, %struct.TYPE_18__** %156, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %158 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* %157, %struct.TYPE_17__** %158, align 8
  %159 = load i32, i32* @S_OK, align 4
  store i32 %159, i32* %5, align 4
  br label %235

160:                                              ; preds = %105
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %164, align 8
  %166 = icmp ne i32 (%struct.TYPE_16__*)* %165, null
  br i1 %166, label %167, label %232

167:                                              ; preds = %160
  store i32 0, i32* %17, align 4
  %168 = load i32*, i32** %8, align 8
  store i32* %168, i32** %16, align 8
  br label %169

169:                                              ; preds = %186, %167
  %170 = load i32*, i32** %16, align 8
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @iswdigit(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load i32, i32* %17, align 4
  %176 = icmp ult i32 %175, 65536
  br label %177

177:                                              ; preds = %174, %169
  %178 = phi i1 [ false, %169 ], [ %176, %174 ]
  br i1 %178, label %179, label %189

179:                                              ; preds = %177
  %180 = load i32, i32* %17, align 4
  %181 = mul i32 %180, 10
  %182 = load i32*, i32** %16, align 8
  %183 = load i32, i32* %182, align 4
  %184 = sub i32 %183, 48
  %185 = add i32 %181, %184
  store i32 %185, i32* %17, align 4
  br label %186

186:                                              ; preds = %179
  %187 = load i32*, i32** %16, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %16, align 8
  br label %169

189:                                              ; preds = %177
  %190 = load i32*, i32** %16, align 8
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %231, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %17, align 4
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %198, align 8
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %201 = call i32 %199(%struct.TYPE_16__* %200)
  %202 = icmp ult i32 %194, %201
  br i1 %202, label %203, label %231

203:                                              ; preds = %193
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %205 = load i32*, i32** %8, align 8
  %206 = load i32, i32* @PROP_IDX, align 4
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %203
  %214 = load i32, i32* @PROPF_WRITABLE, align 4
  br label %216

215:                                              ; preds = %203
  br label %216

216:                                              ; preds = %215, %213
  %217 = phi i32 [ %214, %213 ], [ 0, %215 ]
  %218 = call %struct.TYPE_17__* @alloc_prop(%struct.TYPE_16__* %204, i32* %205, i32 %206, i32 %217)
  store %struct.TYPE_17__* %218, %struct.TYPE_17__** %14, align 8
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %220 = icmp ne %struct.TYPE_17__* %219, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %216
  %222 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %222, i32* %5, align 4
  br label %235

223:                                              ; preds = %216
  %224 = load i32, i32* %17, align 4
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  store i32 %224, i32* %227, align 8
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %229 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* %228, %struct.TYPE_17__** %229, align 8
  %230 = load i32, i32* @S_OK, align 4
  store i32 %230, i32* %5, align 4
  br label %235

231:                                              ; preds = %193, %189
  br label %232

232:                                              ; preds = %231, %160
  %233 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %233, align 8
  %234 = load i32, i32* @S_OK, align 4
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %232, %223, %221, %152, %150, %86
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @get_props_idx(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @wcscmp(i32*, i32) #1

declare dso_local %struct.TYPE_18__* @find_builtin_prop(%struct.TYPE_16__*, i32*) #1

declare dso_local %struct.TYPE_17__* @alloc_prop(%struct.TYPE_16__*, i32*, i32, i32) #1

declare dso_local i64 @iswdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
