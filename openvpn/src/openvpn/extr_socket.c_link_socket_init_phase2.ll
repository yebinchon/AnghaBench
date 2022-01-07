; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_init_phase2.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_init_phase2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { i32, i8*, i32, %struct.TYPE_11__, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.frame = type { i32 }
%struct.signal_info = type { i32, i8*, i32, %struct.TYPE_11__, i64, i64, i64, i64 }

@SOCKET_UNDEFINED = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Could not determine IPv4/IPv6 protocol. Using %s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not determine IPv4/IPv6 protocol\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@PROTO_TCP_SERVER = common dso_local global i64 0, align 8
@PROTO_TCP_CLIENT = common dso_local global i64 0, align 8
@PROTO_UDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_socket_init_phase2(%struct.link_socket* %0, %struct.frame* %1, %struct.signal_info* %2) #0 {
  %4 = alloca %struct.link_socket*, align 8
  %5 = alloca %struct.frame*, align 8
  %6 = alloca %struct.signal_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.link_socket* %0, %struct.link_socket** %4, align 8
  store %struct.frame* %1, %struct.frame** %5, align 8
  store %struct.signal_info* %2, %struct.signal_info** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %10 = bitcast %struct.link_socket* %9 to %struct.signal_info*
  %11 = call i32 @ASSERT(%struct.signal_info* %10)
  %12 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %13 = call i32 @ASSERT(%struct.signal_info* %12)
  %14 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %15 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %20 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %23 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.frame*, %struct.frame** %5, align 8
  %26 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %27 = bitcast %struct.link_socket* %26 to %struct.signal_info*
  %28 = call i32 @socket_frame_init(%struct.frame* %25, %struct.signal_info* %27)
  %29 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %30 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %35 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %7, align 8
  br label %37

37:                                               ; preds = %33, %24
  %38 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %39 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %44 = bitcast %struct.link_socket* %43 to %struct.signal_info*
  %45 = load %struct.frame*, %struct.frame** %5, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %48 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %47, i32 0, i32 0
  %49 = call i32 @phase2_inetd(%struct.signal_info* %44, %struct.frame* %45, i8* %46, i32* %48)
  %50 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %51 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %221

55:                                               ; preds = %42
  br label %214

56:                                               ; preds = %37
  %57 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %58 = bitcast %struct.link_socket* %57 to %struct.signal_info*
  %59 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %60 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %59, i32 0, i32 0
  %61 = call i32 @resolve_remote(%struct.signal_info* %58, i32 2, i8** %7, i32* %60)
  %62 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %63 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = icmp ne %struct.TYPE_12__* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %56
  %70 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %71 = bitcast %struct.link_socket* %70 to %struct.signal_info*
  %72 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %73 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = call i32 @create_socket(%struct.signal_info* %71, %struct.TYPE_12__* %77)
  br label %79

79:                                               ; preds = %69, %56
  %80 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %81 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SOCKET_UNDEFINED, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %144

85:                                               ; preds = %79
  %86 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %87 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %143

90:                                               ; preds = %85
  %91 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %92 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %143, label %95

95:                                               ; preds = %90
  %96 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %97 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = icmp ne %struct.TYPE_12__* %101, null
  br i1 %102, label %103, label %143

103:                                              ; preds = %95
  %104 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %105 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AF_UNSPEC, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %133

110:                                              ; preds = %103
  %111 = load i32, i32* @M_WARN, align 4
  %112 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %113 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @addr_family_name(i64 %119)
  %121 = call i32 (i32, i8*, ...) @msg(i32 %111, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %123 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %131 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  br label %133

133:                                              ; preds = %110, %103
  %134 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %135 = bitcast %struct.link_socket* %134 to %struct.signal_info*
  %136 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %137 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = call i32 @create_socket(%struct.signal_info* %135, %struct.TYPE_12__* %141)
  br label %143

143:                                              ; preds = %133, %95, %90, %85
  br label %144

144:                                              ; preds = %143, %79
  %145 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %146 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @SOCKET_UNDEFINED, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load i32, i32* @M_WARN, align 4
  %152 = call i32 (i32, i8*, ...) @msg(i32 %151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i32, i32* @SIGUSR1, align 4
  %154 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %155 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  br label %221

156:                                              ; preds = %144
  %157 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %158 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %221

162:                                              ; preds = %156
  %163 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %164 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @PROTO_TCP_SERVER, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %171 = bitcast %struct.link_socket* %170 to %struct.signal_info*
  %172 = load i8*, i8** %7, align 8
  %173 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %174 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %173, i32 0, i32 0
  %175 = call i32 @phase2_tcp_server(%struct.signal_info* %171, i8* %172, i32* %174)
  br label %207

176:                                              ; preds = %162
  %177 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %178 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @PROTO_TCP_CLIENT, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %176
  %184 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %185 = bitcast %struct.link_socket* %184 to %struct.signal_info*
  %186 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %187 = call i32 @phase2_tcp_client(%struct.signal_info* %185, %struct.signal_info* %186)
  br label %206

188:                                              ; preds = %176
  %189 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %190 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @PROTO_UDP, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %205

195:                                              ; preds = %188
  %196 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %197 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %202 = bitcast %struct.link_socket* %201 to %struct.signal_info*
  %203 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %204 = call i32 @phase2_socks_client(%struct.signal_info* %202, %struct.signal_info* %203)
  br label %205

205:                                              ; preds = %200, %195, %188
  br label %206

206:                                              ; preds = %205, %183
  br label %207

207:                                              ; preds = %206, %169
  %208 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %209 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %221

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %213, %55
  %215 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %216 = bitcast %struct.link_socket* %215 to %struct.signal_info*
  %217 = call i32 @phase2_set_socket_flags(%struct.signal_info* %216)
  %218 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %219 = bitcast %struct.link_socket* %218 to %struct.signal_info*
  %220 = call i32 @linksock_print_addr(%struct.signal_info* %219)
  br label %221

221:                                              ; preds = %214, %212, %161, %150, %54
  %222 = load i32, i32* %8, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %221
  %225 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %226 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %224
  %230 = load i32, i32* %8, align 4
  %231 = load %struct.signal_info*, %struct.signal_info** %6, align 8
  %232 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %229, %224
  br label %234

234:                                              ; preds = %233, %221
  ret void
}

declare dso_local i32 @ASSERT(%struct.signal_info*) #1

declare dso_local i32 @socket_frame_init(%struct.frame*, %struct.signal_info*) #1

declare dso_local i32 @phase2_inetd(%struct.signal_info*, %struct.frame*, i8*, i32*) #1

declare dso_local i32 @resolve_remote(%struct.signal_info*, i32, i8**, i32*) #1

declare dso_local i32 @create_socket(%struct.signal_info*, %struct.TYPE_12__*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @addr_family_name(i64) #1

declare dso_local i32 @phase2_tcp_server(%struct.signal_info*, i8*, i32*) #1

declare dso_local i32 @phase2_tcp_client(%struct.signal_info*, %struct.signal_info*) #1

declare dso_local i32 @phase2_socks_client(%struct.signal_info*, %struct.signal_info*) #1

declare dso_local i32 @phase2_set_socket_flags(%struct.signal_info*) #1

declare dso_local i32 @linksock_print_addr(%struct.signal_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
