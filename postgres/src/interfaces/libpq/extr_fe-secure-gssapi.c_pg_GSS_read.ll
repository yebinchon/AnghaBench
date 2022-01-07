; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-gssapi.c_pg_GSS_read.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-gssapi.c_pg_GSS_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_11__ = type { i32, i32 }

@GSS_C_EMPTY_BUFFER = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PqGSSResultPointer = common dso_local global i32 0, align 4
@PqGSSResultLength = common dso_local global i32 0, align 4
@PqGSSResultBuffer = common dso_local global i8* null, align 8
@PqGSSRecvLength = common dso_local global i32 0, align 4
@PqGSSRecvBuffer = common dso_local global i8* null, align 8
@PQ_GSS_RECV_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"oversize GSSAPI packet sent by the server (%zu > %zu)\0A\00", align 1
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"GSSAPI unwrap error\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"incoming GSSAPI message did not use confidentiality\0A\00", align 1
@PqGSSRecvPointer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pg_GSS_read(%struct.TYPE_11__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_10__* @GSS_C_EMPTY_BUFFER to i8*), i64 16, i1 false)
  %19 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_10__* @GSS_C_EMPTY_BUFFER to i8*), i64 16, i1 false)
  store i64 0, i64* %12, align 8
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %21

21:                                               ; preds = %210, %72, %3
  %22 = load i64, i64* %13, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %220

24:                                               ; preds = %21
  store i32 0, i32* %15, align 4
  %25 = load i32, i32* @PqGSSResultPointer, align 4
  %26 = load i32, i32* @PqGSSResultLength, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = load i32, i32* @PqGSSResultLength, align 4
  %30 = load i32, i32* @PqGSSResultPointer, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %14, align 8
  %36 = sub i64 %34, %35
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  br label %45

41:                                               ; preds = %28
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %14, align 8
  %44 = sub i64 %42, %43
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i64 [ %40, %38 ], [ %44, %41 ]
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %17, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8*, i8** @PqGSSResultBuffer, align 8
  %52 = load i32, i32* @PqGSSResultPointer, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @memcpy(i8* %50, i8* %54, i32 %55)
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* @PqGSSResultPointer, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* @PqGSSResultPointer, align 4
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %13, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %13, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %14, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %14, align 8
  %68 = load i32, i32* @PqGSSResultPointer, align 4
  %69 = load i32, i32* @PqGSSResultLength, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %45
  store i32 0, i32* @PqGSSResultLength, align 4
  store i32 0, i32* @PqGSSResultPointer, align 4
  br label %72

72:                                               ; preds = %71, %45
  br label %21

73:                                               ; preds = %24
  %74 = load i32, i32* @PqGSSRecvLength, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %75, 4
  br i1 %76, label %77, label %111

77:                                               ; preds = %73
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %80 = load i32, i32* @PqGSSRecvLength, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* @PqGSSRecvLength, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 4, %84
  %86 = trunc i64 %85 to i32
  %87 = call i64 @pqsecure_raw_read(%struct.TYPE_11__* %78, i8* %82, i32 %86)
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp ult i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %77
  %91 = load i64, i64* %14, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i64, i64* %14, align 8
  br label %97

95:                                               ; preds = %90
  %96 = load i64, i64* %12, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i64 [ %94, %93 ], [ %96, %95 ]
  store i64 %98, i64* %4, align 8
  br label %230

99:                                               ; preds = %77
  %100 = load i64, i64* %12, align 8
  %101 = load i32, i32* @PqGSSRecvLength, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* @PqGSSRecvLength, align 4
  %105 = load i32, i32* @PqGSSRecvLength, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp ult i64 %106, 4
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i64, i64* %14, align 8
  store i64 %109, i64* %4, align 8
  br label %230

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %73
  %112 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ntohl(i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 %115, i32* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load i32, i32* @PQ_GSS_RECV_BUFFER_SIZE, align 4
  %121 = sext i32 %120 to i64
  %122 = sub i64 %121, 4
  %123 = icmp ugt i64 %119, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %111
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = call i32 @libpq_gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load i32, i32* @PQ_GSS_RECV_BUFFER_SIZE, align 4
  %132 = sext i32 %131 to i64
  %133 = sub i64 %132, 4
  %134 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %126, i32 %127, i64 %130, i64 %133)
  store i64 -1, i64* %12, align 8
  br label %222

135:                                              ; preds = %111
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %138 = load i32, i32* @PqGSSRecvLength, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = load i32, i32* @PqGSSRecvLength, align 4
  %145 = sext i32 %144 to i64
  %146 = sub i64 %145, 4
  %147 = sub i64 %143, %146
  %148 = trunc i64 %147 to i32
  %149 = call i64 @pqsecure_raw_read(%struct.TYPE_11__* %136, i8* %140, i32 %148)
  store i64 %149, i64* %12, align 8
  %150 = load i64, i64* %12, align 8
  %151 = icmp ult i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %135
  %153 = load i64, i64* %14, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i64, i64* %14, align 8
  br label %159

157:                                              ; preds = %152
  %158 = load i64, i64* %12, align 8
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i64 [ %156, %155 ], [ %158, %157 ]
  store i64 %160, i64* %4, align 8
  br label %230

161:                                              ; preds = %135
  %162 = load i64, i64* %12, align 8
  %163 = load i32, i32* @PqGSSRecvLength, align 4
  %164 = sext i32 %163 to i64
  %165 = add i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* @PqGSSRecvLength, align 4
  %167 = load i32, i32* @PqGSSRecvLength, align 4
  %168 = sext i32 %167 to i64
  %169 = sub i64 %168, 4
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = icmp ult i64 %169, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %161
  %175 = load i64, i64* %14, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load i64, i64* %14, align 8
  br label %180

179:                                              ; preds = %174
  br label %180

180:                                              ; preds = %179, %177
  %181 = phi i64 [ %178, %177 ], [ -1, %179 ]
  store i64 %181, i64* %4, align 8
  br label %230

182:                                              ; preds = %161
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i8* null, i8** %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 0, i32* %184, align 8
  %185 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 4
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i8* %186, i8** %187, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @gss_unwrap(i32* %9, i32 %190, %struct.TYPE_10__* %10, %struct.TYPE_10__* %11, i32* %15, i32* null)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @GSS_S_COMPLETE, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %182
  %196 = call i32 @libpq_gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @pg_GSS_error(i32 %196, %struct.TYPE_11__* %197, i32 %198, i32 %199)
  store i64 -1, i64* %12, align 8
  br label %222

201:                                              ; preds = %182
  %202 = load i32, i32* %15, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = call i32 @libpq_gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %208 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %206, i32 %207)
  store i64 -1, i64* %12, align 8
  br label %222

209:                                              ; preds = %201
  br label %210

210:                                              ; preds = %209
  %211 = load i8*, i8** @PqGSSResultBuffer, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @memcpy(i8* %211, i8* %213, i32 %215)
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  store i32 %218, i32* @PqGSSResultLength, align 4
  store i32 0, i32* @PqGSSRecvLength, align 4
  store i32 0, i32* @PqGSSRecvPointer, align 4
  %219 = call i32 @gss_release_buffer(i32* %9, %struct.TYPE_10__* %11)
  br label %21

220:                                              ; preds = %21
  %221 = load i64, i64* %14, align 8
  store i64 %221, i64* %12, align 8
  br label %222

222:                                              ; preds = %220, %204, %195, %124
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = call i32 @gss_release_buffer(i32* %9, %struct.TYPE_10__* %11)
  br label %228

228:                                              ; preds = %226, %222
  %229 = load i64, i64* %12, align 8
  store i64 %229, i64* %4, align 8
  br label %230

230:                                              ; preds = %228, %180, %159, %108, %97
  %231 = load i64, i64* %4, align 8
  ret i64 %231
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @pqsecure_raw_read(%struct.TYPE_11__*, i8*, i32) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @printfPQExpBuffer(i32*, i32, ...) #2

declare dso_local i32 @libpq_gettext(i8*) #2

declare dso_local i32 @gss_unwrap(i32*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*, i32*) #2

declare dso_local i32 @pg_GSS_error(i32, %struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
