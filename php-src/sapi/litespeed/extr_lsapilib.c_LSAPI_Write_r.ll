; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_Write_r.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_Write_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.lsapi_packet_header*, %struct.lsapi_packet_header*, %struct.TYPE_6__*, i32 }
%struct.lsapi_packet_header = type { i32 }
%struct.TYPE_6__ = type { i32, i8* }

@LSAPI_ST_BACKGROUND = common dso_local global i32 0, align 4
@LSAPI_ST_RESP_HEADER = common dso_local global i32 0, align 4
@LSAPI_ST_RESP_BODY = common dso_local global i32 0, align 4
@LSAPI_MAX_DATA_PACKET_LEN = common dso_local global i32 0, align 4
@LSAPI_RESP_STREAM = common dso_local global i32 0, align 4
@LSAPI_PACKET_HEADER_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LSAPI_Write_r(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lsapi_packet_header*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %3
  store i32 -1, i32* %4, align 4
  br label %239

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @LSAPI_ST_BACKGROUND, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %239

31:                                               ; preds = %21
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %239

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @LSAPI_ST_RESP_HEADER, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = call i32 @LSAPI_FinalizeRespHeaders_r(%struct.TYPE_7__* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i32, i32* @LSAPI_ST_RESP_BODY, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i64, i64* %7, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %14, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = icmp slt i32 %56, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %47
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %73, %75
  %77 = call i32 @memmove(i32 %68, i8* %72, i64 %76)
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = sub i64 %78, %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load i64, i64* %7, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %4, align 4
  br label %239

90:                                               ; preds = %47
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 5
  %93 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %92, align 8
  store %struct.lsapi_packet_header* %93, %struct.lsapi_packet_header** %8, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8* %97, i8** %10, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %9, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %103, %106
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %219, %90
  %109 = load i8*, i8** %9, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %12, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %220

116:                                              ; preds = %108
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %117, %118
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* @LSAPI_MAX_DATA_PACKET_LEN, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load i32, i32* @LSAPI_MAX_DATA_PACKET_LEN, align 4
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %123, %116
  %129 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %8, align 8
  %130 = load i32, i32* @LSAPI_RESP_STREAM, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @LSAPI_PACKET_HEADER_LEN, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i32 @lsapi_buildPacketHeader(%struct.lsapi_packet_header* %129, i32 %130, i32 %133)
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @LSAPI_PACKET_HEADER_LEN, align 4
  %137 = add nsw i32 %135, %136
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %8, align 8
  %143 = bitcast %struct.lsapi_packet_header* %142 to i8*
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 7
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i8* %143, i8** %147, align 8
  %148 = load i32, i32* @LSAPI_PACKET_HEADER_LEN, align 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 7
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i32 %148, i32* %152, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 7
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 1
  store %struct.TYPE_6__* %156, %struct.TYPE_6__** %154, align 8
  %157 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %8, align 8
  %158 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %157, i32 1
  store %struct.lsapi_packet_header* %158, %struct.lsapi_packet_header** %8, align 8
  %159 = load i32, i32* %11, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %185

161:                                              ; preds = %128
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 7
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  store i8* %166, i8** %170, align 8
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 7
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  store i32 %171, i32* %175, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 7
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 1
  store %struct.TYPE_6__* %184, %struct.TYPE_6__** %182, align 8
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %161, %128
  %186 = load i8*, i8** %10, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 7
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  store i8* %186, i8** %190, align 8
  %191 = load i32, i32* %12, align 4
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 7
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i32 %191, i32* %195, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 7
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 1
  store %struct.TYPE_6__* %199, %struct.TYPE_6__** %197, align 8
  %200 = load i32, i32* %12, align 4
  %201 = load i8*, i8** %10, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  store i8* %203, i8** %10, align 8
  %204 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %8, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 6
  %207 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %206, align 8
  %208 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %207, i64 -1
  %209 = icmp uge %struct.lsapi_packet_header* %204, %208
  br i1 %209, label %210, label %219

210:                                              ; preds = %185
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %212 = call i32 @LSAPI_Flush_r(%struct.TYPE_7__* %211)
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  store i32 -1, i32* %4, align 4
  br label %239

215:                                              ; preds = %210
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 5
  %218 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %217, align 8
  store %struct.lsapi_packet_header* %218, %struct.lsapi_packet_header** %8, align 8
  br label %219

219:                                              ; preds = %215, %185
  br label %108

220:                                              ; preds = %108
  %221 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %8, align 8
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 5
  %224 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %223, align 8
  %225 = icmp ne %struct.lsapi_packet_header* %221, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %220
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %228 = call i32 @LSAPI_Flush_r(%struct.TYPE_7__* %227)
  %229 = icmp eq i32 %228, -1
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  store i32 -1, i32* %4, align 4
  br label %239

231:                                              ; preds = %226
  br label %232

232:                                              ; preds = %231, %220
  %233 = load i8*, i8** %10, align 8
  %234 = load i8*, i8** %6, align 8
  %235 = ptrtoint i8* %233 to i64
  %236 = ptrtoint i8* %234 to i64
  %237 = sub i64 %235, %236
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %232, %230, %214, %65, %36, %28, %20
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i32 @LSAPI_FinalizeRespHeaders_r(%struct.TYPE_7__*) #1

declare dso_local i32 @memmove(i32, i8*, i64) #1

declare dso_local i32 @lsapi_buildPacketHeader(%struct.lsapi_packet_header*, i32, i32) #1

declare dso_local i32 @LSAPI_Flush_r(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
