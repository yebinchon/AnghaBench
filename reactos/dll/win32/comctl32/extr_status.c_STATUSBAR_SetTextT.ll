; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_SetTextT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_SetTextT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@SBT_OWNERDRAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"part %d, text %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"part %d, text %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i8*, i32)* @STATUSBAR_SetTextT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @STATUSBAR_SetTextT(%struct.TYPE_4__* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @SBT_OWNERDRAW, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26)
  br label %34

28:                                               ; preds = %5
  %29 = load i32, i32* %8, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i8* @debugstr_t(i8* %30, i32 %31)
  %33 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %29, i8* %32)
  br label %34

34:                                               ; preds = %28, %24
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 255
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %12, align 8
  br label %62

40:                                               ; preds = %34
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %12, align 8
  br label %61

61:                                               ; preds = %54, %48, %45, %40
  br label %62

62:                                               ; preds = %61, %37
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %64 = icmp ne %struct.TYPE_5__* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %6, align 4
  br label %230

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %73, %67
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @SBT_OWNERDRAW, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %75
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @SBT_OWNERDRAW, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @Free(i8* %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i8*, i8** %10, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  br label %217

100:                                              ; preds = %75
  %101 = load i8*, i8** %10, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %128

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %128, label %106

106:                                              ; preds = %103
  %107 = load i8*, i8** %10, align 8
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* @CP_ACP, align 4
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @MultiByteToWideChar(i32 %109, i32 0, i32 %110, i32 -1, i8* null, i32 0)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 1
  %116 = trunc i64 %115 to i32
  %117 = call i8* @Alloc(i32 %116)
  store i8* %117, i8** %15, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %106
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %6, align 4
  br label %230

122:                                              ; preds = %106
  %123 = load i32, i32* @CP_ACP, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i8*, i8** %15, align 8
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @MultiByteToWideChar(i32 %123, i32 0, i32 %124, i32 -1, i8* %125, i32 %126)
  br label %149

128:                                              ; preds = %103, %100
  %129 = load i8*, i8** %10, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %147

131:                                              ; preds = %128
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @strlenW(i8* %132)
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 1
  %137 = trunc i64 %136 to i32
  %138 = call i8* @Alloc(i32 %137)
  store i8* %138, i8** %15, align 8
  %139 = load i8*, i8** %15, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %131
  %142 = load i32, i32* @FALSE, align 4
  store i32 %142, i32* %6, align 4
  br label %230

143:                                              ; preds = %131
  %144 = load i8*, i8** %15, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @strcpyW(i8* %144, i8* %145)
  br label %148

147:                                              ; preds = %128
  store i8* null, i8** %15, align 8
  br label %148

148:                                              ; preds = %147, %143
  br label %149

149:                                              ; preds = %148, %122
  %150 = load i8*, i8** %15, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %169

152:                                              ; preds = %149
  %153 = load i8*, i8** %15, align 8
  store i8* %153, i8** %16, align 8
  br label %154

154:                                              ; preds = %165, %152
  %155 = load i8*, i8** %16, align 8
  %156 = load i8, i8* %155, align 1
  %157 = icmp ne i8 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %154
  %159 = load i8*, i8** %16, align 8
  %160 = load i8, i8* %159, align 1
  %161 = call i32 @isprintW(i8 signext %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %158
  %164 = load i8*, i8** %16, align 8
  store i8 32, i8* %164, align 1
  br label %165

165:                                              ; preds = %163, %158
  %166 = load i8*, i8** %16, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %16, align 8
  br label %154

168:                                              ; preds = %154
  br label %169

169:                                              ; preds = %168, %149
  %170 = load i8*, i8** %10, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %192

172:                                              ; preds = %169
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %191, label %175

175:                                              ; preds = %172
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %191

180:                                              ; preds = %175
  %181 = load i8*, i8** %15, align 8
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @lstrcmpW(i8* %181, i8* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %180
  %188 = load i8*, i8** %15, align 8
  %189 = call i32 @Free(i8* %188)
  %190 = load i32, i32* @TRUE, align 4
  store i32 %190, i32* %6, align 4
  br label %230

191:                                              ; preds = %180, %175, %172
  br label %203

192:                                              ; preds = %169
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %202, label %195

195:                                              ; preds = %192
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %195
  %201 = load i32, i32* @TRUE, align 4
  store i32 %201, i32* %6, align 4
  br label %230

202:                                              ; preds = %195, %192
  br label %203

203:                                              ; preds = %202, %191
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* @SBT_OWNERDRAW, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @Free(i8* %211)
  br label %213

213:                                              ; preds = %208, %203
  %214 = load i8*, i8** %15, align 8
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  store i8* %214, i8** %216, align 8
  br label %217

217:                                              ; preds = %213, %96
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 2
  %223 = load i32, i32* @FALSE, align 4
  %224 = call i32 @InvalidateRect(i32 %220, i32* %222, i32 %223)
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @UpdateWindow(i32 %227)
  %229 = load i32, i32* @TRUE, align 4
  store i32 %229, i32* %6, align 4
  br label %230

230:                                              ; preds = %217, %200, %187, %141, %120, %65
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local i32 @TRACE(i8*, i32, i8*) #1

declare dso_local i8* @debugstr_t(i8*, i32) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i8* @Alloc(i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @isprintW(i8 signext) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

declare dso_local i32 @UpdateWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
