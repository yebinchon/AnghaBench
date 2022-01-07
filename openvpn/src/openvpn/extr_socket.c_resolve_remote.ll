; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_resolve_remote.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_resolve_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { i32, %struct.TYPE_4__, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.addrinfo*, i32, %struct.addrinfo* }
%struct.addrinfo = type { i32 }
%struct.gc_arena = type { i32 }

@GETADDR_RESOLVE = common dso_local global i32 0, align 4
@GETADDR_UPDATE_MANAGEMENT_STATE = common dso_local global i32 0, align 4
@GETADDR_DATAGRAM = common dso_local global i32 0, align 4
@RESOLV_RETRY_INFINITE = common dso_local global i32 0, align 4
@GETADDR_TRY_ONCE = common dso_local global i32 0, align 4
@GETADDR_FATAL = common dso_local global i32 0, align 4
@GETADDR_MENTION_RESOLVE_RETRY = common dso_local global i32 0, align 4
@D_SOCKET_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"RESOLVE_REMOTE flags=0x%04x phase=%d rrs=%d sig=%d status=%d\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"TCP/UDP: Preserving recently used remote address: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_socket*, i32, i8**, i32*)* @resolve_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_remote(%struct.link_socket* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.link_socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.gc_arena, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.addrinfo*, align 8
  store %struct.link_socket* %0, %struct.link_socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = call i32 (...) @gc_new()
  %15 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %9, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %17 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %22 = icmp ne %struct.addrinfo* %21, null
  br i1 %22, label %184, label %23

23:                                               ; preds = %4
  %24 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %25 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %183

28:                                               ; preds = %23
  %29 = load i32, i32* @GETADDR_RESOLVE, align 4
  %30 = load i32, i32* @GETADDR_UPDATE_MANAGEMENT_STATE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %33 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sf2gaf(i32 %31, i32 %34)
  store i32 %35, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %36 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %37 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @proto_is_dgram(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = load i32, i32* @GETADDR_DATAGRAM, align 4
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %28
  %47 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %48 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RESOLV_RETRY_INFINITE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* @GETADDR_TRY_ONCE, align 4
  %57 = load i32, i32* @GETADDR_FATAL, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %55, %52
  store i32 0, i32* %11, align 4
  br label %100

62:                                               ; preds = %46
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %67 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %77

71:                                               ; preds = %65
  %72 = load i32, i32* @GETADDR_FATAL, align 4
  %73 = load i32, i32* @GETADDR_MENTION_RESOLVE_RETRY, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %71, %70
  br label %99

78:                                               ; preds = %62
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %83 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i32, i32* @GETADDR_FATAL, align 4
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %91 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %11, align 4
  br label %95

93:                                               ; preds = %81
  %94 = call i32 @ASSERT(i32 0)
  br label %95

95:                                               ; preds = %93, %86
  br label %98

96:                                               ; preds = %78
  %97 = call i32 @ASSERT(i32 0)
  br label %98

98:                                               ; preds = %96, %95
  br label %99

99:                                               ; preds = %98, %77
  br label %100

100:                                              ; preds = %99, %61
  %101 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %102 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %105 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %108 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %111 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @get_cached_dns_entry(i32 %103, i64 %106, i32 %109, i32 %113, i32 %114, %struct.addrinfo** %13)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %100
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %121 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %124 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %129 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @openvpn_getaddrinfo(i32 %119, i64 %122, i32 %125, i32 %126, i32* %127, i32 %131, %struct.addrinfo** %13)
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %118, %100
  %134 = load i32, i32* %12, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %133
  %137 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %138 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %139 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  store %struct.addrinfo* %137, %struct.addrinfo** %142, align 8
  %143 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %144 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %145 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  store %struct.addrinfo* %143, %struct.addrinfo** %148, align 8
  %149 = load i32, i32* @D_SOCKET_DEBUG, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %136
  %156 = load i32*, i32** %8, align 8
  %157 = load volatile i32, i32* %156, align 4
  br label %159

158:                                              ; preds = %136
  br label %159

159:                                              ; preds = %158, %155
  %160 = phi i32 [ %157, %155 ], [ -1, %158 ]
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @dmsg(i32 %149, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %150, i32 %151, i32 %152, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %159, %133
  %164 = load i32*, i32** %8, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32*, i32** %8, align 8
  %168 = load volatile i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  br label %236

171:                                              ; preds = %166
  br label %172

172:                                              ; preds = %171, %163
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load i32*, i32** %8, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* @SIGUSR1, align 4
  %180 = load i32*, i32** %8, align 8
  store volatile i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %178, %175
  br label %236

182:                                              ; preds = %172
  br label %183

183:                                              ; preds = %182, %23
  br label %184

184:                                              ; preds = %183, %4
  %185 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %186 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  %190 = call i64 @link_socket_actual_defined(i32* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %206

192:                                              ; preds = %184
  %193 = load i32, i32* @M_INFO, align 4
  %194 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %195 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  %199 = call i32 @print_link_socket_actual(i32* %198, %struct.gc_arena* %9)
  %200 = call i32 @msg(i32 %193, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %199)
  %201 = load i8**, i8*** %7, align 8
  %202 = icmp ne i8** %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %192
  %204 = load i8**, i8*** %7, align 8
  store i8* null, i8** %204, align 8
  br label %205

205:                                              ; preds = %203, %192
  br label %235

206:                                              ; preds = %184
  %207 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %208 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @CLEAR(i32 %212)
  %214 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %215 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load %struct.addrinfo*, %struct.addrinfo** %218, align 8
  %220 = icmp ne %struct.addrinfo* %219, null
  br i1 %220, label %221, label %234

221:                                              ; preds = %206
  %222 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %223 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 1
  %227 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %228 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load %struct.addrinfo*, %struct.addrinfo** %231, align 8
  %233 = call i32 @set_actual_address(i32* %226, %struct.addrinfo* %232)
  br label %234

234:                                              ; preds = %221, %206
  br label %235

235:                                              ; preds = %234, %205
  br label %236

236:                                              ; preds = %235, %181, %170
  %237 = call i32 @gc_free(%struct.gc_arena* %9)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @sf2gaf(i32, i32) #1

declare dso_local i64 @proto_is_dgram(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @get_cached_dns_entry(i32, i64, i32, i32, i32, %struct.addrinfo**) #1

declare dso_local i32 @openvpn_getaddrinfo(i32, i64, i32, i32, i32*, i32, %struct.addrinfo**) #1

declare dso_local i32 @dmsg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @link_socket_actual_defined(i32*) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @print_link_socket_actual(i32*, %struct.gc_arena*) #1

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @set_actual_address(i32*, %struct.addrinfo*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
