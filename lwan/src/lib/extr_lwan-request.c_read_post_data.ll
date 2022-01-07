; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_read_post_data.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_read_post_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { %struct.TYPE_11__*, %struct.lwan_request_parser_helper* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.lwan_config }
%struct.lwan_config = type { i64, i64, i32 }
%struct.lwan_request_parser_helper = type { i8*, i32, i64, %struct.TYPE_12__, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i8*, i64 }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.lwan_value = type { i8*, i64 }

@HTTP_BAD_REQUEST = common dso_local global i32 0, align 4
@HTTP_TOO_LARGE = common dso_local global i32 0, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@HTTP_INTERNAL_ERROR = common dso_local global i32 0, align 4
@post_data_finalizer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_request*)* @read_post_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_post_data(%struct.lwan_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lwan_request*, align 8
  %4 = alloca %struct.lwan_request_parser_helper*, align 8
  %5 = alloca %struct.lwan_config*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.lwan_value, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %3, align 8
  %13 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %14 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %13, i32 0, i32 1
  %15 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %14, align 8
  store %struct.lwan_request_parser_helper* %15, %struct.lwan_request_parser_helper** %4, align 8
  %16 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %17 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store %struct.lwan_config* %23, %struct.lwan_config** %5, align 8
  %24 = load %struct.lwan_config*, %struct.lwan_config** %5, align 8
  %25 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %28 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @UNLIKELY(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @HTTP_BAD_REQUEST, align 4
  store i32 %37, i32* %2, align 4
  br label %172

38:                                               ; preds = %1
  %39 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %40 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @parse_long(i32 %42, i32 -1)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp slt i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i64 @UNLIKELY(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @HTTP_BAD_REQUEST, align 4
  store i32 %50, i32* %2, align 4
  br label %172

51:                                               ; preds = %38
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp sge i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @UNLIKELY(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @HTTP_TOO_LARGE, align 4
  store i32 %59, i32* %2, align 4
  br label %172

60:                                               ; preds = %51
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %9, align 8
  %62 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %63 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i64 0, i64* %10, align 8
  br label %108

67:                                               ; preds = %60
  %68 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %69 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %68, i32 0, i32 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %74 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %73, i32 0, i32 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %72, i64 %78
  store i8* %79, i8** %11, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %82 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = ptrtoint i8* %80 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  store i64 %86, i64* %10, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp uge i64 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %67
  %91 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %92 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %95 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %99 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  store i64 %97, i64* %100, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %103 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 %101
  store i8* %105, i8** %103, align 8
  %106 = load i32, i32* @HTTP_OK, align 4
  store i32 %106, i32* %2, align 4
  br label %172

107:                                              ; preds = %67
  br label %108

108:                                              ; preds = %107, %66
  %109 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %110 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %109, i32 0, i32 0
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %9, align 8
  %115 = add i64 %114, 1
  %116 = load %struct.lwan_config*, %struct.lwan_config** %5, align 8
  %117 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @alloc_post_buffer(i32 %113, i64 %115, i32 %118)
  store i8* %119, i8** %7, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = icmp ne i8* %120, null
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i64 @UNLIKELY(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %108
  %127 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %127, i32* %2, align 4
  br label %172

128:                                              ; preds = %108
  %129 = load i8*, i8** %7, align 8
  %130 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %131 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store i8* %129, i8** %132, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %135 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  store i64 %133, i64* %136, align 8
  %137 = load i64, i64* %10, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %128
  %140 = load i8*, i8** %7, align 8
  %141 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %142 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i64, i64* %10, align 8
  %145 = call i8* @mempcpy(i8* %140, i8* %143, i64 %144)
  store i8* %145, i8** %7, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* %9, align 8
  %148 = sub i64 %147, %146
  store i64 %148, i64* %9, align 8
  br label %149

149:                                              ; preds = %139, %128
  %150 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %151 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %150, i32 0, i32 0
  store i8* null, i8** %151, align 8
  %152 = call i64 @time(i32* null)
  %153 = load %struct.lwan_config*, %struct.lwan_config** %5, align 8
  %154 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %152, %155
  %157 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %158 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %157, i32 0, i32 2
  store i64 %156, i64* %158, align 8
  %159 = load i64, i64* %9, align 8
  %160 = call i32 @calculate_n_packets(i64 %159)
  %161 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %162 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %12, i32 0, i32 0
  %164 = load i8*, i8** %7, align 8
  store i8* %164, i8** %163, align 8
  %165 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %12, i32 0, i32 1
  %166 = load i64, i64* %9, align 8
  store i64 %166, i64* %165, align 8
  %167 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %168 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %12, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* @post_data_finalizer, align 4
  %171 = call i32 @read_from_request_socket(%struct.lwan_request* %167, %struct.lwan_value* %12, i64 %169, i32 %170)
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %149, %126, %90, %58, %49, %36
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i64 @parse_long(i32, i32) #1

declare dso_local i8* @alloc_post_buffer(i32, i64, i32) #1

declare dso_local i8* @mempcpy(i8*, i8*, i64) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @calculate_n_packets(i64) #1

declare dso_local i32 @read_from_request_socket(%struct.lwan_request*, %struct.lwan_value*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
