; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_ForeachHeader_r.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_ForeachHeader_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__*, %struct.lsapi_header_offset*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.lsapi_header_offset = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32* }

@H_TRANSFER_ENCODING = common dso_local global i32 0, align 4
@CGI_HEADERS = common dso_local global i8** null, align 8
@CGI_HEADER_LEN = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"HTTP_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LSAPI_ForeachHeader_r(%struct.TYPE_7__* %0, i32 (i8*, i32, i8*, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32 (i8*, i32, i8*, i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [256 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.lsapi_header_offset*, align 8
  %19 = alloca %struct.lsapi_header_offset*, align 8
  %20 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 (i8*, i32, i8*, i32, i8*)* %1, i32 (i8*, i32, i8*, i32, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32 (i8*, i32, i8*, i32, i8*)*, i32 (i8*, i32, i8*, i32, i8*)** %6, align 8
  %25 = icmp ne i32 (i8*, i32, i8*, i32, i8*)* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %3
  store i32 -1, i32* %4, align 4
  br label %208

27:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %94, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @H_TRANSFER_ENCODING, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %97

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %93

43:                                               ; preds = %32
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %55, i64 %65
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load i32 (i8*, i32, i8*, i32, i8*)*, i32 (i8*, i32, i8*, i32, i8*)** %6, align 8
  %72 = load i8**, i8*** @CGI_HEADERS, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load i32*, i32** @CGI_HEADER_LEN, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 %71(i8* %76, i32 %81, i8* %82, i32 %83, i8* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %43
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %208

92:                                               ; preds = %43
  br label %93

93:                                               ; preds = %92, %32
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %28

97:                                               ; preds = %28
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %198

104:                                              ; preds = %97
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %106, align 8
  store %struct.lsapi_header_offset* %107, %struct.lsapi_header_offset** %18, align 8
  %108 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %18, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %108, i64 %113
  store %struct.lsapi_header_offset* %114, %struct.lsapi_header_offset** %19, align 8
  br label %115

115:                                              ; preds = %194, %104
  %116 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %18, align 8
  %117 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %19, align 8
  %118 = icmp ult %struct.lsapi_header_offset* %116, %117
  br i1 %118, label %119, label %197

119:                                              ; preds = %115
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %18, align 8
  %124 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %122, i64 %126
  store i8* %127, i8** %15, align 8
  %128 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %18, align 8
  %129 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %17, align 4
  %132 = icmp sgt i32 %131, 250
  br i1 %132, label %133, label %134

133:                                              ; preds = %119
  store i32 250, i32* %17, align 4
  br label %134

134:                                              ; preds = %133, %119
  %135 = load i8*, i8** %15, align 8
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  store i8* %138, i8** %16, align 8
  %139 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %140 = call i32 @memcpy(i8* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %141 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 5
  store i8* %141, i8** %14, align 8
  br label %142

142:                                              ; preds = %162, %134
  %143 = load i8*, i8** %15, align 8
  %144 = load i8*, i8** %16, align 8
  %145 = icmp ult i8* %143, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %142
  %147 = load i8*, i8** %15, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %15, align 8
  %149 = load i8, i8* %147, align 1
  store i8 %149, i8* %20, align 1
  %150 = load i8, i8* %20, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 45
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load i8*, i8** %14, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %14, align 8
  store i8 95, i8* %154, align 1
  br label %162

156:                                              ; preds = %146
  %157 = load i8, i8* %20, align 1
  %158 = call i32 @toupper(i8 signext %157)
  %159 = trunc i32 %158 to i8
  %160 = load i8*, i8** %14, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %14, align 8
  store i8 %159, i8* %160, align 1
  br label %162

162:                                              ; preds = %156, %153
  br label %142

163:                                              ; preds = %142
  %164 = load i8*, i8** %14, align 8
  store i8 0, i8* %164, align 1
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %165, 5
  store i32 %166, i32* %17, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %18, align 8
  %171 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %169, i64 %173
  store i8* %174, i8** %10, align 8
  %175 = load i8*, i8** %10, align 8
  %176 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %18, align 8
  %177 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %175, i64 %179
  store i8 0, i8* %180, align 1
  %181 = load i32 (i8*, i32, i8*, i32, i8*)*, i32 (i8*, i32, i8*, i32, i8*)** %6, align 8
  %182 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %183 = load i32, i32* %17, align 4
  %184 = load i8*, i8** %10, align 8
  %185 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %18, align 8
  %186 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load i8*, i8** %7, align 8
  %189 = call i32 %181(i8* %182, i32 %183, i8* %184, i32 %187, i8* %188)
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = icmp sle i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %163
  %193 = load i32, i32* %11, align 4
  store i32 %193, i32* %4, align 4
  br label %208

194:                                              ; preds = %163
  %195 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %18, align 8
  %196 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %195, i32 1
  store %struct.lsapi_header_offset* %196, %struct.lsapi_header_offset** %18, align 8
  br label %115

197:                                              ; preds = %115
  br label %198

198:                                              ; preds = %197, %97
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %200, %205
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %198, %192, %90, %26
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
