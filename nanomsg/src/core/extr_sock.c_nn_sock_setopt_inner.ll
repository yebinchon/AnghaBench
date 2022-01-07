; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_setopt_inner.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_setopt_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i64*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, i32, i32, i8*, i64)* }
%struct.nn_optset = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.nn_optset*, i32, i8*, i64)* }

@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@NN_SOCKET_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nn_sock*, i32, i32, i8*, i64)* @nn_sock_setopt_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_sock_setopt_inner(%struct.nn_sock* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nn_sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nn_optset*, align 8
  %13 = alloca i32, align 4
  store %struct.nn_sock* %0, %struct.nn_sock** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @NN_SOL_SOCKET, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %5
  %18 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %19 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %18, i32 0, i32 10
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_8__*, i32, i32, i8*, i64)*, i32 (%struct.TYPE_8__*, i32, i32, i8*, i64)** %23, align 8
  %25 = icmp eq i32 (%struct.TYPE_8__*, i32, i32, i8*, i64)* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @ENOPROTOOPT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %224

29:                                               ; preds = %17
  %30 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %31 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %30, i32 0, i32 10
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_8__*, i32, i32, i8*, i64)*, i32 (%struct.TYPE_8__*, i32, i32, i8*, i64)** %35, align 8
  %37 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %38 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %37, i32 0, i32 10
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 %36(%struct.TYPE_8__* %39, i32 %40, i32 %41, i8* %42, i64 %43)
  store i32 %44, i32* %6, align 4
  br label %224

45:                                               ; preds = %5
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @NN_SOL_SOCKET, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call %struct.nn_optset* @nn_sock_optset(%struct.nn_sock* %50, i32 %51)
  store %struct.nn_optset* %52, %struct.nn_optset** %12, align 8
  %53 = load %struct.nn_optset*, %struct.nn_optset** %12, align 8
  %54 = icmp ne %struct.nn_optset* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOPROTOOPT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %224

58:                                               ; preds = %49
  %59 = load %struct.nn_optset*, %struct.nn_optset** %12, align 8
  %60 = getelementptr inbounds %struct.nn_optset, %struct.nn_optset* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32 (%struct.nn_optset*, i32, i8*, i64)*, i32 (%struct.nn_optset*, i32, i8*, i64)** %62, align 8
  %64 = load %struct.nn_optset*, %struct.nn_optset** %12, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 %63(%struct.nn_optset* %64, i32 %65, i8* %66, i64 %67)
  store i32 %68, i32* %6, align 4
  br label %224

69:                                               ; preds = %45
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @NN_SOL_SOCKET, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @nn_assert(i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @NN_SOCKET_NAME, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %69
  %79 = load i64, i64* %11, align 8
  %80 = icmp ugt i64 %79, 63
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %224

84:                                               ; preds = %78
  %85 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %86 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %85, i32 0, i32 9
  %87 = load i64*, i64** %86, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @memcpy(i64* %87, i8* %88, i64 %89)
  %91 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %92 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %91, i32 0, i32 9
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 0, i64* %95, align 8
  store i32 0, i32* %6, align 4
  br label %224

96:                                               ; preds = %69
  %97 = load i64, i64* %11, align 8
  %98 = icmp ne i64 %97, 4
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %224

102:                                              ; preds = %96
  %103 = load i8*, i8** %10, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %9, align 4
  switch i32 %106, label %221 [
    i32 130, label %107
    i32 136, label %117
    i32 135, label %127
    i32 128, label %137
    i32 133, label %141
    i32 132, label %145
    i32 131, label %155
    i32 129, label %165
    i32 134, label %179
    i32 139, label %193
    i32 137, label %207
    i32 138, label %220
  ]

107:                                              ; preds = %102
  %108 = load i32, i32* %13, align 4
  %109 = icmp sle i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %224

113:                                              ; preds = %107
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %116 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  store i32 0, i32* %6, align 4
  br label %224

117:                                              ; preds = %102
  %118 = load i32, i32* %13, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %224

123:                                              ; preds = %117
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %126 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  store i32 0, i32* %6, align 4
  br label %224

127:                                              ; preds = %102
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %128, -1
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %6, align 4
  br label %224

133:                                              ; preds = %127
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %136 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  store i32 0, i32* %6, align 4
  br label %224

137:                                              ; preds = %102
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %140 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  store i32 0, i32* %6, align 4
  br label %224

141:                                              ; preds = %102
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %144 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  store i32 0, i32* %6, align 4
  br label %224

145:                                              ; preds = %102
  %146 = load i32, i32* %13, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %6, align 4
  br label %224

151:                                              ; preds = %145
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %154 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  store i32 0, i32* %6, align 4
  br label %224

155:                                              ; preds = %102
  %156 = load i32, i32* %13, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %6, align 4
  br label %224

161:                                              ; preds = %155
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %164 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 8
  store i32 0, i32* %6, align 4
  br label %224

165:                                              ; preds = %102
  %166 = load i32, i32* %13, align 4
  %167 = icmp slt i32 %166, 1
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %13, align 4
  %170 = icmp sgt i32 %169, 16
  br i1 %170, label %171, label %174

171:                                              ; preds = %168, %165
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %6, align 4
  br label %224

174:                                              ; preds = %168
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %177 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %176, i32 0, i32 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 8
  store i32 0, i32* %6, align 4
  br label %224

179:                                              ; preds = %102
  %180 = load i32, i32* %13, align 4
  %181 = icmp slt i32 %180, 1
  br i1 %181, label %185, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %13, align 4
  %184 = icmp sgt i32 %183, 16
  br i1 %184, label %185, label %188

185:                                              ; preds = %182, %179
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %6, align 4
  br label %224

188:                                              ; preds = %182
  %189 = load i32, i32* %13, align 4
  %190 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %191 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %190, i32 0, i32 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  store i32 %189, i32* %192, align 4
  store i32 0, i32* %6, align 4
  br label %224

193:                                              ; preds = %102
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 1
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %6, align 4
  br label %224

202:                                              ; preds = %196, %193
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %205 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %204, i32 0, i32 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  store i32 %203, i32* %206, align 8
  store i32 0, i32* %6, align 4
  br label %224

207:                                              ; preds = %102
  %208 = load i32, i32* %13, align 4
  %209 = icmp slt i32 %208, 1
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %13, align 4
  %212 = icmp sgt i32 %211, 255
  br i1 %212, label %213, label %216

213:                                              ; preds = %210, %207
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %6, align 4
  br label %224

216:                                              ; preds = %210
  %217 = load i32, i32* %13, align 4
  %218 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %219 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %218, i32 0, i32 7
  store i32 %217, i32* %219, align 4
  store i32 0, i32* %6, align 4
  br label %224

220:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %224

221:                                              ; preds = %102
  %222 = load i32, i32* @ENOPROTOOPT, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %221, %220, %216, %213, %202, %199, %188, %185, %174, %171, %161, %158, %151, %148, %141, %137, %133, %130, %123, %120, %113, %110, %99, %84, %81, %58, %55, %29, %26
  %225 = load i32, i32* %6, align 4
  ret i32 %225
}

declare dso_local %struct.nn_optset* @nn_sock_optset(%struct.nn_sock*, i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
