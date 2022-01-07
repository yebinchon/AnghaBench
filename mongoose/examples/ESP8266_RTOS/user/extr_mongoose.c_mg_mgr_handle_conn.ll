; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_mgr_handle_conn.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_mgr_handle_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@MG_F_WANT_READ = common dso_local global i32 0, align 4
@MG_F_WANT_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%p fd=%d fd_flags=%d nc_flags=0x%lx rmbl=%d smbl=%d\00", align 1
@MG_F_CONNECTING = common dso_local global i32 0, align 4
@MG_F_UDP = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@_MG_F_FD_CAN_READ = common dso_local global i32 0, align 4
@MG_F_LISTENING = common dso_local global i32 0, align 4
@_MG_F_FD_CAN_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%p after fd=%d nc_flags=0x%lx rmbl=%d smbl=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_mgr_handle_conn(%struct.mg_connection* %0, i32 %1, double %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %15 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MG_F_WANT_READ, align 4
  %18 = load i32, i32* @MG_F_WANT_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %13, %3
  %23 = phi i1 [ true, %3 ], [ %21, %13 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %29 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %30 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %34 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %37 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %42 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @DBG(i8* %47)
  br label %49

49:                                               ; preds = %27, %22
  %50 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %51 = load double, double* %6, align 8
  %52 = call i32 @mg_if_poll(%struct.mg_connection* %50, double %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %173

55:                                               ; preds = %49
  %56 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %57 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MG_F_CONNECTING, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %111

62:                                               ; preds = %55
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  %66 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %67 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MG_F_UDP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %94, label %72

72:                                               ; preds = %65
  store i32 4, i32* %9, align 4
  %73 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %74 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SOL_SOCKET, align 4
  %77 = load i32, i32* @SO_ERROR, align 4
  %78 = bitcast i32* %8 to i8*
  %79 = call i32 @getsockopt(i32 %75, i32 %76, i32 %77, i8* %78, i32* %9)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 1, i32* %8, align 4
  br label %93

83:                                               ; preds = %72
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @EWOULDBLOCK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %83
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %87
  br label %93

93:                                               ; preds = %92, %82
  br label %94

94:                                               ; preds = %93, %65
  %95 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @mg_if_connect_cb(%struct.mg_connection* %95, i32 %96)
  br label %110

98:                                               ; preds = %62
  %99 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %100 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %105 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %106 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @mg_if_connect_cb(%struct.mg_connection* %104, i32 %107)
  br label %109

109:                                              ; preds = %103, %98
  br label %110

110:                                              ; preds = %109, %94
  br label %111

111:                                              ; preds = %110, %55
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @_MG_F_FD_CAN_READ, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %111
  %117 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %118 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @MG_F_UDP, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %125 = call i32 @mg_if_can_recv_cb(%struct.mg_connection* %124)
  br label %140

126:                                              ; preds = %116
  %127 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %128 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @MG_F_LISTENING, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %135 = call i32 @mg_accept_conn(%struct.mg_connection* %134)
  br label %139

136:                                              ; preds = %126
  %137 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %138 = call i32 @mg_if_can_recv_cb(%struct.mg_connection* %137)
  br label %139

139:                                              ; preds = %136, %133
  br label %140

140:                                              ; preds = %139, %123
  br label %141

141:                                              ; preds = %140, %111
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @_MG_F_FD_CAN_WRITE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %148 = call i32 @mg_if_can_send_cb(%struct.mg_connection* %147)
  br label %149

149:                                              ; preds = %146, %141
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %173

152:                                              ; preds = %149
  %153 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %154 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %155 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %158 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %161 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %166 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = sext i32 %169 to i64
  %171 = inttoptr i64 %170 to i8*
  %172 = call i32 @DBG(i8* %171)
  br label %173

173:                                              ; preds = %54, %152, %149
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @mg_if_poll(%struct.mg_connection*, double) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @mg_if_connect_cb(%struct.mg_connection*, i32) #1

declare dso_local i32 @mg_if_can_recv_cb(%struct.mg_connection*) #1

declare dso_local i32 @mg_accept_conn(%struct.mg_connection*) #1

declare dso_local i32 @mg_if_can_send_cb(%struct.mg_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
