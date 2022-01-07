; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_preview.c_CalculateItemSize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_preview.c_CalculateItemSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_33__, %struct.TYPE_32__, i64, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i32, i32, i32, i64 }
%struct.TYPE_31__ = type { i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*)* @CalculateItemSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CalculateItemSize(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %6 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 20
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 11
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 20
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 11
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 25
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 20
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 11
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 30
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 20
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 20
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %41, %44
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = add nsw i32 %49, 1
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 19
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 20
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %57, %60
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = add nsw i32 %65, 1
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 19
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 20
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %73, %76
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %77, %80
  %82 = sub nsw i32 %81, 1
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 19
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 19
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %93, %96
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 19
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 4
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 19
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 2
  %106 = sub nsw i32 %105, 2
  %107 = sub nsw i32 %106, 48
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 21
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 19
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 2
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 21
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 19
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %122, 2
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 21
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 19
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 2
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 21
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 3
  store i32 %131, i32* %134, align 4
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 20
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 3
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %139, %142
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 19
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 15
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 11
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 %158, 10
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 15
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 2
  store i32 %159, i32* %162, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 11
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, 25
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 15
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %169, i32 0, i32 3
  store i32 %167, i32* %170, align 4
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 15
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %174, %177
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %178, %181
  %183 = add nsw i32 %182, 1
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 17
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 8
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 15
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %190, %193
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %194, %197
  %199 = add nsw i32 %198, 1
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 17
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 1
  store i32 %199, i32* %202, align 4
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 15
  %205 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %206, %209
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 %210, %213
  %215 = sub nsw i32 %214, 1
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 17
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %217, i32 0, i32 2
  store i32 %215, i32* %218, align 8
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 17
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %222, %225
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = sub nsw i32 %226, %229
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 17
  %233 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %232, i32 0, i32 3
  store i32 %230, i32* %233, align 4
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 17
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = sub nsw i32 %237, 2
  %239 = sub nsw i32 %238, 2
  %240 = sub nsw i32 %239, 48
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 18
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 0
  store i32 %240, i32* %243, align 8
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 17
  %246 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, 2
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 18
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 1
  store i32 %248, i32* %251, align 4
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 17
  %254 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = sub nsw i32 %255, 2
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 18
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 2
  store i32 %256, i32* %259, align 8
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 17
  %262 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %263, 2
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 18
  %267 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %266, i32 0, i32 3
  store i32 %264, i32* %267, align 4
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 15
  %270 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %271, %274
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %275, %278
  %280 = add nsw i32 %279, 1
  %281 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %281, i32 0, i32 16
  %283 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %282, i32 0, i32 0
  store i32 %280, i32* %283, align 8
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 17
  %286 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, 1
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 16
  %291 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %290, i32 0, i32 1
  store i32 %288, i32* %291, align 4
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 15
  %294 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = sub nsw i32 %295, %298
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 %299, %302
  %304 = sub nsw i32 %303, 1
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %305, i32 0, i32 16
  %307 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %306, i32 0, i32 2
  store i32 %304, i32* %307, align 8
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 16
  %310 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %311, %314
  %316 = add nsw i32 %315, 1
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 16
  %319 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %318, i32 0, i32 3
  store i32 %316, i32* %319, align 4
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 15
  %322 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = add nsw i32 %323, %326
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = add nsw i32 %327, %330
  %332 = add nsw i32 %331, 1
  %333 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %333, i32 0, i32 12
  %335 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %334, i32 0, i32 0
  store i32 %332, i32* %335, align 8
  %336 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i32 0, i32 16
  %338 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 12
  %342 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %341, i32 0, i32 1
  store i32 %339, i32* %342, align 4
  %343 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %343, i32 0, i32 15
  %345 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = sub nsw i32 %346, %349
  %351 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = sub nsw i32 %350, %353
  %355 = sub nsw i32 %354, 1
  %356 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %356, i32 0, i32 12
  %358 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %357, i32 0, i32 2
  store i32 %355, i32* %358, align 8
  %359 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %359, i32 0, i32 15
  %361 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = sub nsw i32 %362, %365
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = sub nsw i32 %366, %369
  %371 = sub nsw i32 %370, 1
  %372 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %372, i32 0, i32 12
  %374 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %373, i32 0, i32 3
  store i32 %371, i32* %374, align 4
  %375 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %375, i32 0, i32 12
  %377 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = sub nsw i32 %378, 2
  %380 = sext i32 %379 to i64
  %381 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i32 0, i32 14
  %383 = load i64, i64* %382, align 8
  %384 = sub nsw i64 %380, %383
  %385 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %385, i32 0, i32 13
  %387 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %386, i32 0, i32 3
  store i64 %384, i64* %387, align 8
  %388 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %388, i32 0, i32 12
  %390 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = add nsw i32 %391, 2
  %393 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %393, i32 0, i32 13
  %395 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %394, i32 0, i32 0
  store i32 %392, i32* %395, align 8
  %396 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %396, i32 0, i32 12
  %398 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = sub nsw i32 %399, 2
  %401 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %401, i32 0, i32 13
  %403 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %402, i32 0, i32 1
  store i32 %400, i32* %403, align 4
  %404 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %404, i32 0, i32 12
  %406 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = sub nsw i32 %407, 2
  %409 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %409, i32 0, i32 13
  %411 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %410, i32 0, i32 2
  store i32 %408, i32* %411, align 8
  %412 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i32 0, i32 12
  %414 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = add nsw i32 %415, 4
  %417 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %417, i32 0, i32 8
  %419 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %418, i32 0, i32 0
  store i32 %416, i32* %419, align 8
  %420 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %420, i32 0, i32 11
  %422 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 4
  %424 = mul nsw i32 %423, 60
  %425 = sdiv i32 %424, 100
  %426 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %427 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %426, i32 0, i32 8
  %428 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %427, i32 0, i32 1
  store i32 %425, i32* %428, align 4
  %429 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %429, i32 0, i32 11
  %431 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 8
  %433 = mul nsw i32 %432, 65
  %434 = sdiv i32 %433, 100
  %435 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %436 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %435, i32 0, i32 8
  %437 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %436, i32 0, i32 2
  store i32 %434, i32* %437, align 8
  %438 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %438, i32 0, i32 11
  %440 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = sub nsw i32 %441, 5
  %443 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %443, i32 0, i32 8
  %445 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %444, i32 0, i32 3
  store i32 %442, i32* %445, align 4
  %446 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %446, i32 0, i32 8
  %448 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = add nsw i32 %449, 3
  %451 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %451, i32 0, i32 9
  %453 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %452, i32 0, i32 0
  store i32 %450, i32* %453, align 8
  %454 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %454, i32 0, i32 8
  %456 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %457, 3
  %459 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %459, i32 0, i32 9
  %461 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %460, i32 0, i32 1
  store i32 %458, i32* %461, align 4
  %462 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %463 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %462, i32 0, i32 8
  %464 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  %466 = sub nsw i32 %465, 3
  %467 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %467, i32 0, i32 9
  %469 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %468, i32 0, i32 2
  store i32 %466, i32* %469, align 8
  %470 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %471 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %470, i32 0, i32 8
  %472 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %474, i32 0, i32 3
  %476 = load i32, i32* %475, align 4
  %477 = add nsw i32 %473, %476
  %478 = add nsw i32 %477, 1
  %479 = add nsw i32 %478, 1
  %480 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %480, i32 0, i32 9
  %482 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %481, i32 0, i32 3
  store i32 %479, i32* %482, align 4
  %483 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %483, i32 0, i32 9
  %485 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %484, i32 0, i32 2
  %486 = load i32, i32* %485, align 8
  %487 = sub nsw i32 %486, 2
  %488 = sub nsw i32 %487, 16
  %489 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %490 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %489, i32 0, i32 10
  %491 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %490, i32 0, i32 0
  store i32 %488, i32* %491, align 8
  %492 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %493 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %492, i32 0, i32 9
  %494 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = add nsw i32 %495, 2
  %497 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %498 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %497, i32 0, i32 10
  %499 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %498, i32 0, i32 1
  store i32 %496, i32* %499, align 4
  %500 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %500, i32 0, i32 9
  %502 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %501, i32 0, i32 2
  %503 = load i32, i32* %502, align 8
  %504 = sub nsw i32 %503, 2
  %505 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %506 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %505, i32 0, i32 10
  %507 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %506, i32 0, i32 2
  store i32 %504, i32* %507, align 8
  %508 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %509 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %508, i32 0, i32 9
  %510 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %509, i32 0, i32 3
  %511 = load i32, i32* %510, align 4
  %512 = sub nsw i32 %511, 2
  %513 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %514 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %513, i32 0, i32 10
  %515 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %514, i32 0, i32 3
  store i32 %512, i32* %515, align 4
  %516 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %517 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %516, i32 0, i32 8
  %518 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = add nsw i32 %519, 3
  %521 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %521, i32 0, i32 7
  %523 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %522, i32 0, i32 0
  store i32 %520, i32* %523, align 8
  %524 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %525 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %524, i32 0, i32 9
  %526 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %525, i32 0, i32 3
  %527 = load i32, i32* %526, align 4
  %528 = add nsw i32 %527, 1
  %529 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %530 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %529, i32 0, i32 7
  %531 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %530, i32 0, i32 1
  store i32 %528, i32* %531, align 4
  %532 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %533 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %532, i32 0, i32 8
  %534 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 8
  %536 = sub nsw i32 %535, 3
  %537 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %537, i32 0, i32 7
  %539 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %538, i32 0, i32 2
  store i32 %536, i32* %539, align 8
  %540 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %540, i32 0, i32 8
  %542 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %541, i32 0, i32 3
  %543 = load i32, i32* %542, align 4
  %544 = sub nsw i32 %543, 3
  %545 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %546 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %545, i32 0, i32 7
  %547 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %546, i32 0, i32 3
  store i32 %544, i32* %547, align 4
  store i32 80, i32* %4, align 4
  store i32 28, i32* %5, align 4
  %548 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %549 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %548, i32 0, i32 7
  %550 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 8
  %552 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %553 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %552, i32 0, i32 7
  %554 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = add nsw i32 %551, %555
  %557 = load i32, i32* %4, align 4
  %558 = sub nsw i32 %556, %557
  %559 = sdiv i32 %558, 2
  %560 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %561 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %560, i32 0, i32 6
  %562 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %561, i32 0, i32 0
  store i32 %559, i32* %562, align 8
  %563 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %564 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %563, i32 0, i32 6
  %565 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 8
  %567 = load i32, i32* %4, align 4
  %568 = add nsw i32 %566, %567
  %569 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %570 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %569, i32 0, i32 6
  %571 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %570, i32 0, i32 1
  store i32 %568, i32* %571, align 4
  %572 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %573 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %572, i32 0, i32 7
  %574 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %573, i32 0, i32 3
  %575 = load i32, i32* %574, align 4
  %576 = sub nsw i32 %575, 2
  %577 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %578 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %577, i32 0, i32 6
  %579 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %578, i32 0, i32 2
  store i32 %576, i32* %579, align 8
  %580 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %581 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %580, i32 0, i32 6
  %582 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %581, i32 0, i32 2
  %583 = load i32, i32* %582, align 8
  %584 = load i32, i32* %5, align 4
  %585 = sub nsw i32 %583, %584
  %586 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %587 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %586, i32 0, i32 6
  %588 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %587, i32 0, i32 3
  store i32 %585, i32* %588, align 4
  %589 = load i32, i32* %2, align 4
  ret i32 %589
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
