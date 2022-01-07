; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_handshake.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_send_mqtt_handshake_opts = type { i8*, i8*, i8*, i8*, i32 }
%struct.mg_connection = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8*, i8 }
%struct.mg_mqtt_proto_data = type { i8, i32 }

@.str = private unnamed_addr constant [11 x i8] c"testclient\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"MQTT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_mqtt_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_mqtt_handshake() #0 {
  %1 = alloca %struct.mg_send_mqtt_handshake_opts, align 8
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  %10 = call %struct.mg_connection* (...) @create_test_connection()
  store %struct.mg_connection* %10, %struct.mg_connection** %2, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  %11 = call double (...) @mg_time()
  store double %11, double* %8, align 8
  %12 = call i32 @msleep(i32 2)
  %13 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %14 = call i32 @mg_set_protocol_mqtt(%struct.mg_connection* %13)
  %15 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @mg_send_mqtt_handshake(%struct.mg_connection* %15, i8* %16)
  %18 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %19 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %23 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add nsw i32 14, %27
  %29 = call i32 @ASSERT_EQ(i8 signext %25, i32 %28)
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @ASSERT_EQ(i8 signext %32, i32 16)
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %38 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i8, i8* %39, align 8
  %41 = sext i8 %40 to i32
  %42 = sub nsw i32 %41, 2
  %43 = call i32 @ASSERT_EQ(i8 signext %36, i32 %42)
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @ASSERT_EQ(i8 signext %46, i32 0)
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @ASSERT_EQ(i8 signext %50, i32 4)
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 4
  %54 = call i32 @ASSERT_STREQ_NZ(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 8
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @ASSERT_EQ(i8 signext %57, i32 4)
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 9
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @ASSERT_EQ(i8 signext %61, i32 0)
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 10
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @ASSERT_EQ(i8 signext %65, i32 0)
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 11
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @ASSERT_EQ(i8 signext %69, i32 60)
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 12
  %73 = load i8, i8* %72, align 1
  %74 = call i32 @ASSERT_EQ(i8 signext %73, i32 0)
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 13
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = trunc i32 %79 to i8
  %81 = sext i8 %80 to i32
  %82 = call i32 @ASSERT_EQ(i8 signext %77, i32 %81)
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 14
  %85 = load i8*, i8** %3, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = call signext i8 @strncmp(i8* %84, i8* %85, i32 %87)
  %89 = call i32 @ASSERT_EQ(i8 signext %88, i32 0)
  %90 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %91 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.mg_mqtt_proto_data*
  %94 = getelementptr inbounds %struct.mg_mqtt_proto_data, %struct.mg_mqtt_proto_data* %93, i32 0, i32 0
  %95 = load i8, i8* %94, align 4
  %96 = call i32 @ASSERT_EQ(i8 signext %95, i32 60)
  %97 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %98 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to %struct.mg_mqtt_proto_data*
  %101 = getelementptr inbounds %struct.mg_mqtt_proto_data, %struct.mg_mqtt_proto_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load double, double* %8, align 8
  %104 = call i32 @ASSERT_GT(i32 %102, double %103)
  %105 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %106 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %105, i32 0, i32 0
  %107 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %108 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i8, i8* %109, align 8
  %111 = call i32 @mbuf_remove(%struct.TYPE_2__* %106, i8 signext %110)
  %112 = call i32 @memset(%struct.mg_send_mqtt_handshake_opts* %1, i32 0, i32 40)
  %113 = call double (...) @mg_time()
  store double %113, double* %8, align 8
  %114 = call i32 @msleep(i32 2)
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %1, i32 0, i32 0
  store i8* %115, i8** %116, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %1, i32 0, i32 1
  store i8* %117, i8** %118, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %1, i32 0, i32 2
  store i8* %119, i8** %120, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %1, i32 0, i32 3
  store i8* %121, i8** %122, align 8
  %123 = getelementptr inbounds %struct.mg_send_mqtt_handshake_opts, %struct.mg_send_mqtt_handshake_opts* %1, i32 0, i32 4
  store i32 4660, i32* %123, align 8
  %124 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %125 = load i8*, i8** %3, align 8
  %126 = call i32 @mg_send_mqtt_handshake_opt(%struct.mg_connection* %124, i8* %125, %struct.mg_send_mqtt_handshake_opts* byval(%struct.mg_send_mqtt_handshake_opts) align 8 %1)
  %127 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %128 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %9, align 8
  %131 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %132 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i8, i8* %133, align 8
  %135 = load i8*, i8** %3, align 8
  %136 = call i32 @strlen(i8* %135)
  %137 = add nsw i32 15, %136
  %138 = add nsw i32 %137, 2
  %139 = load i8*, i8** %6, align 8
  %140 = call i32 @strlen(i8* %139)
  %141 = add nsw i32 %138, %140
  %142 = add nsw i32 %141, 2
  %143 = load i8*, i8** %7, align 8
  %144 = call i32 @strlen(i8* %143)
  %145 = add nsw i32 %142, %144
  %146 = add nsw i32 %145, 2
  %147 = load i8*, i8** %4, align 8
  %148 = call i32 @strlen(i8* %147)
  %149 = add nsw i32 %146, %148
  %150 = add nsw i32 %149, 2
  %151 = load i8*, i8** %5, align 8
  %152 = call i32 @strlen(i8* %151)
  %153 = add nsw i32 %150, %152
  %154 = call i32 @ASSERT_EQ(i8 signext %134, i32 %153)
  %155 = load i8*, i8** %9, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  %157 = load i8, i8* %156, align 1
  %158 = call i32 @ASSERT_EQ(i8 signext %157, i32 16)
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = load i8, i8* %160, align 1
  %162 = call i32 @ASSERT_EQ(i8 signext %161, i32 223)
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  %165 = load i8, i8* %164, align 1
  %166 = call i32 @ASSERT_EQ(i8 signext %165, i32 1)
  %167 = load i8*, i8** %9, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 3
  %169 = load i8, i8* %168, align 1
  %170 = call i32 @ASSERT_EQ(i8 signext %169, i32 0)
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 4
  %173 = load i8, i8* %172, align 1
  %174 = call i32 @ASSERT_EQ(i8 signext %173, i32 4)
  %175 = load i8*, i8** %9, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 5
  %177 = call i32 @ASSERT_STREQ_NZ(i8* %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %178 = load i8*, i8** %9, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 9
  %180 = load i8, i8* %179, align 1
  %181 = call i32 @ASSERT_EQ(i8 signext %180, i32 4)
  %182 = load i8*, i8** %9, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 10
  %184 = load i8, i8* %183, align 1
  %185 = call i32 @ASSERT_EQ(i8 signext %184, i32 196)
  %186 = load i8*, i8** %9, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 11
  %188 = load i8, i8* %187, align 1
  %189 = call i32 @ASSERT_EQ(i8 signext %188, i32 18)
  %190 = load i8*, i8** %9, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 12
  %192 = load i8, i8* %191, align 1
  %193 = call i32 @ASSERT_EQ(i8 signext %192, i32 52)
  %194 = load i8*, i8** %9, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 13
  %196 = load i8, i8* %195, align 1
  %197 = call i32 @ASSERT_EQ(i8 signext %196, i32 0)
  %198 = load i8*, i8** %9, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 14
  %200 = load i8, i8* %199, align 1
  %201 = load i8*, i8** %3, align 8
  %202 = call i32 @strlen(i8* %201)
  %203 = trunc i32 %202 to i8
  %204 = sext i8 %203 to i32
  %205 = call i32 @ASSERT_EQ(i8 signext %200, i32 %204)
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 15
  %208 = load i8*, i8** %3, align 8
  %209 = load i8*, i8** %3, align 8
  %210 = call i32 @strlen(i8* %209)
  %211 = call signext i8 @strncmp(i8* %207, i8* %208, i32 %210)
  %212 = call i32 @ASSERT_EQ(i8 signext %211, i32 0)
  %213 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %214 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = inttoptr i64 %215 to %struct.mg_mqtt_proto_data*
  %217 = getelementptr inbounds %struct.mg_mqtt_proto_data, %struct.mg_mqtt_proto_data* %216, i32 0, i32 0
  %218 = load i8, i8* %217, align 4
  %219 = call i32 @ASSERT_EQ(i8 signext %218, i32 4660)
  %220 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %221 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = inttoptr i64 %222 to %struct.mg_mqtt_proto_data*
  %224 = getelementptr inbounds %struct.mg_mqtt_proto_data, %struct.mg_mqtt_proto_data* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load double, double* %8, align 8
  %227 = call i32 @ASSERT_GT(i32 %225, double %226)
  %228 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %229 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %228, i32 0, i32 0
  %230 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %231 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 1
  %233 = load i8, i8* %232, align 8
  %234 = call i32 @mbuf_remove(%struct.TYPE_2__* %229, i8 signext %233)
  %235 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %236 = call i32 @destroy_test_connection(%struct.mg_connection* %235)
  ret i8* null
}

declare dso_local %struct.mg_connection* @create_test_connection(...) #1

declare dso_local double @mg_time(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mg_set_protocol_mqtt(%struct.mg_connection*) #1

declare dso_local i32 @mg_send_mqtt_handshake(%struct.mg_connection*, i8*) #1

declare dso_local i32 @ASSERT_EQ(i8 signext, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ASSERT_STREQ_NZ(i8*, i8*) #1

declare dso_local signext i8 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ASSERT_GT(i32, double) #1

declare dso_local i32 @mbuf_remove(%struct.TYPE_2__*, i8 signext) #1

declare dso_local i32 @memset(%struct.mg_send_mqtt_handshake_opts*, i32, i32) #1

declare dso_local i32 @mg_send_mqtt_handshake_opt(%struct.mg_connection*, i8*, %struct.mg_send_mqtt_handshake_opts* byval(%struct.mg_send_mqtt_handshake_opts) align 8) #1

declare dso_local i32 @destroy_test_connection(%struct.mg_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
