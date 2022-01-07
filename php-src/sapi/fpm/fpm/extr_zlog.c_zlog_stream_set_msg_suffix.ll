; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_set_msg_suffix.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_set_msg_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i32, i32, i32*, i32*, i32, i32 }

@ZLOG_TRUE = common dso_local global i32 0, align 4
@ZLOG_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlog_stream_set_msg_suffix(%struct.zlog_stream* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zlog_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.zlog_stream* %0, %struct.zlog_stream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %10 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %15 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13, %3
  %19 = load i32, i32* @ZLOG_TRUE, align 4
  store i32 %19, i32* %4, align 4
  br label %188

20:                                               ; preds = %13
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %100

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %100

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @strlen(i8* %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %31 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @strlen(i8* %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %36 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %38 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %41 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = add nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %8, align 8
  %46 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %47 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %26
  %51 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %52 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @free(i32* %53)
  br label %55

55:                                               ; preds = %50, %26
  %56 = load i64, i64* %8, align 8
  %57 = call i8* @malloc(i64 %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %60 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %59, i32 0, i32 3
  store i32* %58, i32** %60, align 8
  %61 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %62 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @ZLOG_FALSE, align 4
  store i32 %66, i32* %4, align 4
  br label %188

67:                                               ; preds = %55
  %68 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %69 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %72 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %78 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %77, i32 0, i32 2
  store i32* %76, i32** %78, align 8
  %79 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %80 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %84 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = call i32 @memcpy(i32* %81, i8* %82, i64 %87)
  %89 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %90 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %94 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = call i32 @memcpy(i32* %91, i8* %92, i64 %97)
  %99 = load i32, i32* @ZLOG_TRUE, align 4
  store i32 %99, i32* %4, align 4
  br label %188

100:                                              ; preds = %23, %20
  %101 = load i8*, i8** %6, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %143

103:                                              ; preds = %100
  %104 = load i8*, i8** %6, align 8
  %105 = call i8* @strlen(i8* %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %108 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %110 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call i8* @malloc(i64 %114)
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %118 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %117, i32 0, i32 3
  store i32* %116, i32** %118, align 8
  %119 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %120 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %103
  %124 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %125 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @free(i32* %126)
  br label %128

128:                                              ; preds = %123, %103
  %129 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %130 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* @ZLOG_FALSE, align 4
  store i32 %134, i32* %4, align 4
  br label %188

135:                                              ; preds = %128
  %136 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %137 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @memcpy(i32* %138, i8* %139, i64 %140)
  %142 = load i32, i32* @ZLOG_TRUE, align 4
  store i32 %142, i32* %4, align 4
  br label %188

143:                                              ; preds = %100
  %144 = load i8*, i8** %7, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %186

146:                                              ; preds = %143
  %147 = load i8*, i8** %7, align 8
  %148 = call i8* @strlen(i8* %147)
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %151 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %153 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %8, align 8
  %157 = load i64, i64* %8, align 8
  %158 = call i8* @malloc(i64 %157)
  %159 = bitcast i8* %158 to i32*
  %160 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %161 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %160, i32 0, i32 2
  store i32* %159, i32** %161, align 8
  %162 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %163 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %146
  %167 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %168 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @free(i32* %169)
  br label %171

171:                                              ; preds = %166, %146
  %172 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %173 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = icmp eq i32* %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i32, i32* @ZLOG_FALSE, align 4
  store i32 %177, i32* %4, align 4
  br label %188

178:                                              ; preds = %171
  %179 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %180 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = load i64, i64* %8, align 8
  %184 = call i32 @memcpy(i32* %181, i8* %182, i64 %183)
  %185 = load i32, i32* @ZLOG_TRUE, align 4
  store i32 %185, i32* %4, align 4
  br label %188

186:                                              ; preds = %143
  %187 = load i32, i32* @ZLOG_TRUE, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %186, %178, %176, %135, %133, %67, %65, %18
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
