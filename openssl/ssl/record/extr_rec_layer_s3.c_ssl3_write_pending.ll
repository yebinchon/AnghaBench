; ModuleID = '/home/carl/AnghaBench/openssl/ssl/record/extr_rec_layer_s3.c_ssl3_write_pending.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/record/extr_rec_layer_s3.c_ssl3_write_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32* }
%struct.TYPE_6__ = type { i64, i8*, i32, i32, i64, i32* }

@SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_WRITE_PENDING = common dso_local global i32 0, align 4
@SSL_R_BAD_WRITE_RETRY = common dso_local global i32 0, align 4
@SSL_WRITING = common dso_local global i32 0, align 4
@SSL3_RT_APPLICATION_DATA = common dso_local global i32 0, align 4
@SSL_R_BIO_NOT_SET = common dso_local global i32 0, align 4
@SSL_NOTHING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_write_pending(%struct.TYPE_7__* %0, i32 %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %47, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40, %33, %5
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %50 = load i32, i32* @SSL_F_SSL3_WRITE_PENDING, align 4
  %51 = load i32, i32* @SSL_R_BAD_WRITE_RETRY, align 4
  %52 = call i32 @SSLfatal(%struct.TYPE_7__* %48, i32 %49, i32 %50, i32 %51)
  store i32 -1, i32* %6, align 4
  br label %213

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %202, %177, %69, %53
  %55 = load i32*, i32** %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = call i64 @SSL3_BUFFER_get_left(i32* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i64, i64* %14, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %61, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i64, i64* %14, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %14, align 8
  br label %54

72:                                               ; preds = %60, %54
  %73 = call i32 (...) @clear_sys_error()
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %143

78:                                               ; preds = %72
  %79 = load i32, i32* @SSL_WRITING, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @BIO_get_ktls_send(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %78
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @SSL3_RT_APPLICATION_DATA, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @BIO_flush(i32* %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %6, align 4
  br label %213

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %87, %78
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = call i64 @BIO_get_ktls_send(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @SSL3_RT_APPLICATION_DATA, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @BIO_set_ktls_ctrl_msg(i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %107, %101
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = load i64, i64* %14, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = call i32* @SSL3_BUFFER_get_buf(i32* %123)
  %125 = load i32*, i32** %13, align 8
  %126 = load i64, i64* %14, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = call i64 @SSL3_BUFFER_get_offset(i32* %127)
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = bitcast i32* %129 to i8*
  %131 = load i32*, i32** %13, align 8
  %132 = load i64, i64* %14, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = call i64 @SSL3_BUFFER_get_left(i32* %133)
  %135 = trunc i64 %134 to i32
  %136 = call i32 @BIO_write(i32* %120, i8* %130, i32 %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %117
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %15, align 8
  br label %142

142:                                              ; preds = %139, %117
  br label %149

143:                                              ; preds = %72
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %145 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %146 = load i32, i32* @SSL_F_SSL3_WRITE_PENDING, align 4
  %147 = load i32, i32* @SSL_R_BIO_NOT_SET, align 4
  %148 = call i32 @SSLfatal(%struct.TYPE_7__* %144, i32 %145, i32 %146, i32 %147)
  store i32 -1, i32* %12, align 4
  br label %149

149:                                              ; preds = %143, %142
  %150 = load i32, i32* %12, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %187

152:                                              ; preds = %149
  %153 = load i64, i64* %15, align 8
  %154 = load i32*, i32** %13, align 8
  %155 = load i64, i64* %14, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = call i64 @SSL3_BUFFER_get_left(i32* %156)
  %158 = icmp eq i64 %153, %157
  br i1 %158, label %159, label %187

159:                                              ; preds = %152
  %160 = load i32*, i32** %13, align 8
  %161 = load i64, i64* %14, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = call i32 @SSL3_BUFFER_set_left(i32* %162, i32 0)
  %164 = load i32*, i32** %13, align 8
  %165 = load i64, i64* %14, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i64, i64* %15, align 8
  %168 = call i32 @SSL3_BUFFER_add_offset(i32* %166, i64 %167)
  %169 = load i64, i64* %14, align 8
  %170 = add i64 %169, 1
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = icmp ult i64 %170, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %159
  br label %54

178:                                              ; preds = %159
  %179 = load i32, i32* @SSL_NOTHING, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = load i64*, i64** %11, align 8
  store i64 %185, i64* %186, align 8
  store i32 1, i32* %6, align 4
  br label %213

187:                                              ; preds = %152, %149
  %188 = load i32, i32* %12, align 4
  %189 = icmp sle i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %187
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %192 = call i64 @SSL_IS_DTLS(%struct.TYPE_7__* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %190
  %195 = load i32*, i32** %13, align 8
  %196 = load i64, i64* %14, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = call i32 @SSL3_BUFFER_set_left(i32* %197, i32 0)
  br label %199

199:                                              ; preds = %194, %190
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %6, align 4
  br label %213

201:                                              ; preds = %187
  br label %202

202:                                              ; preds = %201
  %203 = load i32*, i32** %13, align 8
  %204 = load i64, i64* %14, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i64, i64* %15, align 8
  %207 = call i32 @SSL3_BUFFER_add_offset(i32* %205, i64 %206)
  %208 = load i32*, i32** %13, align 8
  %209 = load i64, i64* %14, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i64, i64* %15, align 8
  %212 = call i32 @SSL3_BUFFER_sub_left(i32* %210, i64 %211)
  br label %54

213:                                              ; preds = %199, %178, %98, %47
  %214 = load i32, i32* %6, align 4
  ret i32 %214
}

declare dso_local i32 @SSLfatal(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i64 @SSL3_BUFFER_get_left(i32*) #1

declare dso_local i32 @clear_sys_error(...) #1

declare dso_local i64 @BIO_get_ktls_send(i32*) #1

declare dso_local i32 @BIO_flush(i32*) #1

declare dso_local i32 @BIO_set_ktls_ctrl_msg(i32*, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32* @SSL3_BUFFER_get_buf(i32*) #1

declare dso_local i64 @SSL3_BUFFER_get_offset(i32*) #1

declare dso_local i32 @SSL3_BUFFER_set_left(i32*, i32) #1

declare dso_local i32 @SSL3_BUFFER_add_offset(i32*, i64) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_7__*) #1

declare dso_local i32 @SSL3_BUFFER_sub_left(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
