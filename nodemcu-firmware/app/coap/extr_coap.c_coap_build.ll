; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap.c_coap_build.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap.c_coap_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@COAP_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coap_build(i32* %0, i64* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %12, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load i32*, i32** %5, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @coap_buildHeader(i32* %23, i32* %24, i64 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 %28
  store i32* %30, i32** %12, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %13, align 8
  %33 = sub i64 %32, %31
  store i64 %33, i64* %13, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load i32*, i32** %5, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @coap_buildToken(i32* %35, i32* %37, i32* %38, i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 %42
  store i32* %44, i32** %12, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %13, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %13, align 8
  store i64 0, i64* %11, align 8
  br label %48

48:                                               ; preds = %143, %3
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %146

54:                                               ; preds = %48
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = ptrtoint i32* %55 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  %61 = load i64*, i64** %6, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ugt i64 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @COAP_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %65, i32* %4, align 4
  br label %205

66:                                               ; preds = %54
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = sub nsw i64 %73, %74
  store i64 %75, i64* %17, align 8
  %76 = load i64, i64* %17, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @coap_buildOptionHeader(i64 %76, i32 %84, i32* %85, i64 %86)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %12, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %13, align 8
  %95 = sub i64 %94, %93
  store i64 %95, i64* %13, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @memcpy(i32* %96, i32 %104, i32 %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %12, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = load i64, i64* %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %13, align 8
  %135 = sub i64 %134, %133
  store i64 %135, i64* %13, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = load i64, i64* %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %14, align 8
  br label %143

143:                                              ; preds = %66
  %144 = load i64, i64* %11, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %11, align 8
  br label %48

146:                                              ; preds = %48
  %147 = load i32*, i32** %12, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = ptrtoint i32* %147 to i64
  %150 = ptrtoint i32* %148 to i64
  %151 = sub i64 %149, %150
  %152 = sdiv exact i64 %151, 4
  %153 = sub nsw i64 %152, 4
  store i64 %153, i64* %8, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %200

159:                                              ; preds = %146
  %160 = load i64*, i64** %6, align 8
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 5, %165
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %8, align 8
  %169 = add i64 %167, %168
  %170 = icmp ult i64 %161, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %159
  %172 = load i32, i32* @COAP_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %172, i32* %4, align 4
  br label %205

173:                                              ; preds = %159
  %174 = load i32*, i32** %5, align 8
  %175 = load i64, i64* %8, align 8
  %176 = add i64 4, %175
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 255, i32* %177, align 4
  %178 = load i32*, i32** %5, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 5
  %180 = load i64, i64* %8, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @memcpy(i32* %181, i32 %185, i32 %189)
  %191 = load i64, i64* %8, align 8
  %192 = add i64 %191, 5
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = add i64 %192, %197
  %199 = load i64*, i64** %6, align 8
  store i64 %198, i64* %199, align 8
  br label %204

200:                                              ; preds = %146
  %201 = load i64, i64* %8, align 8
  %202 = add i64 %201, 4
  %203 = load i64*, i64** %6, align 8
  store i64 %202, i64* %203, align 8
  br label %204

204:                                              ; preds = %200, %173
  store i32 0, i32* %4, align 4
  br label %205

205:                                              ; preds = %204, %171, %64
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local i64 @coap_buildHeader(i32*, i32*, i64) #1

declare dso_local i64 @coap_buildToken(i32*, i32*, i32*, i64) #1

declare dso_local i32 @coap_buildOptionHeader(i64, i32, i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
