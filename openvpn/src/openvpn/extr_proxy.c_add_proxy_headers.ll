; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_proxy.c_add_proxy_headers.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_proxy.c_add_proxy_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_proxy_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i64 }

@MAX_CUSTOM_HTTP_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Host:\00", align 1
@D_PROXY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Send to HTTP proxy: '%s'\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Host: %s\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"User-Agent: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.http_proxy_info*, i32, i8*, i8*)* @add_proxy_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_proxy_headers(%struct.http_proxy_info* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.http_proxy_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [512 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.http_proxy_info* %0, %struct.http_proxy_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %110, %4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @MAX_CUSTOM_HTTP_HEADER, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load %struct.http_proxy_info*, %struct.http_proxy_info** %6, align 8
  %19 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br label %28

28:                                               ; preds = %17, %13
  %29 = phi i1 [ false, %13 ], [ %27, %17 ]
  br i1 %29, label %30, label %113

30:                                               ; preds = %28
  %31 = load %struct.http_proxy_info*, %struct.http_proxy_info** %6, align 8
  %32 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %30
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %43 = load %struct.http_proxy_info*, %struct.http_proxy_info** %6, align 8
  %44 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.http_proxy_info*, %struct.http_proxy_info** %6, align 8
  %53 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, i32, i8*, i8*, ...) @openvpn_snprintf(i8* %42, i32 512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %51, i64 %60)
  %62 = load %struct.http_proxy_info*, %struct.http_proxy_info** %6, align 8
  %63 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strcasecmp(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %41
  br label %100

75:                                               ; preds = %30
  %76 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %77 = load %struct.http_proxy_info*, %struct.http_proxy_info** %6, align 8
  %78 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i8*, i32, i8*, i8*, ...) @openvpn_snprintf(i8* %76, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  %87 = load %struct.http_proxy_info*, %struct.http_proxy_info** %6, align 8
  %88 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strncasecmp(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %75
  store i32 1, i32* %12, align 4
  br label %99

99:                                               ; preds = %98, %75
  br label %100

100:                                              ; preds = %99, %74
  %101 = load i32, i32* @D_PROXY, align 4
  %102 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %103 = call i32 @msg(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  %104 = load i32, i32* %7, align 4
  %105 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %106 = call i32 @send_line_crlf(i32 %104, i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %152

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %13

113:                                              ; preds = %28
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 (i8*, i32, i8*, i8*, ...) @openvpn_snprintf(i8* %117, i32 512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  %120 = load i32, i32* @D_PROXY, align 4
  %121 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %122 = call i32 @msg(i32 %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %121)
  %123 = load i32, i32* %7, align 4
  %124 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %125 = call i32 @send_line_crlf(i32 %123, i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  br label %152

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %113
  %130 = load %struct.http_proxy_info*, %struct.http_proxy_info** %6, align 8
  %131 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %151

135:                                              ; preds = %129
  %136 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %137 = load %struct.http_proxy_info*, %struct.http_proxy_info** %6, align 8
  %138 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i8*, i32, i8*, i8*, ...) @openvpn_snprintf(i8* %136, i32 512, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* @D_PROXY, align 4
  %143 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %144 = call i32 @msg(i32 %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %143)
  %145 = load i32, i32* %7, align 4
  %146 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %147 = call i32 @send_line_crlf(i32 %145, i8* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %135
  store i32 0, i32* %5, align 4
  br label %152

150:                                              ; preds = %135
  br label %151

151:                                              ; preds = %150, %129
  store i32 1, i32* %5, align 4
  br label %152

152:                                              ; preds = %151, %149, %127, %108
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @openvpn_snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @msg(i32, i8*, i8*) #1

declare dso_local i32 @send_line_crlf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
