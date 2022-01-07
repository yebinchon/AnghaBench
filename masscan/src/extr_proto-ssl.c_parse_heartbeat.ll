; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-ssl.c_parse_heartbeat.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-ssl.c_parse_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Banner1 = type { i32 }
%struct.ProtocolState = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.SSLRECORD }
%struct.SSLRECORD = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type opaque

@PROTO_VULN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SSL[HEARTBLEED] \00", align 1
@PROTO_HEARTBLEED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Banner1*, i8*, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* @parse_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_heartbeat(%struct.Banner1* %0, i8* %1, %struct.ProtocolState* %2, i8* %3, i64 %4, %struct.BannerOutput* %5, %struct.InteractiveData* %6) #0 {
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
  %21 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.SSLRECORD* %22, %struct.SSLRECORD** %15, align 8
  %23 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %24 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %28 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %17, align 4
  %31 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %32 = bitcast %struct.InteractiveData* %31 to i8*
  %33 = call i32 @UNUSEDPARM(i8* %32)
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @UNUSEDPARM(i8* %34)
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %176, %7
  %37 = load i32, i32* %18, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %12, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %179

41:                                               ; preds = %36
  %42 = load i32, i32* %16, align 4
  switch i32 %42, label %172 [
    i32 0, label %43
    i32 1, label %73
    i32 2, label %84
    i32 3, label %126
    i32 4, label %171
  ]

43:                                               ; preds = %41
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %18, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %18, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp slt i32 2, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51, %43
  store i32 4, i32* %16, align 4
  br label %175

60:                                               ; preds = %51
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %18, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %67 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i8 %65, i8* %68, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i64, i64* %12, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @DROPDOWN(i32 %69, i64 %70, i32 %71)
  br label %73

73:                                               ; preds = %41, %60
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %18, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i64, i64* %12, align 8
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @DROPDOWN(i32 %80, i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %41, %73
  %85 = load i32, i32* %17, align 4
  %86 = shl i32 %85, 8
  store i32 %86, i32* %17, align 4
  %87 = load i8*, i8** %11, align 8
  %88 = load i32, i32* %18, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = load i32, i32* %17, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %17, align 4
  %95 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %96 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i8, i8* %97, align 4
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %121

101:                                              ; preds = %84
  %102 = load i32, i32* %17, align 4
  %103 = icmp uge i32 %102, 16
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %106 = load i32, i32* @PROTO_VULN, align 4
  %107 = call i32 @banout_append(%struct.BannerOutput* %105, i32 %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 16)
  br label %108

108:                                              ; preds = %104, %101
  %109 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %110 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %115 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %114, i32 0, i32 0
  %116 = call i32 @banout_init_base64(i32* %115)
  %117 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %118 = load i32, i32* @PROTO_HEARTBLEED, align 4
  %119 = call i32 @banout_append(%struct.BannerOutput* %117, i32 %118, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %120

120:                                              ; preds = %113, %108
  br label %121

121:                                              ; preds = %120, %84
  %122 = load i32, i32* %18, align 4
  %123 = load i64, i64* %12, align 8
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @DROPDOWN(i32 %122, i64 %123, i32 %124)
  br label %126

126:                                              ; preds = %41, %121
  %127 = load i64, i64* %12, align 8
  %128 = trunc i64 %127 to i32
  %129 = load i32, i32* %18, align 4
  %130 = sub i32 %128, %129
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp ugt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32, i32* %17, align 4
  store i32 %135, i32* %19, align 4
  br label %136

136:                                              ; preds = %134, %126
  %137 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %138 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i8, i8* %139, align 4
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %159

143:                                              ; preds = %136
  %144 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %145 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %143
  %149 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %150 = load i32, i32* @PROTO_HEARTBLEED, align 4
  %151 = load i8*, i8** %11, align 8
  %152 = load i32, i32* %18, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i32, i32* %19, align 4
  %156 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %157 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %156, i32 0, i32 0
  %158 = call i32 @banout_append_base64(%struct.BannerOutput* %149, i32 %150, i8* %154, i32 %155, i32* %157)
  br label %159

159:                                              ; preds = %148, %143, %136
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %17, align 4
  %162 = sub i32 %161, %160
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %19, align 4
  %164 = sub i32 %163, 1
  %165 = load i32, i32* %18, align 4
  %166 = add i32 %165, %164
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %17, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %159
  store i32 4, i32* %16, align 4
  br label %170

170:                                              ; preds = %169, %159
  br label %175

171:                                              ; preds = %41
  br label %172

172:                                              ; preds = %41, %171
  %173 = load i64, i64* %12, align 8
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %18, align 4
  br label %175

175:                                              ; preds = %172, %170, %59
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %18, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %18, align 4
  br label %36

179:                                              ; preds = %36
  %180 = load i32, i32* %16, align 4
  %181 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %182 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 4
  %184 = load i32, i32* %17, align 4
  %185 = load %struct.SSLRECORD*, %struct.SSLRECORD** %15, align 8
  %186 = getelementptr inbounds %struct.SSLRECORD, %struct.SSLRECORD* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  store i32 %184, i32* %187, align 4
  ret void
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i32 @DROPDOWN(i32, i64, i32) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

declare dso_local i32 @banout_init_base64(i32*) #1

declare dso_local i32 @banout_append_base64(%struct.BannerOutput*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
