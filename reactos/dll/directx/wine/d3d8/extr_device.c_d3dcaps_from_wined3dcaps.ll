; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_device.c_d3dcaps_from_wined3dcaps.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_device.c_d3dcaps_from_wined3dcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@D3D8_MAX_VERTEX_SHADER_CONSTANTF = common dso_local global i32 0, align 4
@WINED3DSTENCILCAPS_TWOSIDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @d3dcaps_from_wined3dcaps(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 52
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 52
  store i64 %7, i64* %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 51
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 51
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 50
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 50
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 49
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 49
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 48
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 48
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 47
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 47
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 46
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 46
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 45
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 45
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 44
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 44
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 43
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 43
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 42
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 42
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 41
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 41
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 40
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 40
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 39
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 39
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 38
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 38
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 37
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 37
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 36
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 36
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 35
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 35
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 34
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 34
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 33
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 33
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 32
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 32
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 31
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 31
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 30
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 30
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 29
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 29
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 28
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 28
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 27
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 27
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 26
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 26
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 25
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 25
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 24
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 24
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 23
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 23
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 22
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 22
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 21
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 21
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 20
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 20
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 19
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 19
  store i32 %172, i32* %174, align 4
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 18
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 17
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 18
  store i32 %182, i32* %184, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 16
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 17
  store i32 %187, i32* %189, align 4
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 15
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 16
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 14
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 15
  store i32 %197, i32* %199, align 4
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 13
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 14
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 12
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 13
  store i32 %207, i32* %209, align 4
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 11
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 12
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 10
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 11
  store i32 %217, i32* %219, align 4
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 10
  store i32 %222, i32* %224, align 8
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 9
  store i32 %227, i32* %229, align 4
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 8
  store i32 %232, i32* %234, align 8
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 7
  store i32 %237, i32* %239, align 4
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 6
  store i32 %242, i32* %244, align 8
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 5
  store i32 %247, i32* %249, align 4
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 3
  %252 = load i8*, i8** %251, align 8
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 2
  store i8* %252, i8** %254, align 8
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 3
  store i8* %262, i8** %264, align 8
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 4
  store i32 %267, i32* %269, align 8
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 3
  %272 = load i8*, i8** %271, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %274, label %278

274:                                              ; preds = %2
  %275 = call i8* @D3DPS_VERSION(i32 1, i32 4)
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 3
  store i8* %275, i8** %277, align 8
  br label %282

278:                                              ; preds = %2
  %279 = call i8* @D3DPS_VERSION(i32 0, i32 0)
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 3
  store i8* %279, i8** %281, align 8
  br label %282

282:                                              ; preds = %278, %274
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 2
  %285 = load i8*, i8** %284, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %291

287:                                              ; preds = %282
  %288 = call i8* @D3DVS_VERSION(i32 1, i32 1)
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 2
  store i8* %288, i8** %290, align 8
  br label %295

291:                                              ; preds = %282
  %292 = call i8* @D3DVS_VERSION(i32 0, i32 0)
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 2
  store i8* %292, i8** %294, align 8
  br label %295

295:                                              ; preds = %291, %287
  %296 = load i32, i32* @D3D8_MAX_VERTEX_SHADER_CONSTANTF, align 4
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @min(i32 %296, i32 %299)
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* @WINED3DSTENCILCAPS_TWOSIDED, align 4
  %304 = xor i32 %303, -1
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = and i32 %307, %304
  store i32 %308, i32* %306, align 8
  ret void
}

declare dso_local i8* @D3DPS_VERSION(i32, i32) #1

declare dso_local i8* @D3DVS_VERSION(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
