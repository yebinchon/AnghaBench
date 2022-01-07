; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-gssapi.c_pg_GSS_write.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-gssapi.c_pg_GSS_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i8* }
%struct.TYPE_11__ = type { i32, i32 }

@GSS_C_EMPTY_BUFFER = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PqGSSSendPointer = common dso_local global i64 0, align 8
@PqGSSSendStart = common dso_local global i64 0, align 8
@PqGSSSendBuffer = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@max_packet_size = common dso_local global i64 0, align 8
@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"GSSAPI wrap error\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"outgoing GSSAPI message would not use confidentiality\0A\00", align 1
@PQ_GSS_SEND_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"client tried to send oversize GSSAPI packet (%zu > %zu)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pg_GSS_write(%struct.TYPE_11__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_10__* @GSS_C_EMPTY_BUFFER to i8*), i64 16, i1 false)
  store i64 -1, i64* %12, align 8
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %21

21:                                               ; preds = %134, %67, %3
  %22 = load i64, i64* %13, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* @PqGSSSendPointer, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ true, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %165

29:                                               ; preds = %27
  store i32 0, i32* %15, align 4
  %30 = load i64, i64* @PqGSSSendPointer, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %29
  %33 = load i64, i64* @PqGSSSendPointer, align 8
  %34 = load i64, i64* @PqGSSSendStart, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %18, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = load i64, i64* @PqGSSSendBuffer, align 8
  %38 = load i64, i64* @PqGSSSendStart, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* %18, align 8
  %41 = call i64 @pqsecure_raw_write(%struct.TYPE_11__* %36, i64 %39, i64 %40)
  store i64 %41, i64* %17, align 8
  %42 = load i64, i64* %17, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %32
  %45 = load i64, i64* %14, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @EAGAIN, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @EWOULDBLOCK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @EINTR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %51, %47
  %60 = load i64, i64* %14, align 8
  store i64 %60, i64* %4, align 8
  br label %175

61:                                               ; preds = %55, %44
  %62 = load i64, i64* %17, align 8
  store i64 %62, i64* %4, align 8
  br label %175

63:                                               ; preds = %32
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* %18, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* @PqGSSSendStart, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* @PqGSSSendStart, align 8
  br label %21

71:                                               ; preds = %63
  store i64 0, i64* @PqGSSSendStart, align 8
  store i64 0, i64* @PqGSSSendPointer, align 8
  br label %72

72:                                               ; preds = %71, %29
  %73 = load i64, i64* %13, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %14, align 8
  store i64 %76, i64* %4, align 8
  br label %175

77:                                               ; preds = %72
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* @max_packet_size, align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, i64* @max_packet_size, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  br label %87

84:                                               ; preds = %77
  %85 = load i64, i64* %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i8*, i8** %6, align 8
  %89 = load i64, i64* %14, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i8* null, i8** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %98 = call i32 @gss_wrap(i32* %11, i32 %96, i32 1, i32 %97, %struct.TYPE_10__* %8, i32* %15, %struct.TYPE_10__* %9)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @GSS_S_COMPLETE, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %87
  %103 = call i32 @libpq_gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @pg_GSS_error(i32 %103, %struct.TYPE_11__* %104, i32 %105, i32 %106)
  br label %167

108:                                              ; preds = %87
  %109 = load i32, i32* %15, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = call i32 @libpq_gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %115 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %113, i32 %114)
  br label %167

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @PQ_GSS_SEND_BUFFER_SIZE, align 4
  %121 = sext i32 %120 to i64
  %122 = sub i64 %121, 1
  %123 = icmp ugt i64 %119, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = call i32 @libpq_gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @PQ_GSS_SEND_BUFFER_SIZE, align 4
  %131 = sext i32 %130 to i64
  %132 = sub i64 %131, 1
  %133 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %126, i32 %127, i64 %129, i64 %132)
  br label %167

134:                                              ; preds = %117
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %14, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %13, align 8
  %142 = sub i64 %141, %140
  store i64 %142, i64* %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call signext i8 @htonl(i64 %144)
  store i8 %145, i8* %16, align 1
  %146 = load i64, i64* @PqGSSSendBuffer, align 8
  %147 = load i64, i64* @PqGSSSendPointer, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @memcpy(i64 %148, i8* %16, i32 1)
  %150 = load i64, i64* @PqGSSSendPointer, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* @PqGSSSendPointer, align 8
  %152 = load i64, i64* @PqGSSSendBuffer, align 8
  %153 = load i64, i64* @PqGSSSendPointer, align 8
  %154 = add nsw i64 %152, %153
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @memcpy(i64 %154, i8* %156, i32 %159)
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @PqGSSSendPointer, align 8
  %164 = add i64 %163, %162
  store i64 %164, i64* @PqGSSSendPointer, align 8
  br label %21

165:                                              ; preds = %27
  %166 = load i64, i64* %14, align 8
  store i64 %166, i64* %12, align 8
  br label %167

167:                                              ; preds = %165, %124, %111, %102
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = call i32 @gss_release_buffer(i32* %11, %struct.TYPE_10__* %9)
  br label %173

173:                                              ; preds = %171, %167
  %174 = load i64, i64* %12, align 8
  store i64 %174, i64* %4, align 8
  br label %175

175:                                              ; preds = %173, %75, %61, %59
  %176 = load i64, i64* %4, align 8
  ret i64 %176
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @pqsecure_raw_write(%struct.TYPE_11__*, i64, i64) #2

declare dso_local i32 @gss_wrap(i32*, i32, i32, i32, %struct.TYPE_10__*, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @pg_GSS_error(i32, %struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @libpq_gettext(i8*) #2

declare dso_local i32 @printfPQExpBuffer(i32*, i32, ...) #2

declare dso_local signext i8 @htonl(i64) #2

declare dso_local i32 @memcpy(i64, i8*, i32) #2

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
