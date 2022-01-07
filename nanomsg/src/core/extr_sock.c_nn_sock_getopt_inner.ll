; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_getopt_inner.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_getopt_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_10__*, i32, i32, i8*, i64*)* }
%struct.nn_optset = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.nn_optset*, i32, i8*, i64*)* }

@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@NN_SOCKTYPE_FLAG_NOSEND = common dso_local global i32 0, align 4
@NN_SOCKTYPE_FLAG_NORECV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_getopt_inner(%struct.nn_sock* %0, i32 %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nn_sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.nn_optset*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nn_sock* %0, %struct.nn_sock** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NN_SOL_SOCKET, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %5
  %19 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %20 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %19, i32 0, i32 13
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_10__*, i32, i32, i8*, i64*)*, i32 (%struct.TYPE_10__*, i32, i32, i8*, i64*)** %24, align 8
  %26 = icmp eq i32 (%struct.TYPE_10__*, i32, i32, i8*, i64*)* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOPROTOOPT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %222

30:                                               ; preds = %18
  %31 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %32 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %31, i32 0, i32 13
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_10__*, i32, i32, i8*, i64*)*, i32 (%struct.TYPE_10__*, i32, i32, i8*, i64*)** %36, align 8
  %38 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %39 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %38, i32 0, i32 13
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = call i32 %37(%struct.TYPE_10__* %40, i32 %41, i32 %42, i8* %43, i64* %44)
  store i32 %45, i32* %6, align 4
  br label %222

46:                                               ; preds = %5
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @NN_SOL_SOCKET, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call %struct.nn_optset* @nn_sock_optset(%struct.nn_sock* %51, i32 %52)
  store %struct.nn_optset* %53, %struct.nn_optset** %12, align 8
  %54 = load %struct.nn_optset*, %struct.nn_optset** %12, align 8
  %55 = icmp ne %struct.nn_optset* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOPROTOOPT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %222

59:                                               ; preds = %50
  %60 = load %struct.nn_optset*, %struct.nn_optset** %12, align 8
  %61 = getelementptr inbounds %struct.nn_optset, %struct.nn_optset* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32 (%struct.nn_optset*, i32, i8*, i64*)*, i32 (%struct.nn_optset*, i32, i8*, i64*)** %63, align 8
  %65 = load %struct.nn_optset*, %struct.nn_optset** %12, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load i64*, i64** %11, align 8
  %69 = call i32 %64(%struct.nn_optset* %65, i32 %66, i8* %67, i64* %68)
  store i32 %69, i32* %6, align 4
  br label %222

70:                                               ; preds = %46
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @NN_SOL_SOCKET, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @nn_assert(i32 %74)
  %76 = load i32, i32* %9, align 4
  switch i32 %76, label %206 [
    i32 144, label %77
    i32 140, label %83
    i32 142, label %89
    i32 132, label %90
    i32 139, label %94
    i32 137, label %98
    i32 129, label %102
    i32 135, label %106
    i32 134, label %110
    i32 133, label %114
    i32 130, label %118
    i32 136, label %123
    i32 143, label %128
    i32 141, label %133
    i32 131, label %137
    i32 138, label %165
    i32 128, label %193
  ]

77:                                               ; preds = %70
  %78 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %79 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %78, i32 0, i32 10
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %13, align 4
  br label %209

83:                                               ; preds = %70
  %84 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %85 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %84, i32 0, i32 10
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %13, align 4
  br label %209

89:                                               ; preds = %70
  store i32 0, i32* %13, align 4
  br label %209

90:                                               ; preds = %70
  %91 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %92 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %13, align 4
  br label %209

94:                                               ; preds = %70
  %95 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %96 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %13, align 4
  br label %209

98:                                               ; preds = %70
  %99 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %100 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %13, align 4
  br label %209

102:                                              ; preds = %70
  %103 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %104 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %13, align 4
  br label %209

106:                                              ; preds = %70
  %107 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %108 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %13, align 4
  br label %209

110:                                              ; preds = %70
  %111 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %112 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %13, align 4
  br label %209

114:                                              ; preds = %70
  %115 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %116 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %13, align 4
  br label %209

118:                                              ; preds = %70
  %119 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %120 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %119, i32 0, i32 12
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %13, align 4
  br label %209

123:                                              ; preds = %70
  %124 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %125 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %124, i32 0, i32 12
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %13, align 4
  br label %209

128:                                              ; preds = %70
  %129 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %130 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %129, i32 0, i32 12
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %13, align 4
  br label %209

133:                                              ; preds = %70
  %134 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %135 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %13, align 4
  br label %209

137:                                              ; preds = %70
  %138 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %139 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %138, i32 0, i32 10
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @NN_SOCKTYPE_FLAG_NOSEND, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load i32, i32* @ENOPROTOOPT, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %6, align 4
  br label %222

149:                                              ; preds = %137
  %150 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %151 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %150, i32 0, i32 11
  %152 = call i32 @nn_efd_getfd(i32* %151)
  store i32 %152, i32* %14, align 4
  %153 = load i8*, i8** %10, align 8
  %154 = load i64*, i64** %11, align 8
  %155 = load i64, i64* %154, align 8
  %156 = icmp ult i64 %155, 4
  br i1 %156, label %157, label %160

157:                                              ; preds = %149
  %158 = load i64*, i64** %11, align 8
  %159 = load i64, i64* %158, align 8
  br label %161

160:                                              ; preds = %149
  br label %161

161:                                              ; preds = %160, %157
  %162 = phi i64 [ %159, %157 ], [ 4, %160 ]
  %163 = call i32 @memcpy(i8* %153, i32* %14, i64 %162)
  %164 = load i64*, i64** %11, align 8
  store i64 4, i64* %164, align 8
  store i32 0, i32* %6, align 4
  br label %222

165:                                              ; preds = %70
  %166 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %167 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %166, i32 0, i32 10
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @NN_SOCKTYPE_FLAG_NORECV, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %165
  %175 = load i32, i32* @ENOPROTOOPT, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %6, align 4
  br label %222

177:                                              ; preds = %165
  %178 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %179 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %178, i32 0, i32 9
  %180 = call i32 @nn_efd_getfd(i32* %179)
  store i32 %180, i32* %14, align 4
  %181 = load i8*, i8** %10, align 8
  %182 = load i64*, i64** %11, align 8
  %183 = load i64, i64* %182, align 8
  %184 = icmp ult i64 %183, 4
  br i1 %184, label %185, label %188

185:                                              ; preds = %177
  %186 = load i64*, i64** %11, align 8
  %187 = load i64, i64* %186, align 8
  br label %189

188:                                              ; preds = %177
  br label %189

189:                                              ; preds = %188, %185
  %190 = phi i64 [ %187, %185 ], [ 4, %188 ]
  %191 = call i32 @memcpy(i8* %181, i32* %14, i64 %190)
  %192 = load i64*, i64** %11, align 8
  store i64 4, i64* %192, align 8
  store i32 0, i32* %6, align 4
  br label %222

193:                                              ; preds = %70
  %194 = load i8*, i8** %10, align 8
  %195 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %196 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 8
  %198 = load i64*, i64** %11, align 8
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @strncpy(i8* %194, i32 %197, i64 %199)
  %201 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %202 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @strlen(i32 %203)
  %205 = load i64*, i64** %11, align 8
  store i64 %204, i64* %205, align 8
  store i32 0, i32* %6, align 4
  br label %222

206:                                              ; preds = %70
  %207 = load i32, i32* @ENOPROTOOPT, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %6, align 4
  br label %222

209:                                              ; preds = %133, %128, %123, %118, %114, %110, %106, %102, %98, %94, %90, %89, %83, %77
  %210 = load i8*, i8** %10, align 8
  %211 = load i64*, i64** %11, align 8
  %212 = load i64, i64* %211, align 8
  %213 = icmp ult i64 %212, 4
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i64*, i64** %11, align 8
  %216 = load i64, i64* %215, align 8
  br label %218

217:                                              ; preds = %209
  br label %218

218:                                              ; preds = %217, %214
  %219 = phi i64 [ %216, %214 ], [ 4, %217 ]
  %220 = call i32 @memcpy(i8* %210, i32* %13, i64 %219)
  %221 = load i64*, i64** %11, align 8
  store i64 4, i64* %221, align 8
  store i32 0, i32* %6, align 4
  br label %222

222:                                              ; preds = %218, %206, %193, %189, %174, %161, %146, %59, %56, %30, %27
  %223 = load i32, i32* %6, align 4
  ret i32 %223
}

declare dso_local %struct.nn_optset* @nn_sock_optset(%struct.nn_sock*, i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_efd_getfd(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @strncpy(i8*, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
