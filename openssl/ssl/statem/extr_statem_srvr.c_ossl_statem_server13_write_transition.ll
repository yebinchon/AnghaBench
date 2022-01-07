; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server13_write_transition.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server13_write_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_OSSL_STATEM_SERVER13_WRITE_TRANSITION = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@WRITE_TRAN_ERROR = common dso_local global i32 0, align 4
@SSL_KEY_UPDATE_NONE = common dso_local global i32 0, align 4
@WRITE_TRAN_CONTINUE = common dso_local global i32 0, align 4
@SSL_PHA_REQUEST_PENDING = common dso_local global i32 0, align 4
@WRITE_TRAN_FINISHED = common dso_local global i32 0, align 4
@SSL_OP_ENABLE_MIDDLEBOX_COMPAT = common dso_local global i32 0, align 4
@SSL_HRR_COMPLETE = common dso_local global i32 0, align 4
@SSL_HRR_PENDING = common dso_local global i32 0, align 4
@SSL_PHA_REQUESTED = common dso_local global i32 0, align 4
@SSL_PHA_EXT_RECEIVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @ossl_statem_server13_write_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ossl_statem_server13_write_transition(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %10 [
    i32 140, label %17
    i32 139, label %39
    i32 128, label %43
    i32 133, label %74
    i32 132, label %88
    i32 135, label %109
    i32 136, label %126
    i32 134, label %130
    i32 131, label %134
    i32 141, label %138
    i32 138, label %140
    i32 137, label %177
    i32 130, label %177
    i32 129, label %181
  ]

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %13 = load i32, i32* @SSL_F_OSSL_STATEM_SERVER13_WRITE_TRANSITION, align 4
  %14 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %15 = call i32 @SSLfatal(%struct.TYPE_8__* %11, i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* @WRITE_TRAN_ERROR, align 4
  store i32 %16, i32* %2, align 4
  br label %199

17:                                               ; preds = %1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SSL_KEY_UPDATE_NONE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 130, i32* %25, align 4
  %26 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %26, i32* %2, align 4
  br label %199

27:                                               ; preds = %17
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SSL_PHA_REQUEST_PENDING, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 135, i32* %35, align 4
  %36 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %36, i32* %2, align 4
  br label %199

37:                                               ; preds = %27
  %38 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %38, i32* %2, align 4
  br label %199

39:                                               ; preds = %1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 128, i32* %41, align 4
  %42 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %42, i32* %2, align 4
  br label %199

43:                                               ; preds = %1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SSL_OP_ENABLE_MIDDLEBOX_COMPAT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SSL_HRR_COMPLETE, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 133, i32* %58, align 4
  br label %72

59:                                               ; preds = %50, %43
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SSL_HRR_PENDING, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32 141, i32* %67, align 4
  br label %71

68:                                               ; preds = %59
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 132, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %56
  %73 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %73, i32* %2, align 4
  br label %199

74:                                               ; preds = %1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SSL_HRR_PENDING, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32 141, i32* %82, align 4
  br label %86

83:                                               ; preds = %74
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 132, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %87, i32* %2, align 4
  br label %199

88:                                               ; preds = %1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32 131, i32* %95, align 4
  br label %107

96:                                               ; preds = %88
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = call i32 @send_certificate_request(%struct.TYPE_8__* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  store i32 135, i32* %102, align 4
  br label %106

103:                                              ; preds = %96
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i32 136, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %93
  %108 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %108, i32* %2, align 4
  br label %199

109:                                              ; preds = %1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SSL_PHA_REQUEST_PENDING, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i32, i32* @SSL_PHA_REQUESTED, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  store i32 140, i32* %120, align 4
  br label %124

121:                                              ; preds = %109
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store i32 136, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %115
  %125 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %125, i32* %2, align 4
  br label %199

126:                                              ; preds = %1
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i32 134, i32* %128, align 4
  %129 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %129, i32* %2, align 4
  br label %199

130:                                              ; preds = %1
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i32 131, i32* %132, align 4
  %133 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %133, i32* %2, align 4
  br label %199

134:                                              ; preds = %1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  store i32 141, i32* %136, align 4
  %137 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %137, i32* %2, align 4
  br label %199

138:                                              ; preds = %1
  %139 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %139, i32* %2, align 4
  br label %199

140:                                              ; preds = %1
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SSL_PHA_REQUESTED, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load i32, i32* @SSL_PHA_EXT_RECEIVED, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  br label %161

150:                                              ; preds = %140
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %150
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i32 140, i32* %158, align 4
  %159 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %159, i32* %2, align 4
  br label %199

160:                                              ; preds = %150
  br label %161

161:                                              ; preds = %160, %146
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp sgt i32 %164, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %161
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  store i32 129, i32* %171, align 4
  br label %175

172:                                              ; preds = %161
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  store i32 140, i32* %174, align 4
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %176, i32* %2, align 4
  br label %199

177:                                              ; preds = %1, %1
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  store i32 140, i32* %179, align 4
  %180 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %180, i32* %2, align 4
  br label %199

181:                                              ; preds = %1
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %181
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp sle i32 %189, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %186, %181
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  store i32 140, i32* %196, align 4
  br label %197

197:                                              ; preds = %194, %186
  %198 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %197, %177, %175, %156, %138, %134, %130, %126, %124, %107, %86, %72, %39, %37, %33, %23, %10
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @send_certificate_request(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
