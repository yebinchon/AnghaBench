; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_be_tls_open_server.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_be_tls_open_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i32*, i64, i32, i32 }

@SSL_context = common dso_local global i32 0, align 4
@COMMERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"could not initialize SSL connection: SSL context not set up\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"could not initialize SSL connection: %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"could not set SSL socket: %s\00", align 1
@WL_SOCKET_READABLE = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WL_SOCKET_WRITEABLE = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@WAIT_EVENT_SSL_OPEN_SERVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"could not accept SSL connection: %m\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"could not accept SSL connection: EOF detected\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"could not accept SSL connection: %s\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"unrecognized SSL error code: %d\00", align 1
@NID_commonName = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"SSL certificate's common name contains embedded null\00", align 1
@info_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_tls_open_server(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load i32, i32* @SSL_context, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @COMMERROR, align 4
  %28 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @ereport(i32 %27, i32 %30)
  store i32 -1, i32* %2, align 4
  br label %215

32:                                               ; preds = %1
  %33 = load i32, i32* @SSL_context, align 4
  %34 = call i64 @SSL_new(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  store i64 %34, i64* %36, align 8
  %37 = icmp ne i64 %34, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @COMMERROR, align 4
  %40 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = call i64 (...) @ERR_get_error()
  %43 = call i32 @SSLerrmessage(i64 %42)
  %44 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = call i32 @ereport(i32 %39, i32 %44)
  store i32 -1, i32* %2, align 4
  br label %215

46:                                               ; preds = %32
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @my_SSL_set_fd(%struct.TYPE_4__* %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @COMMERROR, align 4
  %55 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = call i64 (...) @ERR_get_error()
  %58 = call i32 @SSLerrmessage(i64 %57)
  %59 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = call i32 @ereport(i32 %54, i32 %59)
  store i32 -1, i32* %2, align 4
  br label %215

61:                                               ; preds = %46
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %98, %61
  %65 = call i32 (...) @ERR_clear_error()
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @SSL_accept(i64 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %143

72:                                               ; preds = %64
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @SSL_get_error(i64 %75, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = call i64 (...) @ERR_get_error()
  store i64 %78, i64* %7, align 8
  %79 = load i32, i32* %5, align 4
  switch i32 %79, label %135 [
    i32 130, label %80
    i32 129, label %80
    i32 131, label %106
    i32 132, label %121
    i32 128, label %129
  ]

80:                                               ; preds = %72, %72
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @Assert(i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 130
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %92 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %6, align 4
  br label %98

94:                                               ; preds = %80
  %95 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %96 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %94, %90
  %99 = load i32, i32* @MyLatch, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @WAIT_EVENT_SSL_OPEN_SERVER, align 4
  %105 = call i32 @WaitLatchOrSocket(i32 %99, i32 %100, i32 %103, i32 0, i32 %104)
  br label %64

106:                                              ; preds = %72
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32, i32* @COMMERROR, align 4
  %111 = call i32 (...) @errcode_for_socket_access()
  %112 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %113 = call i32 @ereport(i32 %110, i32 %112)
  br label %120

114:                                              ; preds = %106
  %115 = load i32, i32* @COMMERROR, align 4
  %116 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %117 = call i32 @errcode(i32 %116)
  %118 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %119 = call i32 @ereport(i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %114, %109
  br label %142

121:                                              ; preds = %72
  %122 = load i32, i32* @COMMERROR, align 4
  %123 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %124 = call i32 @errcode(i32 %123)
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @SSLerrmessage(i64 %125)
  %127 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  %128 = call i32 @ereport(i32 %122, i32 %127)
  br label %142

129:                                              ; preds = %72
  %130 = load i32, i32* @COMMERROR, align 4
  %131 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %132 = call i32 @errcode(i32 %131)
  %133 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %134 = call i32 @ereport(i32 %130, i32 %133)
  br label %142

135:                                              ; preds = %72
  %136 = load i32, i32* @COMMERROR, align 4
  %137 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %138 = call i32 @errcode(i32 %137)
  %139 = load i32, i32* %5, align 4
  %140 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = call i32 @ereport(i32 %136, i32 %140)
  br label %142

142:                                              ; preds = %135, %129, %121, %120
  store i32 -1, i32* %2, align 4
  br label %215

143:                                              ; preds = %64
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = call i32* @SSL_get_peer_certificate(i64 %146)
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  store i32* %147, i32** %149, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i8* null, i8** %151, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  store i32 0, i32* %153, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %211

158:                                              ; preds = %143
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @X509_get_subject_name(i32* %161)
  %163 = load i32, i32* @NID_commonName, align 4
  %164 = call i32 @X509_NAME_get_text_by_NID(i32 %162, i32 %163, i8* null, i32 0)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, -1
  br i1 %166, label %167, label %208

167:                                              ; preds = %158
  %168 = load i32, i32* @TopMemoryContext, align 4
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  %171 = call i8* @MemoryContextAlloc(i32 %168, i32 %170)
  store i8* %171, i8** %9, align 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @X509_get_subject_name(i32* %174)
  %176 = load i32, i32* @NID_commonName, align 4
  %177 = load i8*, i8** %9, align 8
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  %180 = call i32 @X509_NAME_get_text_by_NID(i32 %175, i32 %176, i8* %177, i32 %179)
  store i32 %180, i32* %4, align 4
  %181 = load i8*, i8** %9, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  store i8 0, i8* %184, align 1
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %167
  %189 = load i8*, i8** %9, align 8
  %190 = call i32 @pfree(i8* %189)
  store i32 -1, i32* %2, align 4
  br label %215

191:                                              ; preds = %167
  %192 = load i32, i32* %8, align 4
  %193 = load i8*, i8** %9, align 8
  %194 = call i32 @strlen(i8* %193)
  %195 = icmp ne i32 %192, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %191
  %197 = load i32, i32* @COMMERROR, align 4
  %198 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %199 = call i32 @errcode(i32 %198)
  %200 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %201 = call i32 @ereport(i32 %197, i32 %200)
  %202 = load i8*, i8** %9, align 8
  %203 = call i32 @pfree(i8* %202)
  store i32 -1, i32* %2, align 4
  br label %215

204:                                              ; preds = %191
  %205 = load i8*, i8** %9, align 8
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %204, %158
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  store i32 1, i32* %210, align 8
  br label %211

211:                                              ; preds = %208, %143
  %212 = load i32, i32* @SSL_context, align 4
  %213 = load i32, i32* @info_cb, align 4
  %214 = call i32 @SSL_CTX_set_info_callback(i32 %212, i32 %213)
  store i32 0, i32* %2, align 4
  br label %215

215:                                              ; preds = %211, %196, %188, %142, %53, %38, %26
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @SSL_new(i32) #1

declare dso_local i32 @SSLerrmessage(i64) #1

declare dso_local i64 @ERR_get_error(...) #1

declare dso_local i32 @my_SSL_set_fd(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_accept(i64) #1

declare dso_local i32 @SSL_get_error(i64, i32) #1

declare dso_local i32 @WaitLatchOrSocket(i32, i32, i32, i32, i32) #1

declare dso_local i32 @errcode_for_socket_access(...) #1

declare dso_local i32* @SSL_get_peer_certificate(i64) #1

declare dso_local i32 @X509_NAME_get_text_by_NID(i32, i32, i8*, i32) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

declare dso_local i8* @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SSL_CTX_set_info_callback(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
