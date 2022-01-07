; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_transfer_file_data.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_transfer_file_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, %struct.mbuf, %struct.mbuf }
%struct.mbuf = type { i32, i32 }
%struct.mg_http_proto_data = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i32 }

@MG_MAX_HTTP_SEND_MBUF = common dso_local global i32 0, align 4
@DATA_FILE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"%p sent %d (total %d)\00", align 1
@LL_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%p done, %d bytes, ka %d\00", align 1
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@DATA_PUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*)* @mg_http_transfer_file_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_http_transfer_file_data(%struct.mg_connection* %0) #0 {
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca %struct.mg_http_proto_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %2, align 8
  %13 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %14 = call %struct.mg_http_proto_data* @mg_http_get_proto_data(%struct.mg_connection* %13)
  store %struct.mg_http_proto_data* %14, %struct.mg_http_proto_data** %3, align 8
  %15 = load i32, i32* @MG_MAX_HTTP_SEND_MBUF, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %19 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %20 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %24 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %22, %26
  store i64 %27, i64* %8, align 8
  %28 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %29 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DATA_FILE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %132

34:                                               ; preds = %1
  %35 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %36 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %35, i32 0, i32 2
  store %struct.mbuf* %36, %struct.mbuf** %9, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MG_MAX_HTTP_SEND_MBUF, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i64 0, i64* %7, align 8
  br label %50

43:                                               ; preds = %34
  %44 = load i32, i32* @MG_MAX_HTTP_SEND_MBUF, align 4
  %45 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %43, %42
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i64, i64* %7, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %62 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @mg_fread(i8* %18, i32 1, i64 %60, i32 %64)
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %59
  %69 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @mg_send(%struct.mg_connection* %69, i8* %18, i64 %70)
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %74 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %72
  store i64 %77, i64* %75, align 8
  %78 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %79 = load i64, i64* %6, align 8
  %80 = trunc i64 %79 to i32
  %81 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %82 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @DBG(i8* %87)
  br label %89

89:                                               ; preds = %68, %59
  br label %91

90:                                               ; preds = %56
  br label %91

91:                                               ; preds = %90, %89
  %92 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %93 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %97 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sge i64 %95, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %91
  %102 = load i32, i32* @LL_DEBUG, align 4
  %103 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %104 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %105 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %110 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 @LOG(i32 %102, i8* %114)
  %116 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %117 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %101
  %122 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %123 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %124 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %101
  %128 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %129 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %128, i32 0, i32 1
  %130 = call i32 @mg_http_free_proto_data_file(%struct.TYPE_4__* %129)
  br label %131

131:                                              ; preds = %127, %91
  br label %215

132:                                              ; preds = %1
  %133 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %134 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @DATA_PUT, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %214

139:                                              ; preds = %132
  %140 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %141 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %140, i32 0, i32 1
  store %struct.mbuf* %141, %struct.mbuf** %10, align 8
  %142 = load i64, i64* %8, align 8
  %143 = icmp ule i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %161

145:                                              ; preds = %139
  %146 = load i64, i64* %8, align 8
  %147 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %148 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = icmp ult i64 %146, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i64, i64* %8, align 8
  br label %159

154:                                              ; preds = %145
  %155 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %156 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  br label %159

159:                                              ; preds = %154, %152
  %160 = phi i64 [ %153, %152 ], [ %158, %154 ]
  br label %161

161:                                              ; preds = %159, %144
  %162 = phi i64 [ 0, %144 ], [ %160, %159 ]
  store i64 %162, i64* %11, align 8
  %163 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %164 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i64, i64* %11, align 8
  %167 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %168 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @mg_fwrite(i32 %165, i32 1, i64 %166, i32 %170)
  store i64 %171, i64* %12, align 8
  %172 = load i64, i64* %12, align 8
  %173 = icmp ugt i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %161
  %175 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %176 = load i64, i64* %12, align 8
  %177 = call i32 @mbuf_remove(%struct.mbuf* %175, i64 %176)
  %178 = load i64, i64* %12, align 8
  %179 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %180 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, %178
  store i64 %183, i64* %181, align 8
  br label %184

184:                                              ; preds = %174, %161
  %185 = load i64, i64* %12, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %197, label %187

187:                                              ; preds = %184
  %188 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %189 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %193 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp sge i64 %191, %195
  br i1 %196, label %197, label %213

197:                                              ; preds = %187, %184
  %198 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %199 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %197
  %204 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %205 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %206 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %203, %197
  %210 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %3, align 8
  %211 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %210, i32 0, i32 1
  %212 = call i32 @mg_http_free_proto_data_file(%struct.TYPE_4__* %211)
  br label %213

213:                                              ; preds = %209, %187
  br label %214

214:                                              ; preds = %213, %132
  br label %215

215:                                              ; preds = %214, %131
  %216 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %216)
  ret void
}

declare dso_local %struct.mg_http_proto_data* @mg_http_get_proto_data(%struct.mg_connection*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @mg_fread(i8*, i32, i64, i32) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, i8*, i64) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @mg_http_free_proto_data_file(%struct.TYPE_4__*) #1

declare dso_local i64 @mg_fwrite(i32, i32, i64, i32) #1

declare dso_local i32 @mbuf_remove(%struct.mbuf*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
