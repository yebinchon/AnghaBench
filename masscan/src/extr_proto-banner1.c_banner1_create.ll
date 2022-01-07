; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-banner1.c_banner1_create.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-banner1.c_banner1_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i64 }
%struct.TYPE_24__ = type { i32 (%struct.Banner1*)* }
%struct.Banner1 = type { %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_24__** }
%struct.TYPE_18__ = type { i32 (%struct.Banner1*)* }
%struct.TYPE_34__ = type { i32 (%struct.Banner1*)* }
%struct.TYPE_31__ = type { i32 (%struct.Banner1*)* }
%struct.TYPE_22__ = type { i32 (%struct.Banner1*)* }
%struct.TYPE_30__ = type { i32 (%struct.Banner1*)* }
%struct.TYPE_20__ = type { i32 (%struct.Banner1*)* }
%struct.TYPE_25__ = type { i32 (%struct.Banner1*)* }
%struct.TYPE_23__ = type { i32 (%struct.Banner1*)* }
%struct.TYPE_21__ = type { i32 (%struct.Banner1*)* }
%struct.TYPE_33__ = type { i32 (%struct.Banner1*)* }
%struct.TYPE_32__ = type { i32 (%struct.Banner1*)* }
%struct.TYPE_28__ = type { i32 (%struct.Banner1*)* }
%struct.TYPE_19__ = type { i32 (%struct.Banner1*)* }
%struct.TYPE_29__ = type { i32 (%struct.Banner1*)* }

@.str = private unnamed_addr constant [8 x i8] c"banner1\00", align 1
@SMACK_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@patterns = common dso_local global %struct.TYPE_27__* null, align 8
@banner_http = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@banner_smb0 = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@banner_smb1 = common dso_local global %struct.TYPE_34__ zeroinitializer, align 8
@banner_ssl = common dso_local global %struct.TYPE_31__ zeroinitializer, align 8
@banner_memcached = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@banner_telnet = common dso_local global %struct.TYPE_30__ zeroinitializer, align 8
@banner_rdp = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@banner_ftp = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@banner_imap4 = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@banner_pop3 = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@banner_smtp = common dso_local global %struct.TYPE_33__ zeroinitializer, align 8
@banner_ssh = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@banner_vnc = common dso_local global %struct.TYPE_28__ zeroinitializer, align 8
@banner_scripting = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@banner_versioning = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Banner1* @banner1_create() #0 {
  %1 = alloca %struct.Banner1*, align 8
  %2 = alloca i32, align 4
  %3 = call %struct.Banner1* @CALLOC(i32 1, i32 16)
  store %struct.Banner1* %3, %struct.Banner1** %1, align 8
  %4 = load i32, i32* @SMACK_CASE_INSENSITIVE, align 4
  %5 = call i32 @smack_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %7 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %40, %0
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** @patterns, align 8
  %10 = load i32, i32* %2, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %8
  %17 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %18 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** @patterns, align 8
  %21 = load i32, i32* %2, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** @patterns, align 8
  %27 = load i32, i32* %2, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** @patterns, align 8
  %34 = load i32, i32* %2, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @smack_add_pattern(i32 %19, i64 %25, i32 %31, i32 %32, i32 %38)
  br label %40

40:                                               ; preds = %16
  %41 = load i32, i32* %2, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %8

43:                                               ; preds = %8
  %44 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %45 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @smack_compile(i32 %46)
  %48 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %49 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %51, i64 80
  store %struct.TYPE_24__* @banner_http, %struct.TYPE_24__** %52, align 8
  %53 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %54 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %56, i64 8080
  store %struct.TYPE_24__* @banner_http, %struct.TYPE_24__** %57, align 8
  %58 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %59 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %61, i64 139
  store %struct.TYPE_24__* bitcast (%struct.TYPE_18__* @banner_smb0 to %struct.TYPE_24__*), %struct.TYPE_24__** %62, align 8
  %63 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %64 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %66, i64 445
  store %struct.TYPE_24__* bitcast (%struct.TYPE_34__* @banner_smb1 to %struct.TYPE_24__*), %struct.TYPE_24__** %67, align 8
  %68 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %69 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %71, i64 443
  store %struct.TYPE_24__* bitcast (%struct.TYPE_31__* @banner_ssl to %struct.TYPE_24__*), %struct.TYPE_24__** %72, align 8
  %73 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %74 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %76, i64 465
  store %struct.TYPE_24__* bitcast (%struct.TYPE_31__* @banner_ssl to %struct.TYPE_24__*), %struct.TYPE_24__** %77, align 8
  %78 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %79 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %81, i64 990
  store %struct.TYPE_24__* bitcast (%struct.TYPE_31__* @banner_ssl to %struct.TYPE_24__*), %struct.TYPE_24__** %82, align 8
  %83 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %84 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %86, i64 991
  store %struct.TYPE_24__* bitcast (%struct.TYPE_31__* @banner_ssl to %struct.TYPE_24__*), %struct.TYPE_24__** %87, align 8
  %88 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %89 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %91, i64 992
  store %struct.TYPE_24__* bitcast (%struct.TYPE_31__* @banner_ssl to %struct.TYPE_24__*), %struct.TYPE_24__** %92, align 8
  %93 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %94 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %96, i64 993
  store %struct.TYPE_24__* bitcast (%struct.TYPE_31__* @banner_ssl to %struct.TYPE_24__*), %struct.TYPE_24__** %97, align 8
  %98 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %99 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %101, i64 994
  store %struct.TYPE_24__* bitcast (%struct.TYPE_31__* @banner_ssl to %struct.TYPE_24__*), %struct.TYPE_24__** %102, align 8
  %103 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %104 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %106, i64 995
  store %struct.TYPE_24__* bitcast (%struct.TYPE_31__* @banner_ssl to %struct.TYPE_24__*), %struct.TYPE_24__** %107, align 8
  %108 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %109 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %111, i64 2083
  store %struct.TYPE_24__* bitcast (%struct.TYPE_31__* @banner_ssl to %struct.TYPE_24__*), %struct.TYPE_24__** %112, align 8
  %113 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %114 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %116, i64 2087
  store %struct.TYPE_24__* bitcast (%struct.TYPE_31__* @banner_ssl to %struct.TYPE_24__*), %struct.TYPE_24__** %117, align 8
  %118 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %119 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %121, i64 2096
  store %struct.TYPE_24__* bitcast (%struct.TYPE_31__* @banner_ssl to %struct.TYPE_24__*), %struct.TYPE_24__** %122, align 8
  %123 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %124 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %126, i64 8443
  store %struct.TYPE_24__* bitcast (%struct.TYPE_31__* @banner_ssl to %struct.TYPE_24__*), %struct.TYPE_24__** %127, align 8
  %128 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %129 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %131, i64 9050
  store %struct.TYPE_24__* bitcast (%struct.TYPE_31__* @banner_ssl to %struct.TYPE_24__*), %struct.TYPE_24__** %132, align 8
  %133 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %134 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %136, i64 8140
  store %struct.TYPE_24__* bitcast (%struct.TYPE_31__* @banner_ssl to %struct.TYPE_24__*), %struct.TYPE_24__** %137, align 8
  %138 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %139 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %141, i64 11211
  store %struct.TYPE_24__* bitcast (%struct.TYPE_22__* @banner_memcached to %struct.TYPE_24__*), %struct.TYPE_24__** %142, align 8
  %143 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %144 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %146, i64 23
  store %struct.TYPE_24__* bitcast (%struct.TYPE_30__* @banner_telnet to %struct.TYPE_24__*), %struct.TYPE_24__** %147, align 8
  %148 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %149 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %151, i64 3389
  store %struct.TYPE_24__* bitcast (%struct.TYPE_20__* @banner_rdp to %struct.TYPE_24__*), %struct.TYPE_24__** %152, align 8
  %153 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @banner_ftp, i32 0, i32 0), align 8
  %154 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %155 = call i32 %153(%struct.Banner1* %154)
  %156 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @banner_http, i32 0, i32 0), align 8
  %157 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %158 = call i32 %156(%struct.Banner1* %157)
  %159 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @banner_imap4, i32 0, i32 0), align 8
  %160 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %161 = call i32 %159(%struct.Banner1* %160)
  %162 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @banner_memcached, i32 0, i32 0), align 8
  %163 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %164 = call i32 %162(%struct.Banner1* %163)
  %165 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @banner_pop3, i32 0, i32 0), align 8
  %166 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %167 = call i32 %165(%struct.Banner1* %166)
  %168 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @banner_smtp, i32 0, i32 0), align 8
  %169 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %170 = call i32 %168(%struct.Banner1* %169)
  %171 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @banner_ssh, i32 0, i32 0), align 8
  %172 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %173 = call i32 %171(%struct.Banner1* %172)
  %174 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @banner_ssl, i32 0, i32 0), align 8
  %175 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %176 = call i32 %174(%struct.Banner1* %175)
  %177 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @banner_smb0, i32 0, i32 0), align 8
  %178 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %179 = call i32 %177(%struct.Banner1* %178)
  %180 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @banner_smb1, i32 0, i32 0), align 8
  %181 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %182 = call i32 %180(%struct.Banner1* %181)
  %183 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @banner_telnet, i32 0, i32 0), align 8
  %184 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %185 = call i32 %183(%struct.Banner1* %184)
  %186 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @banner_rdp, i32 0, i32 0), align 8
  %187 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %188 = call i32 %186(%struct.Banner1* %187)
  %189 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @banner_vnc, i32 0, i32 0), align 8
  %190 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %191 = call i32 %189(%struct.Banner1* %190)
  %192 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @banner_scripting, i32 0, i32 0), align 8
  %193 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %194 = call i32 %192(%struct.Banner1* %193)
  %195 = load i32 (%struct.Banner1*)*, i32 (%struct.Banner1*)** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @banner_versioning, i32 0, i32 0), align 8
  %196 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  %197 = call i32 %195(%struct.Banner1* %196)
  %198 = load %struct.Banner1*, %struct.Banner1** %1, align 8
  ret %struct.Banner1* %198
}

declare dso_local %struct.Banner1* @CALLOC(i32, i32) #1

declare dso_local i32 @smack_create(i8*, i32) #1

declare dso_local i32 @smack_add_pattern(i32, i64, i32, i32, i32) #1

declare dso_local i32 @smack_compile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
