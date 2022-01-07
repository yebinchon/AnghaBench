; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-misc.c_pqReadData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-misc.c_pqReadData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i64, i32, i32, i32, i32, i64 }

@PGINVALID_SOCKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"connection not open\0A\00", align 1
@SOCK_ERRNO = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [138 x i8] c"server closed the connection unexpectedly\0A\09This probably means the server terminated abnormally\0A\09before or while processing the request.\0A\00", align 1
@CONNECTION_BAD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqReadData(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PGINVALID_SOCKET, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 7
  %14 = call i32 @libpq_gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @printfPQExpBuffer(i32* %13, i32 %14)
  store i32 -1, i32* %2, align 4
  br label %213

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %16
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %35, %39
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %43, %46
  %48 = sext i32 %47 to i64
  %49 = call i32 @memmove(i64 %32, i64 %40, i64 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %29, %24
  br label %74

67:                                               ; preds = %16
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  store i32 0, i32* %69, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  store i32 0, i32* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %67, %66
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %77, %80
  %82 = icmp slt i32 %81, 8192
  br i1 %82, label %83, label %104

83:                                               ; preds = %74
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 %87, 8192
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = call i64 @pqCheckInBufferSpace(i64 %88, %struct.TYPE_7__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %83
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = icmp slt i32 %99, 100
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i32 -1, i32* %2, align 4
  br label %213

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %83
  br label %104

104:                                              ; preds = %103, %74
  br label %105

105:                                              ; preds = %153, %129, %104
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %109, %113
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %117, %120
  %122 = call i32 @pqsecure_read(%struct.TYPE_7__* %106, i64 %114, i32 %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %105
  %126 = load i64, i64* @SOCK_ERRNO, align 8
  %127 = load i64, i64* @EINTR, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %105

130:                                              ; preds = %125
  store i32 -1, i32* %2, align 4
  br label %213

131:                                              ; preds = %105
  %132 = load i32, i32* %5, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %155

134:                                              ; preds = %131
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %142, 32768
  br i1 %143, label %144, label %154

144:                                              ; preds = %134
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %147, %150
  %152 = icmp sge i32 %151, 8192
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  store i32 1, i32* %4, align 4
  br label %105

154:                                              ; preds = %144, %134
  store i32 1, i32* %2, align 4
  br label %213

155:                                              ; preds = %131
  %156 = load i32, i32* %4, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 1, i32* %2, align 4
  br label %213

159:                                              ; preds = %155
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %161 = call i32 @pqReadReady(%struct.TYPE_7__* %160)
  switch i32 %161, label %164 [
    i32 0, label %162
    i32 1, label %163
  ]

162:                                              ; preds = %159
  store i32 0, i32* %2, align 4
  br label %213

163:                                              ; preds = %159
  br label %165

164:                                              ; preds = %159
  br label %202

165:                                              ; preds = %163
  br label %166

166:                                              ; preds = %190, %165
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %170, %174
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %178, %181
  %183 = call i32 @pqsecure_read(%struct.TYPE_7__* %167, i64 %175, i32 %182)
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %5, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %166
  %187 = load i64, i64* @SOCK_ERRNO, align 8
  %188 = load i64, i64* @EINTR, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %166

191:                                              ; preds = %186
  store i32 -1, i32* %2, align 4
  br label %213

192:                                              ; preds = %166
  %193 = load i32, i32* %5, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load i32, i32* %5, align 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, %196
  store i32 %200, i32* %198, align 4
  store i32 1, i32* %2, align 4
  br label %213

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %201, %164
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 7
  %205 = call i32 @libpq_gettext(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.1, i64 0, i64 0))
  %206 = call i32 @printfPQExpBuffer(i32* %204, i32 %205)
  br label %207

207:                                              ; preds = %202
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %209 = call i32 @pqDropConnection(%struct.TYPE_7__* %208, i32 0)
  %210 = load i32, i32* @CONNECTION_BAD, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 6
  store i32 %210, i32* %212, align 8
  store i32 -1, i32* %2, align 4
  br label %213

213:                                              ; preds = %207, %195, %191, %162, %158, %154, %130, %101, %11
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i64 @pqCheckInBufferSpace(i64, %struct.TYPE_7__*) #1

declare dso_local i32 @pqsecure_read(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @pqReadReady(%struct.TYPE_7__*) #1

declare dso_local i32 @pqDropConnection(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
