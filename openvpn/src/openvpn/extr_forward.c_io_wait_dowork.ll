; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_io_wait_dowork.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_io_wait_dowork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.event_set_return = type { i32, i64 }

@io_wait_dowork.socket_shift = internal global i32 0, align 4
@io_wait_dowork.tun_shift = internal global i32 2, align 4
@io_wait_dowork.err_shift = internal global i32 4, align 4
@IOW_WAIT_SIGNAL = common dso_local global i32 0, align 4
@IOW_TO_LINK = common dso_local global i32 0, align 4
@IOW_SHAPER = common dso_local global i32 0, align 4
@EVENT_WRITE = common dso_local global i32 0, align 4
@IOW_FRAG = common dso_local global i32 0, align 4
@IOW_READ_TUN = common dso_local global i32 0, align 4
@EVENT_READ = common dso_local global i32 0, align 4
@IOW_TO_TUN = common dso_local global i32 0, align 4
@IOW_READ_LINK = common dso_local global i32 0, align 4
@IOW_MBUF = common dso_local global i32 0, align 4
@IOW_READ_TUN_FORCE = common dso_local global i32 0, align 4
@ES_ERROR = common dso_local global i32 0, align 4
@IOW_CHECK_RESIDUAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"event_wait\00", align 1
@ES_TIMEOUT = common dso_local global i32 0, align 4
@SOCKET_READ = common dso_local global i32 0, align 4
@D_EVENT_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"I/O WAIT status=0x%04x\00", align 1
@MODE_SERVER = common dso_local global i64 0, align 8
@management = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @io_wait_dowork(%struct.context* %0, i32 %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x %struct.event_set_return], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.event_set_return*, align 8
  store %struct.context* %0, %struct.context** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.context*, %struct.context** %3, align 8
  %12 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @event_reset(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IOW_WAIT_SIGNAL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.context*, %struct.context** %3, align 8
  %22 = getelementptr inbounds %struct.context, %struct.context* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @wait_signal(i32 %24, i8* bitcast (i32* @io_wait_dowork.err_shift to i8*))
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IOW_TO_LINK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @IOW_SHAPER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @EVENT_WRITE, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @EVENT_WRITE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %36
  br label %65

45:                                               ; preds = %26
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @IOW_FRAG, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.context*, %struct.context** %3, align 8
  %52 = call i64 @TO_LINK_FRAG(%struct.context* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @IOW_READ_TUN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @EVENT_READ, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %50
  br label %65

65:                                               ; preds = %64, %44
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @IOW_TO_TUN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @EVENT_WRITE, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %84

74:                                               ; preds = %65
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @IOW_READ_LINK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @EVENT_READ, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %74
  br label %84

84:                                               ; preds = %83, %70
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @IOW_MBUF, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @EVENT_WRITE, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @IOW_READ_TUN_FORCE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @EVENT_READ, align 4
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load %struct.context*, %struct.context** %3, align 8
  %104 = getelementptr inbounds %struct.context, %struct.context* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.context*, %struct.context** %3, align 8
  %108 = getelementptr inbounds %struct.context, %struct.context* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @socket_set(i32 %106, i32 %110, i32 %111, i8* bitcast (i32* @io_wait_dowork.socket_shift to i8*), i32* null)
  %113 = load %struct.context*, %struct.context** %3, align 8
  %114 = getelementptr inbounds %struct.context, %struct.context* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.context*, %struct.context** %3, align 8
  %118 = getelementptr inbounds %struct.context, %struct.context* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @tun_set(i32 %116, i32 %120, i32 %121, i8* bitcast (i32* @io_wait_dowork.tun_shift to i8*), i32* null)
  %123 = load i32, i32* @ES_ERROR, align 4
  %124 = load %struct.context*, %struct.context** %3, align 8
  %125 = getelementptr inbounds %struct.context, %struct.context* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.context*, %struct.context** %3, align 8
  %128 = getelementptr inbounds %struct.context, %struct.context* %127, i32 0, i32 1
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %208, label %133

133:                                              ; preds = %102
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @IOW_CHECK_RESIDUAL, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load %struct.context*, %struct.context** %3, align 8
  %140 = getelementptr inbounds %struct.context, %struct.context* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @socket_read_residual(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %202, label %145

145:                                              ; preds = %138, %133
  %146 = load %struct.context*, %struct.context** %3, align 8
  %147 = getelementptr inbounds %struct.context, %struct.context* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.context*, %struct.context** %3, align 8
  %151 = getelementptr inbounds %struct.context, %struct.context* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = getelementptr inbounds [4 x %struct.event_set_return], [4 x %struct.event_set_return]* %7, i64 0, i64 0
  %154 = getelementptr inbounds [4 x %struct.event_set_return], [4 x %struct.event_set_return]* %7, i64 0, i64 0
  %155 = call i32 @SIZE(%struct.event_set_return* %154)
  %156 = call i32 @event_wait(i32 %149, i32* %152, %struct.event_set_return* %153, i32 %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @check_status(i32 %157, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  %159 = load i32, i32* %8, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %192

161:                                              ; preds = %145
  %162 = load %struct.context*, %struct.context** %3, align 8
  %163 = getelementptr inbounds %struct.context, %struct.context* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  store i32 0, i32* %164, align 8
  store i32 0, i32* %9, align 4
  br label %165

165:                                              ; preds = %188, %161
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %191

169:                                              ; preds = %165
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4 x %struct.event_set_return], [4 x %struct.event_set_return]* %7, i64 0, i64 %171
  store %struct.event_set_return* %172, %struct.event_set_return** %10, align 8
  %173 = load %struct.event_set_return*, %struct.event_set_return** %10, align 8
  %174 = getelementptr inbounds %struct.event_set_return, %struct.event_set_return* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %175, 3
  %177 = load %struct.event_set_return*, %struct.event_set_return** %10, align 8
  %178 = getelementptr inbounds %struct.event_set_return, %struct.event_set_return* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = inttoptr i64 %179 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %176, %181
  %183 = load %struct.context*, %struct.context** %3, align 8
  %184 = getelementptr inbounds %struct.context, %struct.context* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %182
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %169
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %165

191:                                              ; preds = %165
  br label %201

192:                                              ; preds = %145
  %193 = load i32, i32* %8, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load i32, i32* @ES_TIMEOUT, align 4
  %197 = load %struct.context*, %struct.context** %3, align 8
  %198 = getelementptr inbounds %struct.context, %struct.context* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  store i32 %196, i32* %199, align 8
  br label %200

200:                                              ; preds = %195, %192
  br label %201

201:                                              ; preds = %200, %191
  br label %207

202:                                              ; preds = %138
  %203 = load i32, i32* @SOCKET_READ, align 4
  %204 = load %struct.context*, %struct.context** %3, align 8
  %205 = getelementptr inbounds %struct.context, %struct.context* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 8
  br label %207

207:                                              ; preds = %202, %201
  br label %208

208:                                              ; preds = %207, %102
  %209 = call i32 (...) @update_time()
  %210 = load %struct.context*, %struct.context** %3, align 8
  %211 = getelementptr inbounds %struct.context, %struct.context* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @ES_ERROR, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %208
  %218 = load %struct.context*, %struct.context** %3, align 8
  %219 = getelementptr inbounds %struct.context, %struct.context* %218, i32 0, i32 1
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = call i32 @get_signal(i32* %221)
  br label %223

223:                                              ; preds = %217, %208
  %224 = load i32, i32* @D_EVENT_WAIT, align 4
  %225 = load %struct.context*, %struct.context** %3, align 8
  %226 = getelementptr inbounds %struct.context, %struct.context* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @dmsg(i32 %224, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %228)
  ret void
}

declare dso_local i32 @event_reset(i32) #1

declare dso_local i32 @wait_signal(i32, i8*) #1

declare dso_local i64 @TO_LINK_FRAG(%struct.context*) #1

declare dso_local i32 @socket_set(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @tun_set(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @socket_read_residual(i32) #1

declare dso_local i32 @event_wait(i32, i32*, %struct.event_set_return*, i32) #1

declare dso_local i32 @SIZE(%struct.event_set_return*) #1

declare dso_local i32 @check_status(i32, i8*, i32*, i32*) #1

declare dso_local i32 @update_time(...) #1

declare dso_local i32 @get_signal(i32*) #1

declare dso_local i32 @dmsg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
