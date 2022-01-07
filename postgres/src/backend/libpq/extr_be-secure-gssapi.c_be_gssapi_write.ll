; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-gssapi.c_be_gssapi_write.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-gssapi.c_be_gssapi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i8* }

@PqGSSSendPointer = common dso_local global i64 0, align 8
@PqGSSSendStart = common dso_local global i64 0, align 8
@PqGSSSendBuffer = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@max_packet_size = common dso_local global i64 0, align 8
@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"GSSAPI wrap error\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"outgoing GSSAPI message would not use confidentiality\00", align 1
@PQ_GSS_SEND_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"server tried to send oversize GSSAPI packet (%zu > %zu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @be_gssapi_write(%struct.TYPE_10__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %133, %69, %3
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @PqGSSSendPointer, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ true, %20 ], [ %25, %23 ]
  br i1 %27, label %28, label %164

28:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %16, align 8
  %32 = load i64, i64* @PqGSSSendPointer, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  %35 = load i64, i64* @PqGSSSendPointer, align 8
  %36 = load i64, i64* @PqGSSSendStart, align 8
  %37 = sub nsw i64 %35, %36
  store i64 %37, i64* %18, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = load i64, i64* @PqGSSSendBuffer, align 8
  %40 = load i64, i64* @PqGSSSendStart, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64, i64* %18, align 8
  %43 = call i64 @secure_raw_write(%struct.TYPE_10__* %38, i64 %41, i64 %42)
  store i64 %43, i64* %17, align 8
  %44 = load i64, i64* %17, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %34
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @EAGAIN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EWOULDBLOCK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* @errno, align 8
  %59 = load i64, i64* @EINTR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %53, %49
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %4, align 8
  br label %166

63:                                               ; preds = %57, %46
  %64 = load i64, i64* %17, align 8
  store i64 %64, i64* %4, align 8
  br label %166

65:                                               ; preds = %34
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* %18, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i64, i64* %17, align 8
  %71 = load i64, i64* @PqGSSSendStart, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* @PqGSSSendStart, align 8
  br label %20

73:                                               ; preds = %65
  store i64 0, i64* @PqGSSSendStart, align 8
  store i64 0, i64* @PqGSSSendPointer, align 8
  br label %74

74:                                               ; preds = %73, %28
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %9, align 8
  store i64 %78, i64* %4, align 8
  br label %166

79:                                               ; preds = %74
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @max_packet_size, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i64, i64* @max_packet_size, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  br label %89

86:                                               ; preds = %79
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i8* null, i8** %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %100 = call i64 @gss_wrap(i64* %11, i32 %98, i32 1, i32 %99, %struct.TYPE_9__* %12, i32* %14, %struct.TYPE_9__* %13)
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* @GSS_S_COMPLETE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %89
  %105 = load i32, i32* @FATAL, align 4
  %106 = call i32 @gettext_noop(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @pg_GSS_error(i32 %105, i32 %106, i64 %107, i64 %108)
  br label %110

110:                                              ; preds = %104, %89
  %111 = load i32, i32* %14, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* @FATAL, align 4
  %115 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %116 = call i32 @ereport(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @PQ_GSS_SEND_BUFFER_SIZE, align 4
  %121 = sext i32 %120 to i64
  %122 = sub i64 %121, 1
  %123 = icmp ugt i64 %119, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %117
  %125 = load i32, i32* @FATAL, align 4
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @PQ_GSS_SEND_BUFFER_SIZE, align 4
  %129 = sext i32 %128 to i64
  %130 = sub i64 %129, 1
  %131 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %127, i64 %130)
  %132 = call i32 @ereport(i32 %125, i32 %131)
  br label %133

133:                                              ; preds = %124, %117
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %9, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %8, align 8
  %141 = sub i64 %140, %139
  store i64 %141, i64* %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call signext i8 @htonl(i64 %143)
  store i8 %144, i8* %15, align 1
  %145 = load i64, i64* @PqGSSSendBuffer, align 8
  %146 = load i64, i64* @PqGSSSendPointer, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @memcpy(i64 %147, i8* %15, i32 1)
  %149 = load i64, i64* @PqGSSSendPointer, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* @PqGSSSendPointer, align 8
  %151 = load i64, i64* @PqGSSSendBuffer, align 8
  %152 = load i64, i64* @PqGSSSendPointer, align 8
  %153 = add nsw i64 %151, %152
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 @memcpy(i64 %153, i8* %155, i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @PqGSSSendPointer, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* @PqGSSSendPointer, align 8
  br label %20

164:                                              ; preds = %26
  %165 = load i64, i64* %9, align 8
  store i64 %165, i64* %4, align 8
  br label %166

166:                                              ; preds = %164, %77, %63, %61
  %167 = load i64, i64* %4, align 8
  ret i64 %167
}

declare dso_local i64 @secure_raw_write(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i64 @gss_wrap(i64*, i32, i32, i32, %struct.TYPE_9__*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @pg_GSS_error(i32, i32, i64, i64) #1

declare dso_local i32 @gettext_noop(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local signext i8 @htonl(i64) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
