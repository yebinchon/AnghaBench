; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mqtt/extr_mqtt_msg.c_mqtt_msg_connect.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mqtt/extr_mqtt_msg.c_mqtt_msg_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, i8*, i8*, i8*, i32, i8*, i8*, i64, i64 }
%struct.mqtt_connect_variable_header = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"MQTT\00", align 1
@MQTT_CONNECT_FLAG_CLEAN_SESSION = common dso_local global i32 0, align 4
@MQTT_CONNECT_FLAG_WILL = common dso_local global i32 0, align 4
@MQTT_CONNECT_FLAG_WILL_RETAIN = common dso_local global i32 0, align 4
@MQTT_CONNECT_FLAG_USERNAME = common dso_local global i32 0, align 4
@MQTT_CONNECT_FLAG_PASSWORD = common dso_local global i32 0, align 4
@MQTT_MSG_TYPE_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mqtt_msg_connect(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.mqtt_connect_variable_header*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = call i32 @init_message(%struct.TYPE_11__* %7)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 32
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = call i32* @fail_message(%struct.TYPE_11__* %19)
  store i32* %20, i32** %3, align 8
  br label %239

21:                                               ; preds = %2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %24, %28
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.mqtt_connect_variable_header*
  store %struct.mqtt_connect_variable_header* %31, %struct.mqtt_connect_variable_header** %6, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 32
  store i64 %36, i64* %34, align 8
  %37 = load %struct.mqtt_connect_variable_header*, %struct.mqtt_connect_variable_header** %6, align 8
  %38 = getelementptr inbounds %struct.mqtt_connect_variable_header, %struct.mqtt_connect_variable_header* %37, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = load %struct.mqtt_connect_variable_header*, %struct.mqtt_connect_variable_header** %6, align 8
  %40 = getelementptr inbounds %struct.mqtt_connect_variable_header, %struct.mqtt_connect_variable_header* %39, i32 0, i32 0
  store i32 4, i32* %40, align 8
  %41 = load %struct.mqtt_connect_variable_header*, %struct.mqtt_connect_variable_header** %6, align 8
  %42 = getelementptr inbounds %struct.mqtt_connect_variable_header, %struct.mqtt_connect_variable_header* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %45 = load %struct.mqtt_connect_variable_header*, %struct.mqtt_connect_variable_header** %6, align 8
  %46 = getelementptr inbounds %struct.mqtt_connect_variable_header, %struct.mqtt_connect_variable_header* %45, i32 0, i32 1
  store i32 4, i32* %46, align 4
  %47 = load %struct.mqtt_connect_variable_header*, %struct.mqtt_connect_variable_header** %6, align 8
  %48 = getelementptr inbounds %struct.mqtt_connect_variable_header, %struct.mqtt_connect_variable_header* %47, i32 0, i32 2
  store i32 0, i32* %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %51, 8
  %53 = load %struct.mqtt_connect_variable_header*, %struct.mqtt_connect_variable_header** %6, align 8
  %54 = getelementptr inbounds %struct.mqtt_connect_variable_header, %struct.mqtt_connect_variable_header* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 255
  %59 = load %struct.mqtt_connect_variable_header*, %struct.mqtt_connect_variable_header** %6, align 8
  %60 = getelementptr inbounds %struct.mqtt_connect_variable_header, %struct.mqtt_connect_variable_header* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %21
  %66 = load i32, i32* @MQTT_CONNECT_FLAG_CLEAN_SESSION, align 4
  %67 = load %struct.mqtt_connect_variable_header*, %struct.mqtt_connect_variable_header** %6, align 8
  %68 = getelementptr inbounds %struct.mqtt_connect_variable_header, %struct.mqtt_connect_variable_header* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %21
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %76
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = call i64 @append_string(%struct.TYPE_11__* %85, i8* %88, i32 %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = call i32* @fail_message(%struct.TYPE_11__* %96)
  store i32* %97, i32** %3, align 8
  br label %239

98:                                               ; preds = %84
  br label %102

99:                                               ; preds = %76, %71
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %101 = call i32* @fail_message(%struct.TYPE_11__* %100)
  store i32* %101, i32** %3, align 8
  br label %239

102:                                              ; preds = %98
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %169

107:                                              ; preds = %102
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %169

115:                                              ; preds = %107
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = call i64 @append_string(%struct.TYPE_11__* %116, i8* %119, i32 %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %115
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = call i32* @fail_message(%struct.TYPE_11__* %127)
  store i32* %128, i32** %3, align 8
  br label %239

129:                                              ; preds = %115
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @strlen(i8* %136)
  %138 = call i64 @append_string(%struct.TYPE_11__* %130, i8* %133, i32 %137)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %129
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %142 = call i32* @fail_message(%struct.TYPE_11__* %141)
  store i32* %142, i32** %3, align 8
  br label %239

143:                                              ; preds = %129
  %144 = load i32, i32* @MQTT_CONNECT_FLAG_WILL, align 4
  %145 = load %struct.mqtt_connect_variable_header*, %struct.mqtt_connect_variable_header** %6, align 8
  %146 = getelementptr inbounds %struct.mqtt_connect_variable_header, %struct.mqtt_connect_variable_header* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %143
  %154 = load i32, i32* @MQTT_CONNECT_FLAG_WILL_RETAIN, align 4
  %155 = load %struct.mqtt_connect_variable_header*, %struct.mqtt_connect_variable_header** %6, align 8
  %156 = getelementptr inbounds %struct.mqtt_connect_variable_header, %struct.mqtt_connect_variable_header* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %153, %143
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, 3
  %164 = shl i32 %163, 3
  %165 = load %struct.mqtt_connect_variable_header*, %struct.mqtt_connect_variable_header** %6, align 8
  %166 = getelementptr inbounds %struct.mqtt_connect_variable_header, %struct.mqtt_connect_variable_header* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %159, %107, %102
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 5
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %202

174:                                              ; preds = %169
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 5
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %202

182:                                              ; preds = %174
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 5
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 5
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @strlen(i8* %189)
  %191 = call i64 @append_string(%struct.TYPE_11__* %183, i8* %186, i32 %190)
  %192 = icmp slt i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %182
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %195 = call i32* @fail_message(%struct.TYPE_11__* %194)
  store i32* %195, i32** %3, align 8
  br label %239

196:                                              ; preds = %182
  %197 = load i32, i32* @MQTT_CONNECT_FLAG_USERNAME, align 4
  %198 = load %struct.mqtt_connect_variable_header*, %struct.mqtt_connect_variable_header** %6, align 8
  %199 = getelementptr inbounds %struct.mqtt_connect_variable_header, %struct.mqtt_connect_variable_header* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %196, %174, %169
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 6
  %205 = load i8*, i8** %204, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %235

207:                                              ; preds = %202
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 6
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 0
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %235

215:                                              ; preds = %207
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 6
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 6
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @strlen(i8* %222)
  %224 = call i64 @append_string(%struct.TYPE_11__* %216, i8* %219, i32 %223)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %215
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %228 = call i32* @fail_message(%struct.TYPE_11__* %227)
  store i32* %228, i32** %3, align 8
  br label %239

229:                                              ; preds = %215
  %230 = load i32, i32* @MQTT_CONNECT_FLAG_PASSWORD, align 4
  %231 = load %struct.mqtt_connect_variable_header*, %struct.mqtt_connect_variable_header** %6, align 8
  %232 = getelementptr inbounds %struct.mqtt_connect_variable_header, %struct.mqtt_connect_variable_header* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %229, %207, %202
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %237 = load i32, i32* @MQTT_MSG_TYPE_CONNECT, align 4
  %238 = call i32* @fini_message(%struct.TYPE_11__* %236, i32 %237, i32 0, i32 0, i32 0)
  store i32* %238, i32** %3, align 8
  br label %239

239:                                              ; preds = %235, %226, %193, %140, %126, %99, %95, %18
  %240 = load i32*, i32** %3, align 8
  ret i32* %240
}

declare dso_local i32 @init_message(%struct.TYPE_11__*) #1

declare dso_local i32* @fail_message(%struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @append_string(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @fini_message(%struct.TYPE_11__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
