; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_parse_mqtt.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_parse_mqtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32*, i32, %struct.TYPE_5__, i32 (%struct.mg_connection*, i32, i32*)*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@MG_MQTT_CMD_SUBACK = common dso_local global i32 0, align 4
@mqtt_eh = common dso_local global i32 0, align 4
@MG_EV_RECV = common dso_local global i32 0, align 4
@mqtt_long_payload_len = common dso_local global i32 0, align 4
@MG_MQTT_CMD_PUBLISH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\00\06/topic\00", align 1
@mqtt_very_long_payload_len = common dso_local global i32 0, align 4
@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"/topic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_mqtt_parse_mqtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_mqtt_parse_mqtt() #0 {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca [4 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call %struct.mg_connection* (...) @create_test_connection()
  store %struct.mg_connection* %8, %struct.mg_connection** %1, align 8
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %10 = load i32, i32* @MG_MQTT_CMD_SUBACK, align 4
  %11 = shl i32 %10, 4
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %9, align 1
  %13 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 2, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 1, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 1, i8* %15, align 1
  store i32 0, i32* %4, align 4
  store i32 4, i32* %5, align 4
  %16 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %17 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %16, i32 0, i32 0
  store i32* %4, i32** %17, align 8
  %18 = load i32, i32* @mqtt_eh, align 4
  %19 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %20 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %22 = call i32 @mg_set_protocol_mqtt(%struct.mg_connection* %21)
  %23 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %24 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %23, i32 0, i32 2
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @mbuf_append(%struct.TYPE_5__* %24, i8* %25, i32 %26)
  %28 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %29 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %28, i32 0, i32 3
  %30 = load i32 (%struct.mg_connection*, i32, i32*)*, i32 (%struct.mg_connection*, i32, i32*)** %29, align 8
  %31 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %32 = load i32, i32* @MG_EV_RECV, align 4
  %33 = call i32 %30(%struct.mg_connection* %31, i32 %32, i32* %5)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ASSERT_EQ(i32 %34, i32 1)
  %36 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %37 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %36, i32 0, i32 2
  %38 = call i32 @mbuf_free(%struct.TYPE_5__* %37)
  %39 = load i32, i32* @mqtt_long_payload_len, align 4
  %40 = add nsw i32 8, %39
  store i32 %40, i32* %6, align 4
  %41 = call i64 @malloc(i32 512)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %3, align 8
  %43 = load i32, i32* @MG_MQTT_CMD_PUBLISH, align 4
  %44 = shl i32 %43, 4
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 %45, i8* %47, align 1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 127
  %50 = or i32 %49, 128
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %51, i8* %53, align 1
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %54, 7
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  store i8 %56, i8* %58, align 1
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  %61 = call i32 @memcpy(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 11
  %64 = load i32, i32* @mqtt_long_payload_len, align 4
  %65 = call i32 @memset(i8* %63, i8 signext 65, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 3, %66
  store i32 %67, i32* %5, align 4
  %68 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %69 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %68, i32 0, i32 2
  %70 = load i8*, i8** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @mbuf_append(%struct.TYPE_5__* %69, i8* %70, i32 %71)
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %96, %0
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %73
  store i32 123, i32* %4, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %80 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %83 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %82, i32 0, i32 3
  %84 = load i32 (%struct.mg_connection*, i32, i32*)*, i32 (%struct.mg_connection*, i32, i32*)** %83, align 8
  %85 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %86 = load i32, i32* @MG_EV_RECV, align 4
  %87 = call i32 %84(%struct.mg_connection* %85, i32 %86, i32* %7)
  %88 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %89 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @ASSERT_EQ(i32 %91, i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @ASSERT_EQ(i32 %94, i32 123)
  br label %96

96:                                               ; preds = %77
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %73

99:                                               ; preds = %73
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %102 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %105 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %104, i32 0, i32 3
  %106 = load i32 (%struct.mg_connection*, i32, i32*)*, i32 (%struct.mg_connection*, i32, i32*)** %105, align 8
  %107 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %108 = load i32, i32* @MG_EV_RECV, align 4
  %109 = call i32 %106(%struct.mg_connection* %107, i32 %108, i32* %5)
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @ASSERT_EQ(i32 %110, i32 2)
  %112 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %113 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %112, i32 0, i32 2
  %114 = call i32 @mbuf_free(%struct.TYPE_5__* %113)
  %115 = load i8*, i8** %3, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i32, i32* @mqtt_very_long_payload_len, align 4
  %118 = add nsw i32 8, %117
  store i32 %118, i32* %6, align 4
  %119 = call i64 @malloc(i32 20100)
  %120 = inttoptr i64 %119 to i8*
  store i8* %120, i8** %3, align 8
  %121 = load i32, i32* @MG_MQTT_CMD_PUBLISH, align 4
  %122 = shl i32 %121, 4
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %3, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  store i8 %123, i8* %125, align 1
  %126 = load i32, i32* %6, align 4
  %127 = and i32 %126, 127
  %128 = or i32 %127, 128
  %129 = trunc i32 %128 to i8
  %130 = load i8*, i8** %3, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  store i8 %129, i8* %131, align 1
  %132 = load i32, i32* %6, align 4
  %133 = ashr i32 %132, 7
  %134 = and i32 %133, 127
  %135 = or i32 %134, 128
  %136 = trunc i32 %135 to i8
  %137 = load i8*, i8** %3, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  store i8 %136, i8* %138, align 1
  %139 = load i32, i32* %6, align 4
  %140 = ashr i32 %139, 14
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %3, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 3
  store i8 %141, i8* %143, align 1
  %144 = load i8*, i8** %3, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 4
  %146 = call i32 @memcpy(i8* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %147 = load i8*, i8** %3, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 12
  %149 = load i32, i32* @mqtt_very_long_payload_len, align 4
  %150 = call i32 @memset(i8* %148, i8 signext 65, i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 4, %151
  store i32 %152, i32* %5, align 4
  %153 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %154 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %153, i32 0, i32 2
  %155 = load i8*, i8** %3, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @mbuf_append(%struct.TYPE_5__* %154, i8* %155, i32 %156)
  %158 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %159 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %158, i32 0, i32 3
  %160 = load i32 (%struct.mg_connection*, i32, i32*)*, i32 (%struct.mg_connection*, i32, i32*)** %159, align 8
  %161 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %162 = load i32, i32* @MG_EV_RECV, align 4
  %163 = call i32 %160(%struct.mg_connection* %161, i32 %162, i32* %5)
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @ASSERT_EQ(i32 %164, i32 3)
  %166 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %167 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %166, i32 0, i32 2
  %168 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %169 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @mbuf_remove(%struct.TYPE_5__* %167, i32 %171)
  %173 = load i32, i32* @MG_MQTT_CMD_PUBLISH, align 4
  %174 = shl i32 %173, 4
  %175 = trunc i32 %174 to i8
  %176 = load i8*, i8** %3, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  store i8 %175, i8* %177, align 1
  %178 = load i8*, i8** %3, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  store i8 -1, i8* %179, align 1
  %180 = load i8*, i8** %3, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 2
  store i8 -1, i8* %181, align 1
  %182 = load i8*, i8** %3, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 3
  store i8 -1, i8* %183, align 1
  %184 = load i8*, i8** %3, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 4
  store i8 -1, i8* %185, align 1
  %186 = load i8*, i8** %3, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 5
  store i8 -1, i8* %187, align 1
  %188 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %189 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %188, i32 0, i32 2
  %190 = load i8*, i8** %3, align 8
  %191 = call i32 @mbuf_append(%struct.TYPE_5__* %189, i8* %190, i32 10)
  %192 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %193 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %192, i32 0, i32 3
  %194 = load i32 (%struct.mg_connection*, i32, i32*)*, i32 (%struct.mg_connection*, i32, i32*)** %193, align 8
  %195 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %196 = load i32, i32* @MG_EV_RECV, align 4
  %197 = call i32 %194(%struct.mg_connection* %195, i32 %196, i32* %5)
  %198 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %199 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %202 = and i32 %200, %201
  %203 = call i32 @ASSERT(i32 %202)
  %204 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %205 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %204, i32 0, i32 2
  %206 = call i32 @mbuf_free(%struct.TYPE_5__* %205)
  %207 = load i8*, i8** %3, align 8
  %208 = call i32 @free(i8* %207)
  %209 = load i32, i32* @mqtt_very_long_payload_len, align 4
  %210 = call i64 @malloc(i32 %209)
  %211 = inttoptr i64 %210 to i8*
  store i8* %211, i8** %3, align 8
  %212 = load i8*, i8** %3, align 8
  %213 = load i32, i32* @mqtt_very_long_payload_len, align 4
  %214 = call i32 @memset(i8* %212, i8 signext 65, i32 %213)
  %215 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %216 = load i8*, i8** %3, align 8
  %217 = load i32, i32* @mqtt_very_long_payload_len, align 4
  %218 = call i32 @mg_mqtt_publish(%struct.mg_connection* %215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i8* %216, i32 %217)
  %219 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %220 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %219, i32 0, i32 2
  %221 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %222 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %221, i32 0, i32 4
  %223 = bitcast %struct.TYPE_5__* %220 to i8*
  %224 = bitcast %struct.TYPE_5__* %222 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %223, i8* align 8 %224, i64 4, i1 false)
  %225 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %226 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %225, i32 0, i32 4
  %227 = call i32 @mbuf_init(%struct.TYPE_5__* %226, i32 0)
  %228 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %229 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %5, align 4
  %232 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %233 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %232, i32 0, i32 3
  %234 = load i32 (%struct.mg_connection*, i32, i32*)*, i32 (%struct.mg_connection*, i32, i32*)** %233, align 8
  %235 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %236 = load i32, i32* @MG_EV_RECV, align 4
  %237 = call i32 %234(%struct.mg_connection* %235, i32 %236, i32* %5)
  %238 = load i32, i32* %4, align 4
  %239 = call i32 @ASSERT_EQ(i32 %238, i32 3)
  %240 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %241 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %240, i32 0, i32 2
  %242 = call i32 @mbuf_free(%struct.TYPE_5__* %241)
  %243 = load i8*, i8** %3, align 8
  %244 = call i32 @free(i8* %243)
  %245 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %246 = call i32 @mg_mqtt_connack(%struct.mg_connection* %245, i32 0)
  %247 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %248 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %247, i32 0, i32 2
  %249 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %250 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %249, i32 0, i32 4
  %251 = bitcast %struct.TYPE_5__* %248 to i8*
  %252 = bitcast %struct.TYPE_5__* %250 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %251, i8* align 8 %252, i64 4, i1 false)
  %253 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %254 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %253, i32 0, i32 4
  %255 = call i32 @mbuf_init(%struct.TYPE_5__* %254, i32 0)
  store i32 4, i32* %5, align 4
  %256 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %257 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %256, i32 0, i32 3
  %258 = load i32 (%struct.mg_connection*, i32, i32*)*, i32 (%struct.mg_connection*, i32, i32*)** %257, align 8
  %259 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %260 = load i32, i32* @MG_EV_RECV, align 4
  %261 = call i32 %258(%struct.mg_connection* %259, i32 %260, i32* %5)
  %262 = load i32, i32* %4, align 4
  %263 = call i32 @ASSERT_EQ(i32 %262, i32 4)
  %264 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %265 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %264, i32 0, i32 2
  %266 = call i32 @mbuf_free(%struct.TYPE_5__* %265)
  %267 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %268 = call i32 @destroy_test_connection(%struct.mg_connection* %267)
  ret i8* null
}

declare dso_local %struct.mg_connection* @create_test_connection(...) #1

declare dso_local i32 @mg_set_protocol_mqtt(%struct.mg_connection*) #1

declare dso_local i32 @mbuf_append(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @mbuf_free(%struct.TYPE_5__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mbuf_remove(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mg_mqtt_publish(%struct.mg_connection*, i8*, i32, i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mbuf_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @mg_mqtt_connack(%struct.mg_connection*, i32) #1

declare dso_local i32 @destroy_test_connection(%struct.mg_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
