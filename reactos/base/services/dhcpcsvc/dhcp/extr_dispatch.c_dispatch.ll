; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dispatch.c_dispatch.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dispatch.c_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeout = type { i64, %struct.timeout*, i32, i32 (i32)* }
%struct.protocol = type { i32 (%struct.protocol*)*, %struct.interface_info*, %struct.protocol* }
%struct.interface_info = type { i32 }

@AdapterStateChangedEvent = common dso_local global i32* null, align 8
@WSA_INVALID_EVENT = common dso_local global i64 0, align 8
@timeouts = common dso_local global %struct.timeout* null, align 8
@free_timeouts = common dso_local global %struct.timeout* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@DhcpSocket = common dso_local global i64 0, align 8
@INVALID_SOCKET = common dso_local global i64 0, align 8
@FD_READ = common dso_local global i32 0, align 4
@FD_CLOSE = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i32 0, align 4
@protocols = common dso_local global %struct.protocol* null, align 8
@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Handling %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispatch(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.protocol*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [3 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeout*, align 8
  %11 = alloca %struct.interface_info*, align 8
  store i64 %0, i64* %2, align 8
  store i32 2, i32* %9, align 4
  %12 = call i64 (...) @StartAdapterDiscovery()
  %13 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  store i64 %12, i64* %13, align 16
  %14 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %15 = load i64, i64* %14, align 16
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %205

18:                                               ; preds = %1
  %19 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %20 = load i64, i64* %19, align 16
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** @AdapterStateChangedEvent, align 8
  %22 = load i64, i64* %2, align 8
  %23 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* @WSA_INVALID_EVENT, align 8
  %25 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 %24, i64* %25, align 16
  %26 = call i32 (...) @ApiLock()
  br label %27

27:                                               ; preds = %193, %18
  %28 = call i32 @time(i64* %7)
  %29 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  %30 = icmp ne %struct.timeout* %29, null
  br i1 %30, label %31, label %72

31:                                               ; preds = %27
  %32 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  %33 = getelementptr inbounds %struct.timeout, %struct.timeout* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  store %struct.timeout* %38, %struct.timeout** %10, align 8
  %39 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  %40 = getelementptr inbounds %struct.timeout, %struct.timeout* %39, i32 0, i32 1
  %41 = load %struct.timeout*, %struct.timeout** %40, align 8
  store %struct.timeout* %41, %struct.timeout** @timeouts, align 8
  %42 = load %struct.timeout*, %struct.timeout** %10, align 8
  %43 = getelementptr inbounds %struct.timeout, %struct.timeout* %42, i32 0, i32 3
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load %struct.timeout*, %struct.timeout** %10, align 8
  %46 = getelementptr inbounds %struct.timeout, %struct.timeout* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %44(i32 %47)
  %49 = load %struct.timeout*, %struct.timeout** @free_timeouts, align 8
  %50 = load %struct.timeout*, %struct.timeout** %10, align 8
  %51 = getelementptr inbounds %struct.timeout, %struct.timeout* %50, i32 0, i32 1
  store %struct.timeout* %49, %struct.timeout** %51, align 8
  %52 = load %struct.timeout*, %struct.timeout** %10, align 8
  store %struct.timeout* %52, %struct.timeout** @free_timeouts, align 8
  br label %193

53:                                               ; preds = %31
  %54 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  %55 = getelementptr inbounds %struct.timeout, %struct.timeout* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = sub nsw i64 %56, %57
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* @INT_MAX, align 4
  %61 = sdiv i32 %60, 1000
  %62 = sext i32 %61 to i64
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load i32, i32* @INT_MAX, align 4
  %66 = sdiv i32 %65, 1000
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %64, %53
  %69 = load i64, i64* %6, align 8
  %70 = mul nsw i64 %69, 1000
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %4, align 4
  br label %74

72:                                               ; preds = %27
  %73 = load i32, i32* @INFINITE, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %76 = load i64, i64* %75, align 16
  %77 = load i64, i64* @WSA_INVALID_EVENT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %74
  %80 = load i64, i64* @DhcpSocket, align 8
  %81 = load i64, i64* @INVALID_SOCKET, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %79
  %84 = call i64 (...) @WSACreateEvent()
  %85 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 %84, i64* %85, align 16
  %86 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %87 = load i64, i64* %86, align 16
  %88 = load i64, i64* @WSA_INVALID_EVENT, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %83
  %91 = load i64, i64* @DhcpSocket, align 8
  %92 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %93 = load i64, i64* %92, align 16
  %94 = load i32, i32* @FD_READ, align 4
  %95 = load i32, i32* @FD_CLOSE, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @WSAEventSelect(i64 %91, i64 %93, i32 %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @NO_ERROR, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %103 = load i64, i64* %102, align 16
  %104 = call i32 @WSACloseEvent(i64 %103)
  %105 = load i64, i64* @WSA_INVALID_EVENT, align 8
  %106 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 %105, i64* %106, align 16
  br label %108

107:                                              ; preds = %90
  store i32 3, i32* %9, align 4
  br label %108

108:                                              ; preds = %107, %101
  br label %109

109:                                              ; preds = %108, %83
  br label %126

110:                                              ; preds = %79, %74
  %111 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %112 = load i64, i64* %111, align 16
  %113 = load i64, i64* @WSA_INVALID_EVENT, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load i64, i64* @DhcpSocket, align 8
  %117 = load i64, i64* @INVALID_SOCKET, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %121 = load i64, i64* %120, align 16
  %122 = call i32 @WSACloseEvent(i64 %121)
  %123 = load i64, i64* @WSA_INVALID_EVENT, align 8
  %124 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 %123, i64* %124, align 16
  store i32 2, i32* %9, align 4
  br label %125

125:                                              ; preds = %119, %115, %110
  br label %126

126:                                              ; preds = %125, %109
  %127 = call i32 (...) @ApiUnlock()
  %128 = load i32, i32* %9, align 4
  %129 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %130 = load i32, i32* @FALSE, align 4
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @WaitForMultipleObjects(i32 %128, i64* %129, i32 %130, i32 %131)
  store i32 %132, i32* %3, align 4
  %133 = call i32 (...) @ApiLock()
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @WAIT_OBJECT_0, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  br label %193

138:                                              ; preds = %126
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @WAIT_OBJECT_0, align 4
  %141 = add nsw i32 %140, 1
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %194

144:                                              ; preds = %138
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @WAIT_OBJECT_0, align 4
  %147 = add nsw i32 %146, 2
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %151 = load i64, i64* %150, align 16
  %152 = call i32 @WSAResetEvent(i64 %151)
  br label %154

153:                                              ; preds = %144
  br label %193

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.protocol*, %struct.protocol** @protocols, align 8
  store %struct.protocol* %157, %struct.protocol** %5, align 8
  br label %158

158:                                              ; preds = %188, %156
  %159 = load %struct.protocol*, %struct.protocol** %5, align 8
  %160 = icmp ne %struct.protocol* %159, null
  br i1 %160, label %161, label %192

161:                                              ; preds = %158
  %162 = load %struct.protocol*, %struct.protocol** %5, align 8
  %163 = getelementptr inbounds %struct.protocol, %struct.protocol* %162, i32 0, i32 1
  %164 = load %struct.interface_info*, %struct.interface_info** %163, align 8
  store %struct.interface_info* %164, %struct.interface_info** %11, align 8
  %165 = load %struct.interface_info*, %struct.interface_info** %11, align 8
  %166 = icmp ne %struct.interface_info* %165, null
  br i1 %166, label %167, label %187

167:                                              ; preds = %161
  %168 = load %struct.protocol*, %struct.protocol** %5, align 8
  %169 = getelementptr inbounds %struct.protocol, %struct.protocol* %168, i32 0, i32 0
  %170 = load i32 (%struct.protocol*)*, i32 (%struct.protocol*)** %169, align 8
  %171 = icmp ne i32 (%struct.protocol*)* %170, @got_one
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load %struct.interface_info*, %struct.interface_info** %11, align 8
  %174 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %187, label %177

177:                                              ; preds = %172, %167
  %178 = load i32, i32* @MID_TRACE, align 4
  %179 = load %struct.protocol*, %struct.protocol** %5, align 8
  %180 = bitcast %struct.protocol* %179 to i8*
  %181 = call i32 @DH_DbgPrint(i32 %178, i8* %180)
  %182 = load %struct.protocol*, %struct.protocol** %5, align 8
  %183 = getelementptr inbounds %struct.protocol, %struct.protocol* %182, i32 0, i32 0
  %184 = load i32 (%struct.protocol*)*, i32 (%struct.protocol*)** %183, align 8
  %185 = load %struct.protocol*, %struct.protocol** %5, align 8
  %186 = call i32 %184(%struct.protocol* %185)
  br label %187

187:                                              ; preds = %177, %172, %161
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.protocol*, %struct.protocol** %5, align 8
  %190 = getelementptr inbounds %struct.protocol, %struct.protocol* %189, i32 0, i32 2
  %191 = load %struct.protocol*, %struct.protocol** %190, align 8
  store %struct.protocol* %191, %struct.protocol** %5, align 8
  br label %158

192:                                              ; preds = %158
  br label %193

193:                                              ; preds = %192, %153, %137, %37
  br i1 true, label %27, label %194

194:                                              ; preds = %193, %143
  store i32* null, i32** @AdapterStateChangedEvent, align 8
  %195 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %196 = load i64, i64* %195, align 16
  %197 = call i32 @CloseHandle(i64 %196)
  %198 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @CloseHandle(i64 %199)
  %201 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %202 = load i64, i64* %201, align 16
  %203 = call i32 @WSACloseEvent(i64 %202)
  %204 = call i32 (...) @ApiUnlock()
  br label %205

205:                                              ; preds = %194, %17
  ret void
}

declare dso_local i64 @StartAdapterDiscovery(...) #1

declare dso_local i32 @ApiLock(...) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i64 @WSACreateEvent(...) #1

declare dso_local i32 @WSAEventSelect(i64, i64, i32) #1

declare dso_local i32 @WSACloseEvent(i64) #1

declare dso_local i32 @ApiUnlock(...) #1

declare dso_local i32 @WaitForMultipleObjects(i32, i64*, i32, i32) #1

declare dso_local i32 @WSAResetEvent(i64) #1

declare dso_local i32 @got_one(%struct.protocol*) #1

declare dso_local i32 @DH_DbgPrint(i32, i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
