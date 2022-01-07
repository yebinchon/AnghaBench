; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-gssapi.c_be_gssapi_read.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-gssapi.c_be_gssapi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i8* }

@PqGSSResultPointer = common dso_local global i32 0, align 4
@PqGSSResultLength = common dso_local global i32 0, align 4
@PqGSSResultBuffer = common dso_local global i8* null, align 8
@PqGSSRecvLength = common dso_local global i32 0, align 4
@PqGSSRecvBuffer = common dso_local global i8* null, align 8
@PQ_GSS_RECV_BUFFER_SIZE = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"oversize GSSAPI packet sent by the client (%zu > %zu)\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"GSSAPI unwrap error\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"incoming GSSAPI message did not use confidentiality\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @be_gssapi_read(%struct.TYPE_11__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %16, align 8
  br label %23

23:                                               ; preds = %208, %74, %3
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %218

26:                                               ; preds = %23
  %27 = load i32, i32* @PqGSSResultPointer, align 4
  %28 = load i32, i32* @PqGSSResultLength, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %75

30:                                               ; preds = %26
  %31 = load i32, i32* @PqGSSResultLength, align 4
  %32 = load i32, i32* @PqGSSResultPointer, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %14, align 8
  %38 = sub i64 %36, %37
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  br label %47

43:                                               ; preds = %30
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %14, align 8
  %46 = sub i64 %44, %45
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i64 [ %42, %40 ], [ %46, %43 ]
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %18, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8*, i8** @PqGSSResultBuffer, align 8
  %54 = load i32, i32* @PqGSSResultPointer, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i32, i32* %18, align 4
  %58 = call i32 @memcpy(i8* %52, i8* %56, i32 %57)
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @PqGSSResultPointer, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* @PqGSSResultPointer, align 4
  %62 = load i32, i32* %18, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %13, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %13, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %14, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %14, align 8
  %70 = load i32, i32* @PqGSSResultPointer, align 4
  %71 = load i32, i32* @PqGSSResultLength, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %47
  store i32 0, i32* @PqGSSResultLength, align 4
  store i32 0, i32* @PqGSSResultPointer, align 4
  br label %74

74:                                               ; preds = %73, %47
  br label %23

75:                                               ; preds = %26
  %76 = load i32, i32* @PqGSSRecvLength, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %77, 4
  br i1 %78, label %79, label %113

79:                                               ; preds = %75
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %82 = load i32, i32* @PqGSSRecvLength, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32, i32* @PqGSSRecvLength, align 4
  %86 = sext i32 %85 to i64
  %87 = sub i64 4, %86
  %88 = trunc i64 %87 to i32
  %89 = call i64 @secure_raw_read(%struct.TYPE_11__* %80, i8* %84, i32 %88)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp ult i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %79
  %93 = load i64, i64* %14, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i64, i64* %14, align 8
  br label %99

97:                                               ; preds = %92
  %98 = load i64, i64* %12, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i64 [ %96, %95 ], [ %98, %97 ]
  store i64 %100, i64* %4, align 8
  br label %220

101:                                              ; preds = %79
  %102 = load i64, i64* %12, align 8
  %103 = load i32, i32* @PqGSSRecvLength, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* @PqGSSRecvLength, align 4
  %107 = load i32, i32* @PqGSSRecvLength, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp ult i64 %108, 4
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i64, i64* %14, align 8
  store i64 %111, i64* %4, align 8
  br label %220

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %75
  %114 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %115 = bitcast i8* %114 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ntohl(i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 %117, i32* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = load i32, i32* @PQ_GSS_RECV_BUFFER_SIZE, align 4
  %123 = sext i32 %122 to i64
  %124 = sub i64 %123, 4
  %125 = icmp ugt i64 %121, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %113
  %127 = load i32, i32* @FATAL, align 4
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load i32, i32* @PQ_GSS_RECV_BUFFER_SIZE, align 4
  %132 = sext i32 %131 to i64
  %133 = sub i64 %132, 4
  %134 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %130, i64 %133)
  %135 = call i32 @ereport(i32 %127, i32 %134)
  br label %136

136:                                              ; preds = %126, %113
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %139 = load i32, i32* @PqGSSRecvLength, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* @PqGSSRecvLength, align 4
  %146 = sext i32 %145 to i64
  %147 = sub i64 %146, 4
  %148 = sub i64 %144, %147
  %149 = trunc i64 %148 to i32
  %150 = call i64 @secure_raw_read(%struct.TYPE_11__* %137, i8* %141, i32 %149)
  store i64 %150, i64* %12, align 8
  %151 = load i64, i64* %12, align 8
  %152 = icmp ult i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %136
  %154 = load i64, i64* %14, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i64, i64* %14, align 8
  br label %160

158:                                              ; preds = %153
  %159 = load i64, i64* %12, align 8
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i64 [ %157, %156 ], [ %159, %158 ]
  store i64 %161, i64* %4, align 8
  br label %220

162:                                              ; preds = %136
  %163 = load i64, i64* %12, align 8
  %164 = load i32, i32* @PqGSSRecvLength, align 4
  %165 = sext i32 %164 to i64
  %166 = add i64 %165, %163
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* @PqGSSRecvLength, align 4
  %168 = load i32, i32* @PqGSSRecvLength, align 4
  %169 = sext i32 %168 to i64
  %170 = sub i64 %169, 4
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = icmp ult i64 %170, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %162
  %176 = load i64, i64* %14, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %179, i32* @errno, align 4
  store i64 -1, i64* %4, align 8
  br label %220

180:                                              ; preds = %175
  %181 = load i64, i64* %14, align 8
  store i64 %181, i64* %4, align 8
  br label %220

182:                                              ; preds = %162
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i8* null, i8** %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 0, i32* %184, align 8
  %185 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 4
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i8* %186, i8** %187, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @gss_unwrap(i64* %9, i32 %190, %struct.TYPE_10__* %10, %struct.TYPE_10__* %11, i32* %15, i32* null)
  store i64 %191, i64* %8, align 8
  %192 = load i64, i64* %8, align 8
  %193 = load i64, i64* @GSS_S_COMPLETE, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %182
  %196 = load i32, i32* @FATAL, align 4
  %197 = call i32 @gettext_noop(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %198 = load i64, i64* %8, align 8
  %199 = load i64, i64* %9, align 8
  %200 = call i32 @pg_GSS_error(i32 %196, i32 %197, i64 %198, i64 %199)
  br label %201

201:                                              ; preds = %195, %182
  %202 = load i32, i32* %15, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load i32, i32* @FATAL, align 4
  %206 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %207 = call i32 @ereport(i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %204, %201
  %209 = load i8*, i8** @PqGSSResultBuffer, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @memcpy(i8* %209, i8* %211, i32 %213)
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  store i32 %216, i32* @PqGSSResultLength, align 4
  store i32 0, i32* @PqGSSRecvLength, align 4
  %217 = call i32 @gss_release_buffer(i64* %9, %struct.TYPE_10__* %11)
  br label %23

218:                                              ; preds = %23
  %219 = load i64, i64* %14, align 8
  store i64 %219, i64* %4, align 8
  br label %220

220:                                              ; preds = %218, %180, %178, %160, %110, %99
  %221 = load i64, i64* %4, align 8
  ret i64 %221
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @secure_raw_read(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @gss_unwrap(i64*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @pg_GSS_error(i32, i32, i64, i64) #1

declare dso_local i32 @gettext_noop(i8*) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
