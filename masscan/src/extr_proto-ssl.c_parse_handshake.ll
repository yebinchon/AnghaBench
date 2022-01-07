; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-ssl.c_parse_handshake.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-ssl.c_parse_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Banner1 = type { i32 }
%struct.ProtocolState = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.SSLRECORD }
%struct.SSLRECORD = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i8 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type { i32 }

@parse_handshake.heartbleed_request = internal constant [16 x i8] c"\15\03\02\00\02\01\80\18\03\02\00\03\01@\00\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Banner1*, i8*, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* @parse_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_handshake(%struct.Banner1* %0, i8* %1, %struct.ProtocolState* %2, i8* %3, i64 %4, %struct.BannerOutput* %5, %struct.InteractiveData* %6) #0 {
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
  %19 = alloca i32, align 4
  store %struct.Banner1* %0, %struct.Banner1** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.ProtocolState* %2, %struct.ProtocolState** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.BannerOutput* %5, %struct.BannerOutput** %13, align 8
  store %struct.InteractiveData* %6, %struct.InteractiveData** %14, align 8
  %20 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %21 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.SSLRECORD* %22, %struct.SSLRECORD** %15, align 8
  %23 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %24 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %28 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %31

31:                                               ; preds = %180, %7
  %32 = load i32, i32* %18, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* %12, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %183

36:                                               ; preds = %31
  %37 = load i32, i32* %16, align 4
  switch i32 %37, label %176 [
    i32 0, label %38
    i32 1, label %65
    i32 2, label %76
    i32 3, label %91
    i32 4, label %121
    i32 5, label %175
  ]

38:                                               ; preds = %36
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* %18, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 128
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 5, i32* %16, align 4
  br label %179

48:                                               ; preds = %38
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %18, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %55 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store i8 %53, i8* %56, align 4
  %57 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %58 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i64, i64* %12, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @DROPDOWN(i32 %61, i64 %62, i32 %63)
  br label %65

65:                                               ; preds = %36, %48
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %18, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i64, i64* %12, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @DROPDOWN(i32 %72, i64 %73, i32 %74)
  br label %76

76:                                               ; preds = %36, %65
  %77 = load i32, i32* %17, align 4
  %78 = shl i32 %77, 8
  store i32 %78, i32* %17, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* %18, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i32, i32* %17, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i64, i64* %12, align 8
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @DROPDOWN(i32 %87, i64 %88, i32 %89)
  br label %91

91:                                               ; preds = %36, %76
  %92 = load i32, i32* %17, align 4
  %93 = shl i32 %92, 8
  store i32 %93, i32* %17, align 4
  %94 = load i8*, i8** %11, align 8
  %95 = load i32, i32* %18, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i32, i32* %17, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %17, align 4
  %102 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %103 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i8, i8* %104, align 4
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %116

108:                                              ; preds = %91
  %109 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %110 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %115 = call i32 @tcp_transmit(%struct.InteractiveData* %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @parse_handshake.heartbleed_request, i64 0, i64 0), i32 15, i32 0)
  br label %116

116:                                              ; preds = %113, %108, %91
  %117 = load i32, i32* %18, align 4
  %118 = load i64, i64* %12, align 8
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @DROPDOWN(i32 %117, i64 %118, i32 %119)
  br label %121

121:                                              ; preds = %36, %116
  %122 = load i64, i64* %12, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* %18, align 4
  %125 = sub i32 %123, %124
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %17, align 4
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* %19, align 4
  br label %131

131:                                              ; preds = %129, %121
  %132 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %133 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i8, i8* %134, align 4
  %136 = zext i8 %135 to i32
  switch i32 %136, label %138 [
    i32 0, label %137
    i32 1, label %137
    i32 3, label %137
    i32 4, label %137
    i32 12, label %137
    i32 13, label %137
    i32 14, label %137
    i32 15, label %137
    i32 16, label %137
    i32 20, label %137
    i32 22, label %137
    i32 2, label %139
    i32 11, label %151
  ]

137:                                              ; preds = %131, %131, %131, %131, %131, %131, %131, %131, %131, %131, %131
  br label %138

138:                                              ; preds = %131, %137
  br label %163

139:                                              ; preds = %131
  %140 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %143 = load i8*, i8** %11, align 8
  %144 = load i32, i32* %18, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i32, i32* %19, align 4
  %148 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %149 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %150 = call i32 @parse_server_hello(%struct.Banner1* %140, i8* %141, %struct.ProtocolState* %142, i8* %146, i32 %147, %struct.BannerOutput* %148, %struct.InteractiveData* %149)
  br label %163

151:                                              ; preds = %131
  %152 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = load i32, i32* %18, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i32, i32* %19, align 4
  %160 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %161 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %162 = call i32 @parse_server_cert(%struct.Banner1* %152, i8* %153, %struct.ProtocolState* %154, i8* %158, i32 %159, %struct.BannerOutput* %160, %struct.InteractiveData* %161)
  br label %163

163:                                              ; preds = %151, %139, %138
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %17, align 4
  %166 = sub i32 %165, %164
  store i32 %166, i32* %17, align 4
  %167 = load i32, i32* %19, align 4
  %168 = sub i32 %167, 1
  %169 = load i32, i32* %18, align 4
  %170 = add i32 %169, %168
  store i32 %170, i32* %18, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  store i32 0, i32* %16, align 4
  br label %174

174:                                              ; preds = %173, %163
  br label %179

175:                                              ; preds = %36
  br label %176

176:                                              ; preds = %36, %175
  %177 = load i64, i64* %12, align 8
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %18, align 4
  br label %179

179:                                              ; preds = %176, %174, %47
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %18, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %18, align 4
  br label %31

183:                                              ; preds = %31
  %184 = load i32, i32* %16, align 4
  %185 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %186 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 4
  %188 = load i32, i32* %17, align 4
  %189 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %190 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  store i32 %188, i32* %191, align 4
  ret void
}

declare dso_local i32 @DROPDOWN(i32, i64, i32) #1

declare dso_local i32 @tcp_transmit(%struct.InteractiveData*, i8*, i32, i32) #1

declare dso_local i32 @parse_server_hello(%struct.Banner1*, i8*, %struct.ProtocolState*, i8*, i32, %struct.BannerOutput*, %struct.InteractiveData*) #1

declare dso_local i32 @parse_server_cert(%struct.Banner1*, i8*, %struct.ProtocolState*, i8*, i32, %struct.BannerOutput*, %struct.InteractiveData*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
