; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_global.c_DPLAYX_CopyConnStructA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_global.c_DPLAYX_CopyConnStructA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32*, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i8*, i64 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_17__*)* @DPLAYX_CopyConnStructA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DPLAYX_CopyConnStructA(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %8 = bitcast %struct.TYPE_17__* %6 to i8*
  %9 = bitcast %struct.TYPE_17__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 32, i1 false)
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = bitcast %struct.TYPE_17__* %10 to i32*
  %12 = getelementptr inbounds i32, i32* %11, i64 32
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %102

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_15__*
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 3
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  store i32* %23, i32** %5, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = bitcast %struct.TYPE_15__* %26 to i8*
  %31 = bitcast %struct.TYPE_15__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %66

39:                                               ; preds = %17
  %40 = load i32*, i32** %5, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strcpy(i8* %41, i8* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i8* %50, i8** %55, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = add nsw i64 %62, 1
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 %63
  store i32* %65, i32** %5, align 8
  br label %66

66:                                               ; preds = %39, %17
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %101

74:                                               ; preds = %66
  %75 = load i32*, i32** %5, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strcpy(i8* %76, i8* %82)
  %84 = load i32*, i32** %5, align 8
  %85 = bitcast i32* %84 to i8*
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i8* %85, i8** %90, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @strlen(i8* %96)
  %98 = add nsw i64 %97, 1
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 %98
  store i32* %100, i32** %5, align 8
  br label %101

101:                                              ; preds = %74, %66
  br label %102

102:                                              ; preds = %101, %2
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = icmp ne %struct.TYPE_16__* %105, null
  br i1 %106, label %107, label %193

107:                                              ; preds = %102
  %108 = load i32*, i32** %5, align 8
  %109 = bitcast i32* %108 to %struct.TYPE_16__*
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 2
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %111, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  store i32* %113, i32** %5, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = bitcast %struct.TYPE_16__* %116 to i8*
  %121 = bitcast %struct.TYPE_16__* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 24, i1 false)
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %156

129:                                              ; preds = %107
  %130 = load i32*, i32** %5, align 8
  %131 = bitcast i32* %130 to i8*
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @strcpy(i8* %131, i8* %137)
  %139 = load i32*, i32** %5, align 8
  %140 = bitcast i32* %139 to i8*
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  store i8* %140, i8** %145, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @strlen(i8* %151)
  %153 = add nsw i64 %152, 1
  %154 = load i32*, i32** %5, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 %153
  store i32* %155, i32** %5, align 8
  br label %156

156:                                              ; preds = %129, %107
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %192

164:                                              ; preds = %156
  %165 = load i32*, i32** %5, align 8
  %166 = bitcast i32* %165 to i8*
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @strcpy(i8* %166, i8* %172)
  %174 = load i32*, i32** %5, align 8
  %175 = bitcast i32* %174 to i8*
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  store i8* %175, i8** %180, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to i8*
  %188 = call i64 @strlen(i8* %187)
  %189 = add nsw i64 %188, 1
  %190 = load i32*, i32** %5, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 %189
  store i32* %191, i32** %5, align 8
  br label %192

192:                                              ; preds = %164, %156
  br label %193

193:                                              ; preds = %192, %102
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %210

198:                                              ; preds = %193
  %199 = load i32*, i32** %5, align 8
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  store i32* %199, i32** %201, align 8
  %202 = load i32*, i32** %5, align 8
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @CopyMemory(i32* %202, i32* %205, i32 %208)
  br label %210

210:                                              ; preds = %198, %193
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @CopyMemory(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
