; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-gssapi.c_secure_open_gssapi.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-gssapi.c_secure_open_gssapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@PqGSSResultLength = common dso_local global i32 0, align 4
@PqGSSResultPointer = common dso_local global i32 0, align 4
@PqGSSRecvLength = common dso_local global i32 0, align 4
@PqGSSSendStart = common dso_local global i32 0, align 4
@PqGSSSendPointer = common dso_local global i32 0, align 4
@pg_krb_server_keyfile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"KRB5_KTNAME\00", align 1
@GSS_C_EMPTY_BUFFER = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PqGSSRecvBuffer = common dso_local global i8* null, align 8
@PQ_GSS_RECV_BUFFER_SIZE = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"oversize GSSAPI packet sent by the client (%zu > %d)\00", align 1
@GSS_C_NO_CREDENTIAL = common dso_local global i32 0, align 4
@GSS_C_NO_CHANNEL_BINDINGS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"could not accept GSSAPI security context\00", align 1
@GSS_S_CONTINUE_NEEDED = common dso_local global i32 0, align 4
@PQ_GSS_SEND_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"server tried to send oversize GSSAPI packet (%zu > %zu)\00", align 1
@PqGSSSendBuffer = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@WL_SOCKET_WRITEABLE = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WAIT_EVENT_GSS_OPEN_SERVER = common dso_local global i32 0, align 4
@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@max_packet_size = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"GSSAPI size check error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @secure_open_gssapi(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* @PqGSSResultLength, align 4
  store i32 0, i32* @PqGSSResultPointer, align 4
  store i32 0, i32* @PqGSSRecvLength, align 4
  store i32 0, i32* @PqGSSSendStart, align 4
  store i32 0, i32* @PqGSSSendPointer, align 4
  %11 = load i32*, i32** @pg_krb_server_keyfile, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32*, i32** @pg_krb_server_keyfile, align 8
  %15 = call i64 @strlen(i32* %14)
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32*, i32** @pg_krb_server_keyfile, align 8
  %19 = call i32 @setenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %18, i32 1)
  br label %20

20:                                               ; preds = %17, %13, %1
  br label %21

21:                                               ; preds = %20, %179
  %22 = bitcast %struct.TYPE_12__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_12__* @GSS_C_EMPTY_BUFFER to i8*), i64 16, i1 false)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = call i64 @read_or_wait(%struct.TYPE_13__* %23, i32 4)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %2, align 8
  br label %206

29:                                               ; preds = %21
  %30 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ntohl(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  store i32 0, i32* @PqGSSRecvLength, align 4
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PQ_GSS_RECV_BUFFER_SIZE, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load i32, i32* @FATAL, align 4
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* @PQ_GSS_RECV_BUFFER_SIZE, align 4
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %43, i32 %44)
  %46 = call i32 @ereport(i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %39, %29
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @read_or_wait(%struct.TYPE_13__* %48, i32 %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %2, align 8
  br label %206

56:                                               ; preds = %47
  %57 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* @GSS_C_NO_CREDENTIAL, align 4
  %64 = load i32, i32* @GSS_C_NO_CHANNEL_BINDINGS, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = call i32 @gss_accept_sec_context(i32* %6, i32* %62, i32 %63, %struct.TYPE_12__* %8, i32 %64, i32* %68, i32* null, %struct.TYPE_12__* %9, i32* null, i32* null, i32* null)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @GSS_ERROR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %56
  %74 = load i32, i32* @ERROR, align 4
  %75 = call i32 @gettext_noop(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @pg_GSS_error(i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = call i32 @gss_release_buffer(i32* %6, %struct.TYPE_12__* %9)
  store i64 -1, i64* %2, align 8
  br label %206

80:                                               ; preds = %56
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @GSS_S_CONTINUE_NEEDED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store i32 1, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %80
  br label %87

87:                                               ; preds = %86
  store i32 0, i32* @PqGSSRecvLength, align 4
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %175

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @htonl(i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = load i32, i32* @PQ_GSS_SEND_BUFFER_SIZE, align 4
  %99 = sext i32 %98 to i64
  %100 = sub i64 %99, 4
  %101 = icmp ugt i64 %97, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %91
  %103 = load i32, i32* @FATAL, align 4
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* @PQ_GSS_SEND_BUFFER_SIZE, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %106, i32 %110)
  %112 = call i32 @ereport(i32 %103, i32 %111)
  br label %113

113:                                              ; preds = %102, %91
  %114 = load i32, i32* @PqGSSSendBuffer, align 4
  %115 = bitcast i32* %10 to i8*
  %116 = call i32 @memcpy(i32 %114, i8* %115, i32 4)
  %117 = load i32, i32* @PqGSSSendPointer, align 4
  %118 = sext i32 %117 to i64
  %119 = add i64 %118, 4
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* @PqGSSSendPointer, align 4
  %121 = load i32, i32* @PqGSSSendBuffer, align 4
  %122 = load i32, i32* @PqGSSSendPointer, align 4
  %123 = add nsw i32 %121, %122
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @memcpy(i32 %123, i8* %125, i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @PqGSSSendPointer, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* @PqGSSSendPointer, align 4
  br label %133

133:                                              ; preds = %167, %157, %113
  %134 = load i32, i32* @PqGSSSendStart, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = add i64 4, %138
  %140 = icmp ne i64 %135, %139
  br i1 %140, label %141, label %173

141:                                              ; preds = %133
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %143 = load i32, i32* @PqGSSSendBuffer, align 4
  %144 = load i32, i32* @PqGSSSendStart, align 4
  %145 = add nsw i32 %143, %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = add i64 4, %148
  %150 = load i32, i32* @PqGSSSendStart, align 4
  %151 = sext i32 %150 to i64
  %152 = sub i64 %149, %151
  %153 = trunc i64 %152 to i32
  %154 = call i64 @secure_raw_write(%struct.TYPE_13__* %142, i32 %145, i32 %153)
  store i64 %154, i64* %7, align 8
  %155 = load i64, i64* %7, align 8
  %156 = icmp sle i64 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %141
  %158 = load i32, i32* @MyLatch, align 4
  %159 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %160 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @WAIT_EVENT_GSS_OPEN_SERVER, align 4
  %166 = call i32 @WaitLatchOrSocket(i32 %158, i32 %161, i32 %164, i32 0, i32 %165)
  br label %133

167:                                              ; preds = %141
  %168 = load i64, i64* %7, align 8
  %169 = load i32, i32* @PqGSSSendStart, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %170, %168
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* @PqGSSSendStart, align 4
  br label %133

173:                                              ; preds = %133
  store i32 0, i32* @PqGSSSendPointer, align 4
  store i32 0, i32* @PqGSSSendStart, align 4
  %174 = call i32 @gss_release_buffer(i32* %6, %struct.TYPE_12__* %9)
  br label %175

175:                                              ; preds = %173, %87
  %176 = load i32, i32* %4, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  br label %180

179:                                              ; preds = %175
  br label %21

180:                                              ; preds = %178
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %187 = load i32, i32* @PQ_GSS_SEND_BUFFER_SIZE, align 4
  %188 = sext i32 %187 to i64
  %189 = sub i64 %188, 4
  %190 = trunc i64 %189 to i32
  %191 = call i32 @gss_wrap_size_limit(i32* %6, i32 %185, i32 1, i32 %186, i32 %190, i32* @max_packet_size)
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* %5, align 4
  %193 = call i64 @GSS_ERROR(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %180
  %196 = load i32, i32* @FATAL, align 4
  %197 = call i32 @gettext_noop(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @pg_GSS_error(i32 %196, i32 %197, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %195, %180
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  store i32 1, i32* %205, align 4
  store i64 0, i64* %2, align 8
  br label %206

206:                                              ; preds = %201, %73, %54, %27
  %207 = load i64, i64* %2, align 8
  ret i64 %207
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @setenv(i8*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @read_or_wait(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i64, i32) #1

declare dso_local i32 @gss_accept_sec_context(i32*, i32*, i32, %struct.TYPE_12__*, i32, i32*, i32*, %struct.TYPE_12__*, i32*, i32*, i32*) #1

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local i32 @pg_GSS_error(i32, i32, i32, i32) #1

declare dso_local i32 @gettext_noop(i8*) #1

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @secure_raw_write(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @WaitLatchOrSocket(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gss_wrap_size_limit(i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
