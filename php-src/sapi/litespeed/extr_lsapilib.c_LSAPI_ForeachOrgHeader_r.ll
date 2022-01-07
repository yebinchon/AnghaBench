; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_ForeachOrgHeader_r.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_ForeachOrgHeader_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__*, %struct.lsapi_header_offset*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.lsapi_header_offset = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32* }
%struct._headerInfo = type { i8*, i32, i8*, i32 }

@H_TRANSFER_ENCODING = common dso_local global i32 0, align 4
@HTTP_HEADERS = common dso_local global i8** null, align 8
@HTTP_HEADER_LEN = common dso_local global i32* null, align 8
@compareValueLocation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LSAPI_ForeachOrgHeader_r(%struct.TYPE_7__* %0, i32 (i8*, i32, i8*, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32 (i8*, i32, i8*, i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [512 x %struct._headerInfo], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.lsapi_header_offset*, align 8
  %17 = alloca %struct.lsapi_header_offset*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 (i8*, i32, i8*, i32, i8*)* %1, i32 (i8*, i32, i8*, i32, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32 (i8*, i32, i8*, i32, i8*)*, i32 (i8*, i32, i8*, i32, i8*)** %6, align 8
  %22 = icmp ne i32 (i8*, i32, i8*, i32, i8*)* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %3
  store i32 -1, i32* %4, align 4
  br label %234

24:                                               ; preds = %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %234

30:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %105, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @H_TRANSFER_ENCODING, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %108

35:                                               ; preds = %31
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %104

46:                                               ; preds = %35
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %58, i64 %68
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i8**, i8*** @HTTP_HEADERS, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [512 x %struct._headerInfo], [512 x %struct._headerInfo]* %13, i64 0, i64 %80
  %82 = getelementptr inbounds %struct._headerInfo, %struct._headerInfo* %81, i32 0, i32 0
  store i8* %78, i8** %82, align 16
  %83 = load i32*, i32** @HTTP_HEADER_LEN, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [512 x %struct._headerInfo], [512 x %struct._headerInfo]* %13, i64 0, i64 %89
  %91 = getelementptr inbounds %struct._headerInfo, %struct._headerInfo* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [512 x %struct._headerInfo], [512 x %struct._headerInfo]* %13, i64 0, i64 %94
  %96 = getelementptr inbounds %struct._headerInfo, %struct._headerInfo* %95, i32 0, i32 2
  store i8* %92, i8** %96, align 16
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [512 x %struct._headerInfo], [512 x %struct._headerInfo]* %13, i64 0, i64 %99
  %101 = getelementptr inbounds %struct._headerInfo, %struct._headerInfo* %100, i32 0, i32 3
  store i32 %97, i32* %101, align 8
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %46, %35
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %31

108:                                              ; preds = %31
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %191

115:                                              ; preds = %108
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %117, align 8
  store %struct.lsapi_header_offset* %118, %struct.lsapi_header_offset** %16, align 8
  %119 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %16, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %119, i64 %124
  store %struct.lsapi_header_offset* %125, %struct.lsapi_header_offset** %17, align 8
  br label %126

126:                                              ; preds = %187, %115
  %127 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %16, align 8
  %128 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %17, align 8
  %129 = icmp ult %struct.lsapi_header_offset* %127, %128
  br i1 %129, label %130, label %190

130:                                              ; preds = %126
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %16, align 8
  %135 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %133, i64 %137
  store i8* %138, i8** %14, align 8
  %139 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %16, align 8
  %140 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %15, align 4
  %142 = load i8*, i8** %14, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8 0, i8* %145, align 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %16, align 8
  %150 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %148, i64 %152
  store i8* %153, i8** %10, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %16, align 8
  %156 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %154, i64 %158
  store i8 0, i8* %159, align 1
  %160 = load i8*, i8** %14, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [512 x %struct._headerInfo], [512 x %struct._headerInfo]* %13, i64 0, i64 %162
  %164 = getelementptr inbounds %struct._headerInfo, %struct._headerInfo* %163, i32 0, i32 0
  store i8* %160, i8** %164, align 16
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [512 x %struct._headerInfo], [512 x %struct._headerInfo]* %13, i64 0, i64 %167
  %169 = getelementptr inbounds %struct._headerInfo, %struct._headerInfo* %168, i32 0, i32 1
  store i32 %165, i32* %169, align 8
  %170 = load i8*, i8** %10, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [512 x %struct._headerInfo], [512 x %struct._headerInfo]* %13, i64 0, i64 %172
  %174 = getelementptr inbounds %struct._headerInfo, %struct._headerInfo* %173, i32 0, i32 2
  store i8* %170, i8** %174, align 16
  %175 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %16, align 8
  %176 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [512 x %struct._headerInfo], [512 x %struct._headerInfo]* %13, i64 0, i64 %179
  %181 = getelementptr inbounds %struct._headerInfo, %struct._headerInfo* %180, i32 0, i32 3
  store i32 %177, i32* %181, align 8
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp eq i32 %184, 512
  br i1 %185, label %186, label %187

186:                                              ; preds = %130
  br label %190

187:                                              ; preds = %130
  %188 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %16, align 8
  %189 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %188, i32 1
  store %struct.lsapi_header_offset* %189, %struct.lsapi_header_offset** %16, align 8
  br label %126

190:                                              ; preds = %186, %126
  br label %191

191:                                              ; preds = %190, %108
  %192 = getelementptr inbounds [512 x %struct._headerInfo], [512 x %struct._headerInfo]* %13, i64 0, i64 0
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* @compareValueLocation, align 4
  %195 = call i32 @qsort(%struct._headerInfo* %192, i32 %193, i32 32, i32 %194)
  store i32 0, i32* %8, align 4
  br label %196

196:                                              ; preds = %229, %191
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %12, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %232

200:                                              ; preds = %196
  %201 = load i32 (i8*, i32, i8*, i32, i8*)*, i32 (i8*, i32, i8*, i32, i8*)** %6, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [512 x %struct._headerInfo], [512 x %struct._headerInfo]* %13, i64 0, i64 %203
  %205 = getelementptr inbounds %struct._headerInfo, %struct._headerInfo* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 16
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [512 x %struct._headerInfo], [512 x %struct._headerInfo]* %13, i64 0, i64 %208
  %210 = getelementptr inbounds %struct._headerInfo, %struct._headerInfo* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [512 x %struct._headerInfo], [512 x %struct._headerInfo]* %13, i64 0, i64 %213
  %215 = getelementptr inbounds %struct._headerInfo, %struct._headerInfo* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 16
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [512 x %struct._headerInfo], [512 x %struct._headerInfo]* %13, i64 0, i64 %218
  %220 = getelementptr inbounds %struct._headerInfo, %struct._headerInfo* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load i8*, i8** %7, align 8
  %223 = call i32 %201(i8* %206, i32 %211, i8* %216, i32 %221, i8* %222)
  store i32 %223, i32* %11, align 4
  %224 = load i32, i32* %11, align 4
  %225 = icmp sle i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %200
  %227 = load i32, i32* %11, align 4
  store i32 %227, i32* %4, align 4
  br label %234

228:                                              ; preds = %200
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %8, align 4
  br label %196

232:                                              ; preds = %196
  %233 = load i32, i32* %12, align 4
  store i32 %233, i32* %4, align 4
  br label %234

234:                                              ; preds = %232, %226, %29, %23
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i32 @qsort(%struct._headerInfo*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
