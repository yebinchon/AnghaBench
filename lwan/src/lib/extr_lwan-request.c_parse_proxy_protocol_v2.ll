; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_parse_proxy_protocol_v2.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_parse_proxy_protocol_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { i32, %struct.lwan_proxy*, %struct.lwan_request_parser_helper* }
%struct.lwan_proxy = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { %struct.sockaddr_in, %struct.sockaddr_in6 }
%struct.sockaddr_in = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.sockaddr_in, %struct.sockaddr_in6 }
%struct.lwan_request_parser_helper = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.proxy_header_v2 = type { i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@REQUEST_PROXIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lwan_request*, i8*)* @parse_proxy_protocol_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_proxy_protocol_v2(%struct.lwan_request* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lwan_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.proxy_header_v2*, align 8
  %7 = alloca %struct.lwan_request_parser_helper*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lwan_proxy*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  %14 = alloca %struct.sockaddr_in6*, align 8
  %15 = alloca %struct.sockaddr_in*, align 8
  %16 = alloca %struct.sockaddr_in*, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.proxy_header_v2*
  store %struct.proxy_header_v2* %18, %struct.proxy_header_v2** %6, align 8
  %19 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %20 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %19, i32 0, i32 2
  %21 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %20, align 8
  store %struct.lwan_request_parser_helper* %21, %struct.lwan_request_parser_helper** %7, align 8
  store i32 16, i32* %8, align 4
  %22 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %23 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %22, i32 0, i32 1
  %24 = load %struct.lwan_proxy*, %struct.lwan_proxy** %23, align 8
  store %struct.lwan_proxy* %24, %struct.lwan_proxy** %10, align 8
  %25 = load %struct.proxy_header_v2*, %struct.proxy_header_v2** %6, align 8
  %26 = getelementptr inbounds %struct.proxy_header_v2, %struct.proxy_header_v2* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ntohs(i32 %27)
  %29 = trunc i64 %28 to i32
  %30 = add i32 16, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ugt i32 %31, 44
  %33 = zext i1 %32 to i32
  %34 = call i64 @UNLIKELY(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %181

37:                                               ; preds = %2
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %7, align 8
  %40 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp uge i32 %38, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @UNLIKELY(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i8* null, i8** %3, align 8
  br label %181

49:                                               ; preds = %37
  %50 = load %struct.proxy_header_v2*, %struct.proxy_header_v2** %6, align 8
  %51 = getelementptr inbounds %struct.proxy_header_v2, %struct.proxy_header_v2* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 33
  %54 = zext i1 %53 to i32
  %55 = call i64 @LIKELY(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %152

57:                                               ; preds = %49
  %58 = load %struct.proxy_header_v2*, %struct.proxy_header_v2** %6, align 8
  %59 = getelementptr inbounds %struct.proxy_header_v2, %struct.proxy_header_v2* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 17
  br i1 %61, label %62, label %104

62:                                               ; preds = %57
  %63 = load %struct.lwan_proxy*, %struct.lwan_proxy** %10, align 8
  %64 = getelementptr inbounds %struct.lwan_proxy, %struct.lwan_proxy* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store %struct.sockaddr_in* %65, %struct.sockaddr_in** %11, align 8
  %66 = load %struct.lwan_proxy*, %struct.lwan_proxy** %10, align 8
  %67 = getelementptr inbounds %struct.lwan_proxy, %struct.lwan_proxy* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store %struct.sockaddr_in* %68, %struct.sockaddr_in** %12, align 8
  %69 = load i32, i32* @AF_INET, align 4
  %70 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.proxy_header_v2*, %struct.proxy_header_v2** %6, align 8
  %75 = getelementptr inbounds %struct.proxy_header_v2, %struct.proxy_header_v2* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load %struct.proxy_header_v2*, %struct.proxy_header_v2** %6, align 8
  %83 = getelementptr inbounds %struct.proxy_header_v2, %struct.proxy_header_v2* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.proxy_header_v2*, %struct.proxy_header_v2** %6, align 8
  %90 = getelementptr inbounds %struct.proxy_header_v2, %struct.proxy_header_v2* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %95 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load %struct.proxy_header_v2*, %struct.proxy_header_v2** %6, align 8
  %98 = getelementptr inbounds %struct.proxy_header_v2, %struct.proxy_header_v2* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %151

104:                                              ; preds = %57
  %105 = load %struct.proxy_header_v2*, %struct.proxy_header_v2** %6, align 8
  %106 = getelementptr inbounds %struct.proxy_header_v2, %struct.proxy_header_v2* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 33
  br i1 %108, label %109, label %149

109:                                              ; preds = %104
  %110 = load %struct.lwan_proxy*, %struct.lwan_proxy** %10, align 8
  %111 = getelementptr inbounds %struct.lwan_proxy, %struct.lwan_proxy* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  store %struct.sockaddr_in6* %112, %struct.sockaddr_in6** %13, align 8
  %113 = load %struct.lwan_proxy*, %struct.lwan_proxy** %10, align 8
  %114 = getelementptr inbounds %struct.lwan_proxy, %struct.lwan_proxy* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  store %struct.sockaddr_in6* %115, %struct.sockaddr_in6** %14, align 8
  %116 = load i32, i32* @AF_INET6, align 4
  %117 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %118 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %120 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %119, i32 0, i32 2
  store i32 %116, i32* %120, align 4
  %121 = load %struct.proxy_header_v2*, %struct.proxy_header_v2** %6, align 8
  %122 = getelementptr inbounds %struct.proxy_header_v2, %struct.proxy_header_v2* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %127 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.proxy_header_v2*, %struct.proxy_header_v2** %6, align 8
  %129 = getelementptr inbounds %struct.proxy_header_v2, %struct.proxy_header_v2* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %134 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.proxy_header_v2*, %struct.proxy_header_v2** %6, align 8
  %136 = getelementptr inbounds %struct.proxy_header_v2, %struct.proxy_header_v2* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %141 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.proxy_header_v2*, %struct.proxy_header_v2** %6, align 8
  %143 = getelementptr inbounds %struct.proxy_header_v2, %struct.proxy_header_v2* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %148 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  br label %150

149:                                              ; preds = %104
  store i8* null, i8** %3, align 8
  br label %181

150:                                              ; preds = %109
  br label %151

151:                                              ; preds = %150, %62
  br label %171

152:                                              ; preds = %49
  %153 = load %struct.proxy_header_v2*, %struct.proxy_header_v2** %6, align 8
  %154 = getelementptr inbounds %struct.proxy_header_v2, %struct.proxy_header_v2* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 32
  br i1 %156, label %157, label %169

157:                                              ; preds = %152
  %158 = load %struct.lwan_proxy*, %struct.lwan_proxy** %10, align 8
  %159 = getelementptr inbounds %struct.lwan_proxy, %struct.lwan_proxy* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  store %struct.sockaddr_in* %160, %struct.sockaddr_in** %15, align 8
  %161 = load %struct.lwan_proxy*, %struct.lwan_proxy** %10, align 8
  %162 = getelementptr inbounds %struct.lwan_proxy, %struct.lwan_proxy* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  store %struct.sockaddr_in* %163, %struct.sockaddr_in** %16, align 8
  %164 = load i32, i32* @AF_UNSPEC, align 4
  %165 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %166 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  %167 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %168 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %167, i32 0, i32 0
  store i32 %164, i32* %168, align 4
  br label %170

169:                                              ; preds = %152
  store i8* null, i8** %3, align 8
  br label %181

170:                                              ; preds = %157
  br label %171

171:                                              ; preds = %170, %151
  %172 = load i32, i32* @REQUEST_PROXIED, align 4
  %173 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %174 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load i8*, i8** %5, align 8
  %178 = load i32, i32* %9, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  store i8* %180, i8** %3, align 8
  br label %181

181:                                              ; preds = %171, %169, %149, %48, %36
  %182 = load i8*, i8** %3, align 8
  ret i8* %182
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i64 @LIKELY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
