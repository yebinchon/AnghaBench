; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-banner1.c_banner1_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-banner1.c_banner1_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* }
%struct.Banner1 = type { i32, i32 }
%struct.ProtocolState = type { i32, i32, i32, %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i8 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type { i32 }
%struct.TYPE_34__ = type { i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* }
%struct.TYPE_31__ = type { i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* }
%struct.TYPE_20__ = type { i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* }
%struct.TYPE_21__ = type { i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* }
%struct.TYPE_23__ = type { i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* }
%struct.TYPE_33__ = type { i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* }
%struct.TYPE_24__ = type { i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* }
%struct.TYPE_32__ = type { i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* }
%struct.TYPE_18__ = type { i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* }
%struct.TYPE_29__ = type { i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* }
%struct.TYPE_22__ = type { i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* }
%struct.TYPE_19__ = type { i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* }
%struct.TYPE_30__ = type { i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* }

@SMACK_NOT_FOUND = common dso_local global i64 0, align 8
@patterns = common dso_local global %struct.TYPE_28__* null, align 8
@banner_ftp = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@banner_smtp = common dso_local global %struct.TYPE_34__ zeroinitializer, align 8
@banner_telnet = common dso_local global %struct.TYPE_31__ zeroinitializer, align 8
@banner_rdp = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@banner_pop3 = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@banner_imap4 = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@banner_ssh = common dso_local global %struct.TYPE_33__ zeroinitializer, align 8
@banner_http = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@banner_ssl = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@banner_smb1 = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@banner_vnc = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@banner_memcached = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@banner_scripting = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@banner_versioning = common dso_local global %struct.TYPE_30__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"banner1: internal error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @banner1_parse(%struct.Banner1* %0, %struct.ProtocolState* %1, i8* %2, i64 %3, %struct.BannerOutput* %4, %struct.InteractiveData* %5) #0 {
  %7 = alloca %struct.Banner1*, align 8
  %8 = alloca %struct.ProtocolState*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.BannerOutput*, align 8
  %12 = alloca %struct.InteractiveData*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.Banner1* %0, %struct.Banner1** %7, align 8
  store %struct.ProtocolState* %1, %struct.ProtocolState** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.BannerOutput* %4, %struct.BannerOutput** %11, align 8
  store %struct.InteractiveData* %5, %struct.InteractiveData** %12, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %20 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %320 [
    i32 139, label %22
    i32 143, label %22
    i32 144, label %152
    i32 134, label %164
    i32 130, label %176
    i32 137, label %188
    i32 138, label %200
    i32 141, label %212
    i32 133, label %224
    i32 132, label %224
    i32 142, label %236
    i32 131, label %248
    i32 135, label %260
    i32 128, label %272
    i32 140, label %284
    i32 136, label %296
    i32 129, label %308
  ]

22:                                               ; preds = %6, %6
  %23 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %24 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %27 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %26, i32 0, i32 2
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i64 @smack_search_next(i32 %25, i32* %27, i8* %28, i32* %14, i32 %30)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @SMACK_NOT_FOUND, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** @patterns, align 8
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %15, align 4
  br label %42

41:                                               ; preds = %22
  store i32 -1, i32* %15, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %146

45:                                               ; preds = %42
  %46 = load i32, i32* %15, align 4
  %47 = icmp eq i32 %46, 131
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %50 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %146

53:                                               ; preds = %48, %45
  store i32 0, i32* %16, align 4
  br label %54

54:                                               ; preds = %76, %53
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** @patterns, align 8
  %56 = load i32, i32* %16, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %54
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** @patterns, align 8
  %64 = load i32, i32* %16, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %70 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %68, %71
  br label %73

73:                                               ; preds = %62, %54
  %74 = phi i1 [ false, %54 ], [ %72, %62 ]
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %16, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %16, align 4
  br label %54

79:                                               ; preds = %73
  %80 = load i32, i32* %15, align 4
  switch i32 %80, label %112 [
    i32 144, label %81
    i32 128, label %101
  ]

81:                                               ; preds = %79
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** @patterns, align 8
  %83 = load i64, i64* %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %100

88:                                               ; preds = %81
  %89 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %90 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 25
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %95 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 587
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %88
  store i32 134, i32* %15, align 4
  br label %99

99:                                               ; preds = %98, %93
  br label %100

100:                                              ; preds = %99, %81
  br label %112

101:                                              ; preds = %79
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** @patterns, align 8
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = trunc i32 %106 to i8
  %108 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %109 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  store i8 %107, i8* %111, align 4
  br label %112

112:                                              ; preds = %79, %101, %100
  %113 = load i32, i32* %15, align 4
  %114 = trunc i32 %113 to i16
  %115 = zext i16 %114 to i32
  %116 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %117 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %119 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %118, i32 0, i32 2
  store i32 0, i32* %119, align 4
  %120 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %121 = call i8* @banout_string(%struct.BannerOutput* %120, i32 143)
  store i8* %121, i8** %17, align 8
  %122 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %123 = call i32 @banout_string_length(%struct.BannerOutput* %122, i32 143)
  store i32 %123, i32* %18, align 4
  %124 = load i8*, i8** %17, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %112
  %127 = load i32, i32* %18, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %131 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %132 = load i8*, i8** %17, align 8
  %133 = load i32, i32* %18, align 4
  %134 = zext i32 %133 to i64
  %135 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %136 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %137 = call i32 @banner1_parse(%struct.Banner1* %130, %struct.ProtocolState* %131, i8* %132, i64 %134, %struct.BannerOutput* %135, %struct.InteractiveData* %136)
  br label %138

138:                                              ; preds = %129, %126, %112
  %139 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %140 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %144 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %145 = call i32 @banner1_parse(%struct.Banner1* %139, %struct.ProtocolState* %140, i8* %141, i64 %142, %struct.BannerOutput* %143, %struct.InteractiveData* %144)
  br label %151

146:                                              ; preds = %48, %42
  %147 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = load i64, i64* %10, align 8
  %150 = call i32 @banout_append(%struct.BannerOutput* %147, i32 143, i8* %148, i64 %149)
  br label %151

151:                                              ; preds = %146, %138
  br label %323

152:                                              ; preds = %6
  %153 = load i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)*, i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @banner_ftp, i32 0, i32 0), align 8
  %154 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %155 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %156 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %162 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %163 = call i32 %153(%struct.Banner1* %154, i32 %157, %struct.ProtocolState* %158, i8* %159, i64 %160, %struct.BannerOutput* %161, %struct.InteractiveData* %162)
  br label %323

164:                                              ; preds = %6
  %165 = load i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)*, i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)** getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @banner_smtp, i32 0, i32 0), align 8
  %166 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %167 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %168 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = load i64, i64* %10, align 8
  %173 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %174 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %175 = call i32 %165(%struct.Banner1* %166, i32 %169, %struct.ProtocolState* %170, i8* %171, i64 %172, %struct.BannerOutput* %173, %struct.InteractiveData* %174)
  br label %323

176:                                              ; preds = %6
  %177 = load i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)*, i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @banner_telnet, i32 0, i32 0), align 8
  %178 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %179 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %180 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %186 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %187 = call i32 %177(%struct.Banner1* %178, i32 %181, %struct.ProtocolState* %182, i8* %183, i64 %184, %struct.BannerOutput* %185, %struct.InteractiveData* %186)
  br label %323

188:                                              ; preds = %6
  %189 = load i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)*, i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @banner_rdp, i32 0, i32 0), align 8
  %190 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %191 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %192 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %195 = load i8*, i8** %9, align 8
  %196 = load i64, i64* %10, align 8
  %197 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %198 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %199 = call i32 %189(%struct.Banner1* %190, i32 %193, %struct.ProtocolState* %194, i8* %195, i64 %196, %struct.BannerOutput* %197, %struct.InteractiveData* %198)
  br label %323

200:                                              ; preds = %6
  %201 = load i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)*, i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @banner_pop3, i32 0, i32 0), align 8
  %202 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %203 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %204 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = load i64, i64* %10, align 8
  %209 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %210 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %211 = call i32 %201(%struct.Banner1* %202, i32 %205, %struct.ProtocolState* %206, i8* %207, i64 %208, %struct.BannerOutput* %209, %struct.InteractiveData* %210)
  br label %323

212:                                              ; preds = %6
  %213 = load i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)*, i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @banner_imap4, i32 0, i32 0), align 8
  %214 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %215 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %216 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %219 = load i8*, i8** %9, align 8
  %220 = load i64, i64* %10, align 8
  %221 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %222 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %223 = call i32 %213(%struct.Banner1* %214, i32 %217, %struct.ProtocolState* %218, i8* %219, i64 %220, %struct.BannerOutput* %221, %struct.InteractiveData* %222)
  br label %323

224:                                              ; preds = %6, %6
  %225 = load i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)*, i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)** getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @banner_ssh, i32 0, i32 0), align 8
  %226 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %227 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %228 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %231 = load i8*, i8** %9, align 8
  %232 = load i64, i64* %10, align 8
  %233 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %234 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %235 = call i32 %225(%struct.Banner1* %226, i32 %229, %struct.ProtocolState* %230, i8* %231, i64 %232, %struct.BannerOutput* %233, %struct.InteractiveData* %234)
  br label %323

236:                                              ; preds = %6
  %237 = load i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)*, i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @banner_http, i32 0, i32 0), align 8
  %238 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %239 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %240 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %243 = load i8*, i8** %9, align 8
  %244 = load i64, i64* %10, align 8
  %245 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %246 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %247 = call i32 %237(%struct.Banner1* %238, i32 %241, %struct.ProtocolState* %242, i8* %243, i64 %244, %struct.BannerOutput* %245, %struct.InteractiveData* %246)
  br label %323

248:                                              ; preds = %6
  %249 = load i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)*, i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)** getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @banner_ssl, i32 0, i32 0), align 8
  %250 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %251 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %252 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %255 = load i8*, i8** %9, align 8
  %256 = load i64, i64* %10, align 8
  %257 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %258 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %259 = call i32 %249(%struct.Banner1* %250, i32 %253, %struct.ProtocolState* %254, i8* %255, i64 %256, %struct.BannerOutput* %257, %struct.InteractiveData* %258)
  br label %323

260:                                              ; preds = %6
  %261 = load i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)*, i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @banner_smb1, i32 0, i32 0), align 8
  %262 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %263 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %264 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %267 = load i8*, i8** %9, align 8
  %268 = load i64, i64* %10, align 8
  %269 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %270 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %271 = call i32 %261(%struct.Banner1* %262, i32 %265, %struct.ProtocolState* %266, i8* %267, i64 %268, %struct.BannerOutput* %269, %struct.InteractiveData* %270)
  br label %323

272:                                              ; preds = %6
  %273 = load i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)*, i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @banner_vnc, i32 0, i32 0), align 8
  %274 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %275 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %276 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %279 = load i8*, i8** %9, align 8
  %280 = load i64, i64* %10, align 8
  %281 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %282 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %283 = call i32 %273(%struct.Banner1* %274, i32 %277, %struct.ProtocolState* %278, i8* %279, i64 %280, %struct.BannerOutput* %281, %struct.InteractiveData* %282)
  br label %323

284:                                              ; preds = %6
  %285 = load i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)*, i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @banner_memcached, i32 0, i32 0), align 8
  %286 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %287 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %288 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %291 = load i8*, i8** %9, align 8
  %292 = load i64, i64* %10, align 8
  %293 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %294 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %295 = call i32 %285(%struct.Banner1* %286, i32 %289, %struct.ProtocolState* %290, i8* %291, i64 %292, %struct.BannerOutput* %293, %struct.InteractiveData* %294)
  br label %323

296:                                              ; preds = %6
  %297 = load i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)*, i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @banner_scripting, i32 0, i32 0), align 8
  %298 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %299 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %300 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %303 = load i8*, i8** %9, align 8
  %304 = load i64, i64* %10, align 8
  %305 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %306 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %307 = call i32 %297(%struct.Banner1* %298, i32 %301, %struct.ProtocolState* %302, i8* %303, i64 %304, %struct.BannerOutput* %305, %struct.InteractiveData* %306)
  br label %323

308:                                              ; preds = %6
  %309 = load i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)*, i32 (%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)** getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @banner_versioning, i32 0, i32 0), align 8
  %310 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %311 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %312 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %315 = load i8*, i8** %9, align 8
  %316 = load i64, i64* %10, align 8
  %317 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %318 = load %struct.InteractiveData*, %struct.InteractiveData** %12, align 8
  %319 = call i32 %309(%struct.Banner1* %310, i32 %313, %struct.ProtocolState* %314, i8* %315, i64 %316, %struct.BannerOutput* %317, %struct.InteractiveData* %318)
  br label %323

320:                                              ; preds = %6
  %321 = load i32, i32* @stderr, align 4
  %322 = call i32 @fprintf(i32 %321, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %323

323:                                              ; preds = %320, %308, %296, %284, %272, %260, %248, %236, %224, %212, %200, %188, %176, %164, %152, %151
  %324 = load %struct.ProtocolState*, %struct.ProtocolState** %8, align 8
  %325 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  ret i32 %326
}

declare dso_local i64 @smack_search_next(i32, i32*, i8*, i32*, i32) #1

declare dso_local i8* @banout_string(%struct.BannerOutput*, i32) #1

declare dso_local i32 @banout_string_length(%struct.BannerOutput*, i32) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
