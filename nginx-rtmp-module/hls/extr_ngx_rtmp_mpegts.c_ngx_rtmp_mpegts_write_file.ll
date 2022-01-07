; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_mpegts.c_ngx_rtmp_mpegts_write_file.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_mpegts.c_ngx_rtmp_mpegts_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32, i32, i32, i32, i32 }

@ngx_rtmp_mpegts_write_file.buf = internal global [1024 x i32] zeroinitializer, align 16
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mpegts: write %uz bytes\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"mpegts: write %uz encrypted bytes\00", align 1
@AES_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i64)* @ngx_rtmp_mpegts_write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_mpegts_write_file(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @ngx_log_debug1(i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i64 @ngx_write_fd(i32 %25, i32* %26, i32 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i32, i32* @NGX_ERROR, align 4
  store i32 %33, i32* %4, align 4
  br label %169

34:                                               ; preds = %16
  %35 = load i32, i32* @NGX_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %169

36:                                               ; preds = %3
  %37 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @ngx_log_debug1(i32 %37, i32 %40, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  store i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @ngx_rtmp_mpegts_write_file.buf, i64 0, i64 0), i32** %8, align 8
  store i64 4096, i64* %9, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %97

47:                                               ; preds = %36
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %50, %51
  %53 = icmp uge i64 %52, 16
  br i1 %53, label %54, label %97

54:                                               ; preds = %47
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 16, %65
  %67 = call i32 @ngx_memcpy(i32* %61, i32* %62, i64 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 16, %70
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 %71
  store i32* %73, i32** %6, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 16, %76
  %78 = load i64, i64* %7, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %7, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @AES_ENCRYPT, align 4
  %90 = call i32 @AES_cbc_encrypt(i32* %82, i32* %83, i64 16, i32* %85, i32 %88, i32 %89)
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 16
  store i32* %92, i32** %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = sub i64 %93, 16
  store i64 %94, i64* %9, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %54, %47, %36
  br label %98

98:                                               ; preds = %147, %97
  %99 = load i64, i64* %7, align 8
  %100 = and i64 %99, -16
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %10, align 8
  %102 = icmp ugt i64 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %98
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %9, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i64, i64* %9, align 8
  store i64 %108, i64* %10, align 8
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @AES_ENCRYPT, align 4
  %119 = call i32 @AES_cbc_encrypt(i32* %110, i32* %111, i64 %112, i32* %114, i32 %117, i32 %118)
  %120 = load i64, i64* %10, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 %120
  store i32* %122, i32** %6, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %7, align 8
  %125 = sub i64 %124, %123
  store i64 %125, i64* %7, align 8
  br label %131

126:                                              ; preds = %98
  %127 = load i32*, i32** %8, align 8
  %128 = icmp eq i32* %127, getelementptr inbounds ([1024 x i32], [1024 x i32]* @ngx_rtmp_mpegts_write_file.buf, i64 0, i64 0)
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %148

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130, %109
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = ptrtoint i32* %135 to i64
  %137 = sub i64 %136, ptrtoint ([1024 x i32]* @ngx_rtmp_mpegts_write_file.buf to i64)
  %138 = sdiv exact i64 %137, 4
  %139 = load i64, i64* %10, align 8
  %140 = add i64 %138, %139
  %141 = trunc i64 %140 to i32
  %142 = call i64 @ngx_write_fd(i32 %134, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @ngx_rtmp_mpegts_write_file.buf, i64 0, i64 0), i32 %141)
  store i64 %142, i64* %11, align 8
  %143 = load i64, i64* %11, align 8
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %131
  %146 = load i32, i32* @NGX_ERROR, align 4
  store i32 %146, i32* %4, align 4
  br label %169

147:                                              ; preds = %131
  store i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @ngx_rtmp_mpegts_write_file.buf, i64 0, i64 0), i32** %8, align 8
  store i64 4096, i64* %9, align 8
  br label %98

148:                                              ; preds = %129
  %149 = load i64, i64* %7, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %148
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32*, i32** %6, align 8
  %160 = load i64, i64* %7, align 8
  %161 = call i32 @ngx_memcpy(i32* %158, i32* %159, i64 %160)
  %162 = load i64, i64* %7, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, %162
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %151, %148
  %168 = load i32, i32* @NGX_OK, align 4
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %167, %145, %34, %32
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ngx_write_fd(i32, i32*, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @AES_cbc_encrypt(i32*, i32*, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
