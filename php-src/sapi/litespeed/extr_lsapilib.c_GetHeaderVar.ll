; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_GetHeaderVar.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_GetHeaderVar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__*, %struct.lsapi_header_offset*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.lsapi_header_offset = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32* }

@H_TRANSFER_ENCODING = common dso_local global i32 0, align 4
@CGI_HEADERS = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, i8*)* @GetHeaderVar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GetHeaderVar(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lsapi_header_offset*, align 8
  %13 = alloca %struct.lsapi_header_offset*, align 8
  %14 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %86, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @H_TRANSFER_ENCODING, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %89

19:                                               ; preds = %15
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %85

30:                                               ; preds = %19
  %31 = load i8*, i8** %5, align 8
  %32 = load i32*, i32** @CGI_HEADERS, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strcmp(i8* %31, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %30
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %42, i64 %52
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %54, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %39
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %70, i64 %80
  store i8 0, i8* %81, align 1
  br label %82

82:                                               ; preds = %69, %39
  %83 = load i8*, i8** %7, align 8
  store i8* %83, i8** %3, align 8
  br label %205

84:                                               ; preds = %30
  br label %85

85:                                               ; preds = %84, %19
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %15

89:                                               ; preds = %15
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %204

96:                                               ; preds = %89
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %98, align 8
  store %struct.lsapi_header_offset* %99, %struct.lsapi_header_offset** %12, align 8
  %100 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %12, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %100, i64 %105
  store %struct.lsapi_header_offset* %106, %struct.lsapi_header_offset** %13, align 8
  br label %107

107:                                              ; preds = %200, %96
  %108 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %12, align 8
  %109 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %13, align 8
  %110 = icmp ult %struct.lsapi_header_offset* %108, %109
  br i1 %110, label %111, label %203

111:                                              ; preds = %107
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %12, align 8
  %116 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %114, i64 %118
  store i8* %119, i8** %9, align 8
  %120 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %12, align 8
  %121 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %11, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8* %126, i8** %10, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 5
  store i8* %128, i8** %8, align 8
  br label %129

129:                                              ; preds = %160, %111
  %130 = load i8*, i8** %9, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = icmp ult i8* %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load i8*, i8** %8, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 0
  br label %138

138:                                              ; preds = %133, %129
  %139 = phi i1 [ false, %129 ], [ %137, %133 ]
  br i1 %139, label %140, label %165

140:                                              ; preds = %138
  %141 = load i8*, i8** %9, align 8
  %142 = load i8, i8* %141, align 1
  %143 = call signext i8 @toupper(i8 signext %142)
  store i8 %143, i8* %14, align 1
  %144 = load i8, i8* %14, align 1
  %145 = sext i8 %144 to i32
  %146 = load i8*, i8** %8, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %145, %148
  br i1 %149, label %159, label %150

150:                                              ; preds = %140
  %151 = load i8*, i8** %8, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 95
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load i8, i8* %14, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 45
  br i1 %158, label %159, label %160

159:                                              ; preds = %155, %140
  br label %165

160:                                              ; preds = %155, %150
  %161 = load i8*, i8** %8, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %8, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %9, align 8
  br label %129

165:                                              ; preds = %159, %138
  %166 = load i8*, i8** %9, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = icmp eq i8* %166, %167
  br i1 %168, label %169, label %200

169:                                              ; preds = %165
  %170 = load i8*, i8** %8, align 8
  %171 = load i8, i8* %170, align 1
  %172 = icmp ne i8 %171, 0
  br i1 %172, label %200, label %173

173:                                              ; preds = %169
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %12, align 8
  %178 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %176, i64 %180
  store i8* %181, i8** %7, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %12, align 8
  %184 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %182, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %173
  %192 = load i8*, i8** %7, align 8
  %193 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %12, align 8
  %194 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %192, i64 %196
  store i8 0, i8* %197, align 1
  br label %198

198:                                              ; preds = %191, %173
  %199 = load i8*, i8** %7, align 8
  store i8* %199, i8** %3, align 8
  br label %205

200:                                              ; preds = %169, %165
  %201 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %12, align 8
  %202 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %201, i32 1
  store %struct.lsapi_header_offset* %202, %struct.lsapi_header_offset** %12, align 8
  br label %107

203:                                              ; preds = %107
  br label %204

204:                                              ; preds = %203, %89
  store i8* null, i8** %3, align 8
  br label %205

205:                                              ; preds = %204, %198, %82
  %206 = load i8*, i8** %3, align 8
  ret i8* %206
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local signext i8 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
