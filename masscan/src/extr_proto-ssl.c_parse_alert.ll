; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-ssl.c_parse_alert.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-ssl.c_parse_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Banner1 = type { i32 }
%struct.ProtocolState = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.SSLRECORD }
%struct.SSLRECORD = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8, i8 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type opaque

@PROTO_SAFE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"TLS_FALLBACK_SCSV\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"poodle[TLS_FALLBACK_SCSV] \00", align 1
@AUTO_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"poodle[no-SSLv3] \00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c" ALERT(0x%02x%02x) \00", align 1
@PROTO_SSL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Banner1*, i8*, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* @parse_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_alert(%struct.Banner1* %0, i8* %1, %struct.ProtocolState* %2, i8* %3, i64 %4, %struct.BannerOutput* %5, %struct.InteractiveData* %6) #0 {
  %8 = alloca %struct.Banner1*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ProtocolState*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.BannerOutput*, align 8
  %14 = alloca %struct.InteractiveData*, align 8
  %15 = alloca %struct.SSLRECORD*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [64 x i8], align 16
  %20 = alloca [64 x i8], align 16
  store %struct.Banner1* %0, %struct.Banner1** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.ProtocolState* %2, %struct.ProtocolState** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.BannerOutput* %5, %struct.BannerOutput** %13, align 8
  store %struct.InteractiveData* %6, %struct.InteractiveData** %14, align 8
  %21 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %22 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.SSLRECORD* %23, %struct.SSLRECORD** %15, align 8
  %24 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %25 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %16, align 4
  %28 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %29 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %17, align 4
  %32 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %33 = bitcast %struct.InteractiveData* %32 to i8*
  %34 = call i32 @UNUSEDPARM(i8* %33)
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @UNUSEDPARM(i8* %35)
  store i32 0, i32* %18, align 4
  br label %37

37:                                               ; preds = %162, %7
  %38 = load i32, i32* %18, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %12, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %165

42:                                               ; preds = %37
  %43 = load i32, i32* %16, align 4
  switch i32 %43, label %158 [
    i32 0, label %44
    i32 1, label %58
    i32 2, label %157
  ]

44:                                               ; preds = %42
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %18, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %51 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i8 %49, i8* %53, align 4
  %54 = load i32, i32* %18, align 4
  %55 = load i64, i64* %12, align 8
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @DROPDOWN(i32 %54, i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %42, %44
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %18, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %65 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i8 %63, i8* %67, align 1
  %68 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %69 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %133

72:                                               ; preds = %58
  %73 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %74 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i8, i8* %76, align 4
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %133

80:                                               ; preds = %72
  %81 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %82 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  switch i32 %86, label %109 [
    i32 86, label %87
    i32 40, label %98
  ]

87:                                               ; preds = %80
  %88 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %89 = load i32, i32* @PROTO_SAFE, align 4
  %90 = call i32 @banout_is_contains(%struct.BannerOutput* %88, i32 %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %94 = load i32, i32* @PROTO_SAFE, align 4
  %95 = load i32, i32* @AUTO_LEN, align 4
  %96 = call i32 @banout_append(%struct.BannerOutput* %93, i32 %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %92, %87
  br label %132

98:                                               ; preds = %80
  %99 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %100 = load i32, i32* @PROTO_SAFE, align 4
  %101 = call i32 @banout_is_contains(%struct.BannerOutput* %99, i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %105 = load i32, i32* @PROTO_SAFE, align 4
  %106 = load i32, i32* @AUTO_LEN, align 4
  %107 = call i32 @banout_append(%struct.BannerOutput* %104, i32 %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %103, %98
  br label %132

109:                                              ; preds = %80
  %110 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %111 = load i32, i32* @PROTO_SAFE, align 4
  %112 = load i32, i32* @AUTO_LEN, align 4
  %113 = call i32 @banout_append(%struct.BannerOutput* %110, i32 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %115 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %116 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i8, i8* %118, align 4
  %120 = zext i8 %119 to i32
  %121 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %122 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i8, i8* %124, align 1
  %126 = call i32 @sprintf_s(i8* %114, i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %120, i8 zeroext %125)
  %127 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %128 = load i32, i32* @PROTO_SSL3, align 4
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %130 = load i32, i32* @AUTO_LEN, align 4
  %131 = call i32 @banout_append(%struct.BannerOutput* %127, i32 %128, i8* %129, i32 %130)
  br label %132

132:                                              ; preds = %109, %108, %97
  br label %152

133:                                              ; preds = %72, %58
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %135 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %136 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i8, i8* %138, align 4
  %140 = zext i8 %139 to i32
  %141 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %142 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i8, i8* %144, align 1
  %146 = call i32 @sprintf_s(i8* %134, i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %140, i8 zeroext %145)
  %147 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %148 = load i32, i32* @PROTO_SSL3, align 4
  %149 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %150 = load i32, i32* @AUTO_LEN, align 4
  %151 = call i32 @banout_append(%struct.BannerOutput* %147, i32 %148, i8* %149, i32 %150)
  br label %152

152:                                              ; preds = %133, %132
  %153 = load i32, i32* %18, align 4
  %154 = load i64, i64* %12, align 8
  %155 = load i32, i32* %16, align 4
  %156 = call i32 @DROPDOWN(i32 %153, i64 %154, i32 %155)
  br label %157

157:                                              ; preds = %42, %152
  br label %158

158:                                              ; preds = %42, %157
  %159 = load i64, i64* %12, align 8
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %18, align 4
  br label %161

161:                                              ; preds = %158
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %18, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %18, align 4
  br label %37

165:                                              ; preds = %37
  %166 = load i32, i32* %16, align 4
  %167 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %168 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %172 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 4
  ret void
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i32 @DROPDOWN(i32, i64, i32) #1

declare dso_local i32 @banout_is_contains(%struct.BannerOutput*, i32, i8*) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

declare dso_local i32 @sprintf_s(i8*, i32, i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
