; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_mqtt_handshake_opt.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_mqtt_handshake_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64 }
%struct.mg_send_mqtt_handshake_opts = type { i8*, i32, i8*, i8*, i8*, i32 }
%struct.mg_mqtt_proto_data = type { i32 }

@MG_MQTT_HAS_USER_NAME = common dso_local global i32 0, align 4
@MG_MQTT_HAS_PASSWORD = common dso_local global i32 0, align 4
@MG_MQTT_HAS_WILL = common dso_local global i32 0, align 4
@MG_MQTT_CMD_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"\00\04MQTT\04\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_send_mqtt_handshake_opt(%struct.mg_connection* %0, i8* %1, %struct.mg_send_mqtt_handshake_opts* byval(%struct.mg_send_mqtt_handshake_opts) align 8 %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mg_mqtt_proto_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %15 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mg_mqtt_proto_data*
  store %struct.mg_mqtt_proto_data* %17, %struct.mg_mqtt_proto_data** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 12, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %13, align 8
  %27 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @MG_MQTT_HAS_USER_NAME, align 4
  %32 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %30, %23
  %36 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @MG_MQTT_HAS_PASSWORD, align 4
  %41 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strlen(i8* %54)
  store i32 %55, i32* %8, align 4
  %56 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strlen(i8* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @MG_MQTT_HAS_WILL, align 4
  %60 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %52, %48, %44
  %64 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 5
  store i32 60, i32* %68, align 8
  br label %69

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MG_MQTT_HAS_WILL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 2, %76
  %78 = add nsw i32 %77, 2
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %13, align 8
  br label %84

84:                                               ; preds = %75, %69
  %85 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MG_MQTT_HAS_USER_NAME, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strlen(i8* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 2, %94
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %13, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %13, align 8
  br label %99

99:                                               ; preds = %90, %84
  %100 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @MG_MQTT_HAS_PASSWORD, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strlen(i8* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 2, %109
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %13, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %13, align 8
  br label %114

114:                                              ; preds = %105, %99
  %115 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %116 = load i32, i32* @MG_MQTT_CMD_CONNECT, align 4
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @mg_send_mqtt_header(%struct.mg_connection* %115, i32 %116, i32 0, i64 %117)
  %119 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %120 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %121 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %122 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 1
  %123 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %121, i32* %122, i32 1)
  %124 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @htons(i32 %125)
  store i32 %126, i32* %12, align 4
  %127 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %128 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %127, i32* %12, i32 2)
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @htons(i32 %129)
  store i32 %130, i32* %12, align 4
  %131 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %132 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %131, i32* %12, i32 2)
  %133 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %133, i8* %134, i32 %135)
  %137 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @MG_MQTT_HAS_WILL, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %114
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @htons(i32 %143)
  store i32 %144, i32* %12, align 4
  %145 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %146 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %145, i32* %12, i32 2)
  %147 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %148 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %147, i8* %149, i32 %150)
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @htons(i32 %152)
  store i32 %153, i32* %12, align 4
  %154 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %155 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %154, i32* %12, i32 2)
  %156 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %157 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 4
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %156, i8* %158, i32 %159)
  br label %161

161:                                              ; preds = %142, %114
  %162 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @MG_MQTT_HAS_USER_NAME, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %161
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @htons(i32 %168)
  store i32 %169, i32* %12, align 4
  %170 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %171 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %170, i32* %12, i32 2)
  %172 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %173 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %172, i8* %174, i32 %175)
  br label %177

177:                                              ; preds = %167, %161
  %178 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @MG_MQTT_HAS_PASSWORD, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %177
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @htons(i32 %184)
  store i32 %185, i32* %12, align 4
  %186 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %187 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %186, i32* %12, i32 2)
  %188 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %189 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 2
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %188, i8* %190, i32 %191)
  br label %193

193:                                              ; preds = %183, %177
  %194 = load %struct.mg_mqtt_proto_data*, %struct.mg_mqtt_proto_data** %6, align 8
  %195 = icmp ne %struct.mg_mqtt_proto_data* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %2, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.mg_mqtt_proto_data*, %struct.mg_mqtt_proto_data** %6, align 8
  %200 = getelementptr inbounds %struct.mg_mqtt_proto_data, %struct.mg_mqtt_proto_data* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 4
  br label %201

201:                                              ; preds = %196, %193
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mg_send_mqtt_header(%struct.mg_connection*, i32, i32, i64) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, ...) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
