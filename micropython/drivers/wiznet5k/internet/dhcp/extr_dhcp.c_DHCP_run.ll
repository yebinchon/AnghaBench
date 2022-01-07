; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_DHCP_run.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_DHCP_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@dhcp_state = common dso_local global i32 0, align 4
@STATE_DHCP_STOP = common dso_local global i32 0, align 4
@DHCP_STOPPED = common dso_local global i32 0, align 4
@DHCP_SOCKET = common dso_local global i32 0, align 4
@SOCK_UDP = common dso_local global i64 0, align 8
@Sn_MR_UDP = common dso_local global i32 0, align 4
@DHCP_CLIENT_PORT = common dso_local global i32 0, align 4
@DHCP_RUNNING = common dso_local global i32 0, align 4
@DHCP_allocated_ip = common dso_local global i32* null, align 8
@DHCP_OFFER = common dso_local global i32 0, align 4
@pDHCPMSG = common dso_local global %struct.TYPE_2__* null, align 8
@DHCP_ACK = common dso_local global i32 0, align 4
@DHCP_NAK = common dso_local global i32 0, align 4
@DHCP_IP_LEASED = common dso_local global i32 0, align 4
@dhcp_lease_time = common dso_local global i32 0, align 4
@INFINITE_LEASETIME = common dso_local global i32 0, align 4
@dhcp_tick_1s = common dso_local global i32 0, align 4
@OLD_allocated_ip = common dso_local global i32* null, align 8
@DHCP_XID = common dso_local global i32 0, align 4
@dhcp_retry_count = common dso_local global i32 0, align 4
@DHCP_IP_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DHCP_run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @dhcp_state, align 4
  %5 = load i32, i32* @STATE_DHCP_STOP, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @DHCP_STOPPED, align 4
  store i32 %8, i32* %1, align 4
  br label %185

9:                                                ; preds = %0
  %10 = load i32, i32* @DHCP_SOCKET, align 4
  %11 = call i64 @getSn_SR(i32 %10)
  %12 = load i64, i64* @SOCK_UDP, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i32, i32* @DHCP_SOCKET, align 4
  %16 = load i32, i32* @Sn_MR_UDP, align 4
  %17 = load i32, i32* @DHCP_CLIENT_PORT, align 4
  %18 = call i32 @socket(i32 %15, i32 %16, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load i32, i32* @DHCP_RUNNING, align 4
  store i32 %20, i32* %3, align 4
  %21 = call i32 (...) @parseDHCPMSG()
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* @dhcp_state, align 4
  switch i32 %22, label %182 [
    i32 131, label %23
    i32 132, label %33
    i32 129, label %70
    i32 130, label %94
    i32 128, label %130
  ]

23:                                               ; preds = %19
  %24 = load i32*, i32** @DHCP_allocated_ip, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** @DHCP_allocated_ip, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** @DHCP_allocated_ip, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 0, i32* %29, align 4
  %30 = load i32*, i32** @DHCP_allocated_ip, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 0, i32* %31, align 4
  %32 = call i32 (...) @send_DHCP_DISCOVER()
  store i32 132, i32* @dhcp_state, align 4
  br label %183

33:                                               ; preds = %19
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @DHCP_OFFER, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %33
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** @DHCP_allocated_ip, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @DHCP_allocated_ip, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** @DHCP_allocated_ip, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** @DHCP_allocated_ip, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 %63, i32* %65, align 4
  %66 = call i32 (...) @send_DHCP_REQUEST()
  store i32 129, i32* @dhcp_state, align 4
  br label %69

67:                                               ; preds = %33
  %68 = call i32 (...) @check_DHCP_timeout()
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %37
  br label %183

70:                                               ; preds = %19
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @DHCP_ACK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = call i32 (...) @check_DHCP_leasedIP()
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = call i32 (...) @dhcp_ip_assign()
  %79 = call i32 (...) @reset_DHCP_timeout()
  store i32 130, i32* @dhcp_state, align 4
  br label %83

80:                                               ; preds = %74
  %81 = call i32 (...) @reset_DHCP_timeout()
  %82 = call i32 (...) @dhcp_ip_conflict()
  store i32 131, i32* @dhcp_state, align 4
  br label %83

83:                                               ; preds = %80, %77
  br label %93

84:                                               ; preds = %70
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* @DHCP_NAK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 (...) @reset_DHCP_timeout()
  store i32 132, i32* @dhcp_state, align 4
  br label %92

90:                                               ; preds = %84
  %91 = call i32 (...) @check_DHCP_timeout()
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %88
  br label %93

93:                                               ; preds = %92, %83
  br label %183

94:                                               ; preds = %19
  %95 = load i32, i32* @DHCP_IP_LEASED, align 4
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* @dhcp_lease_time, align 4
  %97 = load i32, i32* @INFINITE_LEASETIME, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %129

99:                                               ; preds = %94
  %100 = load i32, i32* @dhcp_lease_time, align 4
  %101 = sdiv i32 %100, 2
  %102 = load i32, i32* @dhcp_tick_1s, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %129

104:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  %105 = load i32*, i32** @DHCP_allocated_ip, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** @OLD_allocated_ip, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** @DHCP_allocated_ip, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** @OLD_allocated_ip, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** @DHCP_allocated_ip, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** @OLD_allocated_ip, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  store i32 %117, i32* %119, align 4
  %120 = load i32*, i32** @DHCP_allocated_ip, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** @OLD_allocated_ip, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @DHCP_XID, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* @DHCP_XID, align 4
  %127 = call i32 (...) @send_DHCP_REQUEST()
  %128 = call i32 (...) @reset_DHCP_timeout()
  store i32 128, i32* @dhcp_state, align 4
  br label %129

129:                                              ; preds = %104, %99, %94
  br label %183

130:                                              ; preds = %19
  %131 = load i32, i32* @DHCP_IP_LEASED, align 4
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %2, align 4
  %133 = load i32, i32* @DHCP_ACK, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %172

135:                                              ; preds = %130
  store i32 0, i32* @dhcp_retry_count, align 4
  %136 = load i32*, i32** @OLD_allocated_ip, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** @DHCP_allocated_ip, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %138, %141
  br i1 %142, label %167, label %143

143:                                              ; preds = %135
  %144 = load i32*, i32** @OLD_allocated_ip, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** @DHCP_allocated_ip, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %146, %149
  br i1 %150, label %167, label %151

151:                                              ; preds = %143
  %152 = load i32*, i32** @OLD_allocated_ip, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** @DHCP_allocated_ip, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %154, %157
  br i1 %158, label %167, label %159

159:                                              ; preds = %151
  %160 = load i32*, i32** @OLD_allocated_ip, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** @DHCP_allocated_ip, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %162, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %159, %151, %143, %135
  %168 = load i32, i32* @DHCP_IP_CHANGED, align 4
  store i32 %168, i32* %3, align 4
  %169 = call i32 (...) @dhcp_ip_update()
  br label %170

170:                                              ; preds = %167, %159
  %171 = call i32 (...) @reset_DHCP_timeout()
  store i32 130, i32* @dhcp_state, align 4
  br label %181

172:                                              ; preds = %130
  %173 = load i32, i32* %2, align 4
  %174 = load i32, i32* @DHCP_NAK, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = call i32 (...) @reset_DHCP_timeout()
  store i32 132, i32* @dhcp_state, align 4
  br label %180

178:                                              ; preds = %172
  %179 = call i32 (...) @check_DHCP_timeout()
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %178, %176
  br label %181

181:                                              ; preds = %180, %170
  br label %183

182:                                              ; preds = %19
  br label %183

183:                                              ; preds = %182, %181, %129, %93, %69, %23
  %184 = load i32, i32* %3, align 4
  store i32 %184, i32* %1, align 4
  br label %185

185:                                              ; preds = %183, %7
  %186 = load i32, i32* %1, align 4
  ret i32 %186
}

declare dso_local i64 @getSn_SR(i32) #1

declare dso_local i32 @socket(i32, i32, i32, i32) #1

declare dso_local i32 @parseDHCPMSG(...) #1

declare dso_local i32 @send_DHCP_DISCOVER(...) #1

declare dso_local i32 @send_DHCP_REQUEST(...) #1

declare dso_local i32 @check_DHCP_timeout(...) #1

declare dso_local i32 @check_DHCP_leasedIP(...) #1

declare dso_local i32 @dhcp_ip_assign(...) #1

declare dso_local i32 @reset_DHCP_timeout(...) #1

declare dso_local i32 @dhcp_ip_conflict(...) #1

declare dso_local i32 @dhcp_ip_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
