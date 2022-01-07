; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_comm.c_COMM_BuildOldCommDCB.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_comm.c_COMM_BuildOldCommDCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@DTR_CONTROL_ENABLE = common dso_local global i8* null, align 8
@RTS_CONTROL_ENABLE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@DTR_CONTROL_HANDSHAKE = common dso_local global i8* null, align 8
@RTS_CONTROL_HANDSHAKE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_3__*)* @COMM_BuildOldCommDCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @COMM_BuildOldCommDCB(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i8* @COMM_ParseNumber(i8* %7, i32* %9)
  store i8* %10, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** @FALSE, align 8
  store i8* %13, i8** %3, align 8
  br label %247

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %31 [
    i32 11, label %18
    i32 30, label %18
    i32 60, label %18
    i32 12, label %23
    i32 24, label %23
    i32 48, label %23
    i32 96, label %23
    i32 19, label %28
  ]

18:                                               ; preds = %14, %14, %14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 10
  store i32 %22, i32* %20, align 8
  br label %31

23:                                               ; preds = %14, %14, %14, %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 100
  store i32 %27, i32* %25, align 8
  br label %31

28:                                               ; preds = %14
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 19200, i32* %30, align 8
  br label %31

31:                                               ; preds = %14, %28, %23, %18
  br label %32

32:                                               ; preds = %37, %31
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  br label %32

40:                                               ; preds = %32
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  %43 = load i8, i8* %41, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i8*, i8** @FALSE, align 8
  store i8* %47, i8** %3, align 8
  br label %247

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %54, %48
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %4, align 8
  br label %49

57:                                               ; preds = %49
  %58 = load i8*, i8** %4, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 9
  %61 = call i8* @COMM_ParseParity(i8* %58, i32* %60)
  store i8* %61, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** @FALSE, align 8
  store i8* %64, i8** %3, align 8
  br label %247

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %71, %65
  %67 = load i8*, i8** %4, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 32
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %4, align 8
  br label %66

74:                                               ; preds = %66
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %4, align 8
  %77 = load i8, i8* %75, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 44
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i8*, i8** @FALSE, align 8
  store i8* %81, i8** %3, align 8
  br label %247

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %88, %82
  %84 = load i8*, i8** %4, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 32
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %4, align 8
  br label %83

91:                                               ; preds = %83
  %92 = load i8*, i8** %4, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 8
  %95 = call i8* @COMM_ParseByteSize(i8* %92, i32* %94)
  store i8* %95, i8** %4, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = load i8*, i8** @FALSE, align 8
  store i8* %98, i8** %3, align 8
  br label %247

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %105, %99
  %101 = load i8*, i8** %4, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 32
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %4, align 8
  br label %100

108:                                              ; preds = %100
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %4, align 8
  %111 = load i8, i8* %109, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 44
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i8*, i8** @FALSE, align 8
  store i8* %115, i8** %3, align 8
  br label %247

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %122, %116
  %118 = load i8*, i8** %4, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 32
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %4, align 8
  br label %117

125:                                              ; preds = %117
  %126 = load i8*, i8** %4, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 7
  %129 = call i8* @COMM_ParseStopBits(i8* %126, i32* %128)
  store i8* %129, i8** %4, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %125
  %132 = load i8*, i8** @FALSE, align 8
  store i8* %132, i8** %3, align 8
  br label %247

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %139, %133
  %135 = load i8*, i8** %4, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 32
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %4, align 8
  br label %134

142:                                              ; preds = %134
  %143 = load i8*, i8** %4, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 44
  br i1 %146, label %147, label %178

147:                                              ; preds = %142
  %148 = load i8*, i8** %4, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %4, align 8
  br label %150

150:                                              ; preds = %155, %147
  %151 = load i8*, i8** %4, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 32
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i8*, i8** %4, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %4, align 8
  br label %150

158:                                              ; preds = %150
  %159 = load i8*, i8** %4, align 8
  %160 = load i8, i8* %159, align 1
  %161 = icmp ne i8 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %4, align 8
  %165 = load i8, i8* %163, align 1
  %166 = sext i8 %165 to i32
  %167 = call i32 @toupperW(i32 %166)
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %162, %158
  br label %169

169:                                              ; preds = %174, %168
  %170 = load i8*, i8** %4, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 32
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %4, align 8
  br label %169

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177, %142
  %179 = load i32, i32* %6, align 4
  switch i32 %179, label %237 [
    i32 0, label %180
    i32 88, label %199
    i32 80, label %218
  ]

180:                                              ; preds = %178
  %181 = load i8*, i8** @FALSE, align 8
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 6
  store i8* %181, i8** %183, align 8
  %184 = load i8*, i8** @FALSE, align 8
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 5
  store i8* %184, i8** %186, align 8
  %187 = load i8*, i8** @FALSE, align 8
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  %190 = load i8*, i8** @FALSE, align 8
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  %193 = load i8*, i8** @DTR_CONTROL_ENABLE, align 8
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 2
  store i8* %193, i8** %195, align 8
  %196 = load i8*, i8** @RTS_CONTROL_ENABLE, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  store i8* %196, i8** %198, align 8
  br label %239

199:                                              ; preds = %178
  %200 = load i8*, i8** @TRUE, align 8
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 6
  store i8* %200, i8** %202, align 8
  %203 = load i8*, i8** @TRUE, align 8
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 5
  store i8* %203, i8** %205, align 8
  %206 = load i8*, i8** @FALSE, align 8
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 4
  store i8* %206, i8** %208, align 8
  %209 = load i8*, i8** @FALSE, align 8
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 3
  store i8* %209, i8** %211, align 8
  %212 = load i8*, i8** @DTR_CONTROL_ENABLE, align 8
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 2
  store i8* %212, i8** %214, align 8
  %215 = load i8*, i8** @RTS_CONTROL_ENABLE, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 1
  store i8* %215, i8** %217, align 8
  br label %239

218:                                              ; preds = %178
  %219 = load i8*, i8** @FALSE, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 6
  store i8* %219, i8** %221, align 8
  %222 = load i8*, i8** @FALSE, align 8
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 5
  store i8* %222, i8** %224, align 8
  %225 = load i8*, i8** @TRUE, align 8
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 4
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** @TRUE, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 3
  store i8* %228, i8** %230, align 8
  %231 = load i8*, i8** @DTR_CONTROL_HANDSHAKE, align 8
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 2
  store i8* %231, i8** %233, align 8
  %234 = load i8*, i8** @RTS_CONTROL_HANDSHAKE, align 8
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 1
  store i8* %234, i8** %236, align 8
  br label %239

237:                                              ; preds = %178
  %238 = load i8*, i8** @FALSE, align 8
  store i8* %238, i8** %3, align 8
  br label %247

239:                                              ; preds = %218, %199, %180
  %240 = load i8*, i8** %4, align 8
  %241 = load i8, i8* %240, align 1
  %242 = icmp ne i8 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load i8*, i8** @FALSE, align 8
  store i8* %244, i8** %3, align 8
  br label %247

245:                                              ; preds = %239
  %246 = load i8*, i8** @TRUE, align 8
  store i8* %246, i8** %3, align 8
  br label %247

247:                                              ; preds = %245, %243, %237, %131, %114, %97, %80, %63, %46, %12
  %248 = load i8*, i8** %3, align 8
  ret i8* %248
}

declare dso_local i8* @COMM_ParseNumber(i8*, i32*) #1

declare dso_local i8* @COMM_ParseParity(i8*, i32*) #1

declare dso_local i8* @COMM_ParseByteSize(i8*, i32*) #1

declare dso_local i8* @COMM_ParseStopBits(i8*, i32*) #1

declare dso_local i32 @toupperW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
